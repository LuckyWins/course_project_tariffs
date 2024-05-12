import 'package:course_project/domain/domain.dart';
import 'package:course_project/generated/translations.g.dart';
import 'package:course_project/presentation/blocs/blocs.dart';
import 'package:course_project/presentation/theme/theme.dart';
import 'package:course_project/presentation/utils/utils.dart';
import 'package:course_project/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

class ReservationViewScreen extends StatefulWidget {
  final int id;

  const ReservationViewScreen({
    super.key,
    required this.id,
  });

  @override
  State<ReservationViewScreen> createState() => _ReservationViewScreenState();
}

class _ReservationViewScreenState extends State<ReservationViewScreen> {
  AppReservationEntity? _reservation;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<ReservationViewCubit>().init();
    });
  }

  @override
  Widget build(BuildContext context) =>
      BlocListener<ReservationViewCubit, ReservationViewState>(
        listener: (context, state) => state.mapOrNull(
          cancelledSuccessful: (_) {
            setState(() {
              _reservation = _reservation!.copyWith(
                status: AppReservationStatus.cancelled,
              );
            });
            context.read<ReservationsCubit>().init();
            // Navigator.of(context).pop();
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(
                  context.t.screens.reservationEdit.snack.cancelSuccessfully,
                ),
              ),
            );
            return null;
          },
          hasData: (state) {
            _reservation = state.data;
            context.read<UserDataCubit>().init(_reservation!.userId);
            context.read<TariffDataCubit>().init(_reservation!.tariffId);
            setState(() {});
            return null;
          },
        ),
        child: Scaffold(
          appBar: AppBar(
            title: Text(
              context.t.screens.reservationView.title(id: widget.id),
            ),
          ),
          body: _reservation != null
              ? Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Expanded(
                      child: SingleChildScrollView(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 16, vertical: 24),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              Text.rich(
                                style: AppTextStyles.body1B(context),
                                TextSpan(
                                  text:
                                      '${context.t.screens.reservationView.usernameLabel}: ',
                                  children: [
                                    WidgetSpan(
                                      alignment: PlaceholderAlignment.middle,
                                      child: BlocSelector<UserDataCubit,
                                          UserDataState, String>(
                                        selector: (state) => state.maybeMap(
                                          hasData: (state) =>
                                              state.data?.username ??
                                              'id${_reservation!.userId}',
                                          orElse: () =>
                                              'id${_reservation!.userId}',
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
                                  text:
                                      '${context.t.screens.reservationView.creationDateLabel}: ',
                                  children: [
                                    TextSpan(
                                      text: DateFormat('dd/MM/y')
                                          .format(_reservation!.creationDate),
                                      style: AppTextStyles.body1(context),
                                    )
                                  ],
                                ),
                              ),
                              Text.rich(
                                style: AppTextStyles.body1B(context),
                                TextSpan(
                                  text:
                                      '${context.t.screens.reservations.item.startDate}: ',
                                  children: [
                                    TextSpan(
                                      text: DateFormat('dd/MM/y')
                                          .format(_reservation!.startDate),
                                      style: AppTextStyles.body1(context),
                                    )
                                  ],
                                ),
                              ),
                              Text.rich(
                                style: AppTextStyles.body1B(context),
                                TextSpan(
                                  text:
                                      '${context.t.screens.reservations.item.hours}: ',
                                  children: [
                                    TextSpan(
                                      text: DateFormat('HH:mm')
                                          .format(_reservation!.startDate),
                                      style: AppTextStyles.body1(context),
                                    ),
                                    TextSpan(
                                      text: ' - ',
                                      style: AppTextStyles.body1(context),
                                    ),
                                    TextSpan(
                                      text: DateFormat('HH:mm').format(
                                          _reservation!.startDate.add(Duration(
                                              hours: _reservation!.hours))),
                                      style: AppTextStyles.body1(context),
                                    ),
                                  ],
                                ),
                              ),
                              Text.rich(
                                style: AppTextStyles.body1B(context),
                                TextSpan(
                                  text:
                                      '${context.t.screens.reservations.item.cost}: ',
                                  children: [
                                    WidgetSpan(
                                      alignment: PlaceholderAlignment.middle,
                                      child: BlocSelector<TariffDataCubit,
                                          TariffDataState, String>(
                                        selector: (state) => state.maybeMap(
                                          hasData: (state) {
                                            if (state.data == null) {
                                              return context
                                                  .t.general.loadingLabel;
                                            }
                                            return '${state.data!.price * _reservation!.hours} BYN';
                                          },
                                          orElse: () =>
                                              context.t.general.loadingLabel,
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
                              Text.rich(
                                style: AppTextStyles.body1B(context),
                                TextSpan(
                                  text:
                                      '${context.t.screens.reservations.item.status}: ',
                                  children: [
                                    TextSpan(
                                      text: _reservation!.status
                                          .localName(context),
                                      style: AppTextStyles.body1(context),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    AppBottomButtonWrapper(
                      child: BlocPrimaryButton<ReservationViewCubit,
                          ReservationViewState>(
                        _reservation!.status != AppReservationStatus.cancelled
                            ? context.t.screens.reservationView.cancelButton
                            : context
                                .t.screens.reservationView.alreadyCancelLabel,
                        onTap: _reservation!.status !=
                                AppReservationStatus.cancelled
                            ? _onCancelTap
                            : null,
                        builder: (context, state) => state.maybeMap(
                          loading: (state) => BlocActionButtonState.loading,
                          orElse: () => BlocActionButtonState.idle,
                        ),
                      ),
                    ),
                  ],
                )
              : const Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    LoadingIndicator(),
                  ],
                ),
        ),
      );

  void _onCancelTap() {
    Multiplatform.showMessage(
      context: context,
      title: context.t.screens.reservationEdit.modal.cancelConfirmation.message,
      buttonText:
          context.t.screens.reservationEdit.modal.cancelConfirmation.action,
      onTapAction: () => context.read<ReservationViewCubit>().cancel(),
    );
  }
}
