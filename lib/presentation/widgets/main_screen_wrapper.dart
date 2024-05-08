import 'package:course_project/domain/domain.dart';
import 'package:course_project/generated/translations.g.dart';
import 'package:course_project/presentation/navigation.dart';
import 'package:course_project/presentation/theme/theme.dart';
import 'package:flutter/material.dart';

class MainScreenWrapper extends StatefulWidget {
  final Widget child;
  final MenuTab currentTab;

  const MainScreenWrapper({
    super.key,
    required this.child,
    required this.currentTab,
  });

  @override
  State<MainScreenWrapper> createState() => _MainScreenWrapperState();
}

class _MainScreenWrapperState extends State<MainScreenWrapper> {
  final destinations = [
    MenuTab.tariffs,
    MenuTab.reservations,
    MenuTab.profile,
  ];

  @override
  Widget build(BuildContext context) => Scaffold(
        backgroundColor: context.colors.background,
        body: widget.child,
        bottomNavigationBar: NavigationBar(
          backgroundColor: context.colors.surface2,
          selectedIndex: destinations.indexOf(widget.currentTab),
          onDestinationSelected: (index) =>
              _onTap(context, destinations[index]),
          surfaceTintColor: context.colors.surface2,
          indicatorColor: context.colors.secondaryContainer,
          overlayColor: MaterialStateProperty.all(context.colors.surface1),
          destinations: destinations.map((e) => _navItem(context, e)).toList(),
        ),
      );

  NavigationDestination _navItem(BuildContext context, MenuTab tab) =>
      NavigationDestination(
        selectedIcon: Icon(
          switch (tab) {
            MenuTab.tariffs => Icons.account_balance_wallet_outlined,
            MenuTab.reservations => Icons.list_alt_rounded,
            MenuTab.profile => Icons.people_rounded,
          },
          color: context.colors.primary,
        ),
        icon: Icon(
          switch (tab) {
            MenuTab.tariffs => Icons.account_balance_wallet_outlined,
            MenuTab.reservations => Icons.list_alt_rounded,
            MenuTab.profile => Icons.people_rounded,
          },
          color: context.colors.onSurfaceVariant,
        ),
        label: context.t.widgets.mainWrapper.nav[tab.name] ?? '',
      );

  void _onTap(BuildContext context, MenuTab tab) {
    if (widget.currentTab == tab) return;
    return switch (tab) {
      MenuTab.tariffs => Navigation.toTariffs(),
      MenuTab.reservations => Navigation.toReservations(),
      MenuTab.profile => Navigation.toProfile(),
    };
  }
}
