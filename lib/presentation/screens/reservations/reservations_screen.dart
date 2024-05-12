import 'dart:async';

import 'package:course_project/domain/domain.dart';
import 'package:course_project/generated/translations.g.dart';
import 'package:course_project/presentation/blocs/blocs.dart';
import 'package:course_project/presentation/navigation.dart';
import 'package:course_project/presentation/theme/theme.dart';
import 'package:course_project/presentation/utils/utils.dart';
import 'package:course_project/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'widgets/widgets.dart';

class ReservationsScreen extends StatefulWidget {
  const ReservationsScreen({
    super.key,
  });

  @override
  State<ReservationsScreen> createState() => _ReservationsScreenState();
}

class _ReservationsScreenState extends State<ReservationsScreen> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (context.read<ReservationsCubit>().state.maybeMap(
            hasData: (_) => false,
            orElse: () => true,
          )) {
        context.read<ReservationsCubit>().init();
      }
    });
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text(context.t.screens.reservations.title),
          actions: [
            BlocBuilder<ReservationsCubit, ReservationsState>(
              builder: (context, state) => state.maybeMap(
                hasData: (state) => _sortWidget(state.filter),
                loading: (_) => const LoadingIndicator(),
                orElse: SizedBox.shrink,
              ),
            ),
            BlocBuilder<ReservationsCubit, ReservationsState>(
              builder: (context, state) => state.maybeMap(
                hasData: (state) => IconButton(
                  onPressed: () => _onFilterTap(state.filter),
                  icon: Stack(
                    children: [
                      const Icon(Icons.filter_alt_rounded),
                      if (!state.filter.isEmpty)
                        Positioned(
                          right: 2,
                          bottom: 2,
                          child: Container(
                            width: 6,
                            height: 6,
                            decoration: BoxDecoration(
                              color: context.colors.error,
                              shape: BoxShape.circle,
                            ),
                          ),
                        )
                    ],
                  ),
                ),
                loading: (_) => const LoadingIndicator(),
                orElse: SizedBox.shrink,
              ),
            ),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
          child: BlocBuilder<ReservationsCubit, ReservationsState>(
            builder: (context, state) => state.maybeMap(
              hasData: (state) => ListView.separated(
                itemCount: state.data.length,
                itemBuilder: (context, index) => _itemWidget(
                  state.data[index],
                ),
                separatorBuilder: (context, _) => const Divider(),
              ),
              orElse: () => const Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  LoadingIndicator(),
                ],
              ),
            ),
          ),
        ),
      );

  Widget _sortWidget(AppReservationsFilter filter) {
    final values =
        SortWrapperGenerator.generate(AppReservationsSortType.values);
    return PopupMenuButton<SortWrapper>(
      initialValue: SortWrapper<AppReservationsSortType>(
          asc: filter.asc, sort: filter.sort),
      onSelected: (value) {
        context.read<ReservationsCubit>().init(
              filter: filter.copyWith(
                asc: value.asc,
                sort: value.sort,
              ),
            );
      },
      itemBuilder: (context) => values
          .map((e) => PopupMenuItem(
                value: e,
                child: Text(
                  '${e.sort.localName(context)} ${e.asc ? "ASC" : "DESC"}',
                  style: e.asc == filter.asc && e.sort == filter.sort
                      ? AppTextStyles.body1B(context)
                      : AppTextStyles.body1(context),
                ),
              ))
          .toList(),
      child: RotatedBox(
        quarterTurns: filter.asc ? 2 : 0,
        child: const Icon(Icons.sort),
      ),
    );
  }

  Widget _itemWidget(AppReservation data) => ReservationItemWidget(
        data,
        key: Key('reservation#${data.id}'),
        onItemTap: _onItemTap,
      );

  Future<void> _onFilterTap(AppReservationsFilter filter) async {
    final value = await Navigation.toReservationsFilter(filter);
    if (value != null) {
      unawaited(context.read<ReservationsCubit>().init(
            filter: value,
          ));
    }
  }

  void _onItemTap(AppReservation data) {
    if (context.isAdmin) {
      Navigation.toReservationEdit(data: data);
    } else {
      Navigation.toReservationView(data);
    }
  }
}
