import 'package:course_project/domain/domain.dart';
import 'package:course_project/generated/translations.g.dart';
import 'package:course_project/injection.dart' as di;
import 'package:course_project/presentation/blocs/blocs.dart';
import 'package:course_project/presentation/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

class ReservationItemWidget extends StatefulWidget {
  final AppReservation data;
  final Function(AppReservation data) onItemTap;

  const ReservationItemWidget(
    this.data, {
    required this.onItemTap,
    super.key,
  });

  @override
  State<ReservationItemWidget> createState() => _ReservationItemWidgetState();
}

class _ReservationItemWidgetState extends State<ReservationItemWidget> {
  final _userDataCubit = UserDataCubit(
    usersRepository: di.locator(),
  );
  final _tariffDataCubit = TariffDataCubit(
    tariffsRepository: di.locator(),
  );

  @override
  void initState() {
    _userDataCubit.init(widget.data.userId);
    _tariffDataCubit.init(widget.data.tariffId);
    super.initState();
  }

  @override
  void dispose() {
    _userDataCubit.close();
    _tariffDataCubit.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => InkWell(
        onTap: () => widget.onItemTap(widget.data),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text.rich(
                style: AppTextStyles.body1B(context),
                TextSpan(
                  text: '#${widget.data.id} ',
                  children: [
                    WidgetSpan(
                      alignment: PlaceholderAlignment.middle,
                      child: BlocSelector<UserDataCubit, UserDataState, String>(
                        bloc: _userDataCubit,
                        selector: (state) => state.maybeMap(
                          hasData: (state) =>
                              state.data?.username ?? 'id${widget.data.userId}',
                          orElse: () => 'id${widget.data.userId}',
                        ),
                        builder: (context, username) => Text(
                          username,
                          style: AppTextStyles.body1(context),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Text.rich(
                style: AppTextStyles.body1B(context),
                TextSpan(
                  text: '${context.t.screens.reservations.item.startDate}: ',
                  children: [
                    TextSpan(
                      text: DateFormat('dd/MM/y').format(widget.data.startDate),
                      style: AppTextStyles.body1(context),
                    )
                  ],
                ),
              ),
              Text.rich(
                style: AppTextStyles.body1B(context),
                TextSpan(
                  text: '${context.t.screens.reservations.item.hours}: ',
                  children: [
                    TextSpan(
                      text: DateFormat('HH:mm').format(widget.data.startDate),
                      style: AppTextStyles.body1(context),
                    ),
                    TextSpan(
                      text: ' - ',
                      style: AppTextStyles.body1(context),
                    ),
                    TextSpan(
                      text: DateFormat('HH:mm').format(widget.data.startDate
                          .add(Duration(hours: widget.data.hours))),
                      style: AppTextStyles.body1(context),
                    ),
                  ],
                ),
              ),
              Text.rich(
                style: AppTextStyles.body1B(context),
                TextSpan(
                  text: '${context.t.screens.reservations.item.cost}: ',
                  children: [
                    WidgetSpan(
                      alignment: PlaceholderAlignment.middle,
                      child: BlocSelector<TariffDataCubit, TariffDataState,
                          String>(
                        bloc: _tariffDataCubit,
                        selector: (state) => state.maybeMap(
                          hasData: (state) {
                            if (state.data == null) {
                              return context.t.general.loadingLabel;
                            }
                            return '${state.data!.price * widget.data.hours} BYN';
                          },
                          orElse: () => context.t.general.loadingLabel,
                        ),
                        builder: (context, cost) => Text(
                          cost,
                          style: AppTextStyles.body1(context),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      );
}
