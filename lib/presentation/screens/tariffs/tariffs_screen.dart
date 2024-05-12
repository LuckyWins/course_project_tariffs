import 'dart:async';

import 'package:course_project/domain/domain.dart';
import 'package:course_project/generated/translations.g.dart';
import 'package:course_project/presentation/blocs/blocs.dart';
import 'package:course_project/presentation/navigation.dart';
import 'package:course_project/presentation/theme/theme.dart';
import 'package:course_project/presentation/utils/utils.dart';
import 'package:course_project/presentation/widgets/widgets.dart';
import 'package:dartx/dartx.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

class TariffsScreen extends StatefulWidget {
  const TariffsScreen({
    super.key,
  });

  @override
  State<TariffsScreen> createState() => _TariffsScreenState();
}

class _TariffsScreenState extends State<TariffsScreen> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (context.read<TariffsCubit>().state.maybeMap(
            hasData: (_) => false,
            orElse: () => true,
          )) {
        context.read<TariffsCubit>().init();
      }
    });
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text(context.t.screens.tariffs.title),
          actions: [
            BlocBuilder<TariffsCubit, TariffsState>(
              builder: (context, state) => state.maybeMap(
                hasData: (state) => _sortWidget(state.filter),
                loading: (_) => const LoadingIndicator(),
                orElse: SizedBox.shrink,
              ),
            ),
            BlocBuilder<TariffsCubit, TariffsState>(
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
          child: BlocBuilder<TariffsCubit, TariffsState>(
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
        floatingActionButton: context.isAdmin
            ? BlocBuilder<TariffsCubit, TariffsState>(
                builder: (context, state) => state.maybeMap(
                  hasData: (state) => FloatingActionButton.small(
                    onPressed: _onAddTariffTap,
                    child: const Icon(Icons.add_rounded),
                  ),
                  loading: (_) => const LoadingIndicator(),
                  orElse: SizedBox.shrink,
                ),
              )
            : null,
      );

  Widget _itemWidget(AppTariff data) => InkWell(
        onTap: () => _onItemTap(data),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text.rich(
                style: AppTextStyles.body1B(context),
                TextSpan(
                  text: '#${data.id} ',
                  children: [
                    TextSpan(
                      text: data.title,
                      style: AppTextStyles.body1(context),
                    )
                  ],
                ),
              ),
              Text.rich(
                style: AppTextStyles.body1B(context),
                TextSpan(
                  text: '${context.t.screens.tariffs.item.date}: ',
                  children: [
                    TextSpan(
                      text:
                          DateFormat('dd/MM/y HH:mm').format(data.creationDate),
                      style: AppTextStyles.body1(context),
                    )
                  ],
                ),
              ),
              Text.rich(
                TextSpan(
                  style: AppTextStyles.body1(context),
                  children: [
                    context.t.screens.tariffs.item.price(
                      value: TextSpan(
                        text: data.price.toString(),
                        style: AppTextStyles.body1B(context),
                      ),
                    )
                  ],
                ),
              ),
              if (data.description.isNotBlank)
                Text.rich(
                  style: AppTextStyles.body1B(context),
                  TextSpan(
                    text: '${context.t.screens.tariffs.item.description}: ',
                    children: [
                      TextSpan(
                        text: data.description,
                        style: AppTextStyles.body1(context),
                      )
                    ],
                  ),
                ),
            ],
          ),
        ),
      );

  void _onItemTap(AppTariff data) {
    if (context.isAdmin) {
      Navigation.toTariffEdit(data: data);
    } else {
      Navigation.toReservationEdit(
        tariffId: data.id,
        tariffOwnerId: data.ownerId,
        userId: context.userId,
      );
    }
  }

  Widget _sortWidget(AppTariffsFilter filter) {
    final values = SortWrapperGenerator.generate(AppTariffsSortType.values);
    return PopupMenuButton<SortWrapper>(
      initialValue:
          SortWrapper<AppTariffsSortType>(asc: filter.asc, sort: filter.sort),
      onSelected: (value) {
        context.read<TariffsCubit>().init(
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

  Future<void> _onFilterTap(AppTariffsFilter filter) async {
    final value = await Navigation.toTariffsFilter(filter);
    if (value != null) {
      unawaited(context.read<TariffsCubit>().init(
            filter: value,
          ));
    }
  }

  void _onAddTariffTap() {
    Navigation.toTariffEdit();
  }
}
