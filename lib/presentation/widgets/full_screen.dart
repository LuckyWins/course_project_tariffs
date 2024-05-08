import 'package:flutter/material.dart';

class FullScreen extends StatelessWidget {
  final bool leftSafe;
  final bool topSafe;
  final bool rightSafe;
  final bool bottomSafe;
  final Widget child;
  final ScrollController? controller;
  final bool scrollable;

  const FullScreen({
    super.key,
    this.leftSafe = true,
    this.topSafe = true,
    this.rightSafe = true,
    this.bottomSafe = true,
    required this.child,
    this.controller,
    this.scrollable = true,
  });

  @override
  Widget build(BuildContext context) => SafeArea(
        left: leftSafe,
        top: topSafe,
        right: rightSafe,
        bottom: bottomSafe,
        child: LayoutBuilder(
          builder: (context, viewportConstraints) => scrollable
              ? SingleChildScrollView(
                  controller: controller,
                  child: constrainedWidget(viewportConstraints),
                )
              : constrainedWidget(viewportConstraints),
        ),
      );

  Widget constrainedWidget(BoxConstraints viewportConstraints) =>
      ConstrainedBox(
        constraints: BoxConstraints(minHeight: viewportConstraints.maxHeight),
        child: child,
      );
}
