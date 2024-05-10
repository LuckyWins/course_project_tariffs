import 'package:flutter/widgets.dart';

enum MenuTab {
  tariffs,
  reservations,
  settings,
}

class MenuTabWrapper {
  final MenuTab tab;
  final Widget child;

  const MenuTabWrapper({
    required this.tab,
    required this.child,
  });
}
