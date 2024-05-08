import 'package:flutter/material.dart';

import 'no_animation_material_page_route.dart';

/// A page that creates a cupertino/material modal sheet [PageRoute].
class MaterialWithModalsPage<T> extends Page<T> {
  final bool maintainState;
  final bool fullscreenDialog;
  final WidgetBuilder builder;
  final bool withAnimation;

  const MaterialWithModalsPage({
    super.key,
    required this.builder,
    super.name,
    super.arguments,
    super.restorationId,
    this.maintainState = true,
    this.fullscreenDialog = false,
    this.withAnimation = true,
  });

  @override
  Route<T> createRoute(BuildContext context) => withAnimation
      ? MaterialPageRoute<T>(
          builder: builder,
          settings: this,
          maintainState: maintainState,
          fullscreenDialog: fullscreenDialog,
        )
      : NoAnimationMaterialPageRoute<T>(
          builder: builder,
          settings: this,
          maintainState: maintainState,
          fullscreenDialog: fullscreenDialog,
        );
}
