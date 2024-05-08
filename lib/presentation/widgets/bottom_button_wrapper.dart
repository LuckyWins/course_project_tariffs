import 'package:course_project/presentation/theme/theme.dart';
import 'package:flutter/material.dart';

class AppBottomButtonWrapper extends StatelessWidget {
  final Widget child;
  final Color? color;
  final EdgeInsetsGeometry? padding;

  const AppBottomButtonWrapper({
    super.key,
    required this.child,
    this.padding = const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
    this.color,
  });

  @override
  Widget build(BuildContext context) => Container(
        padding: padding,
        width: double.maxFinite,
        color: color ?? context.colors.background,
        child: SafeArea(
          child: child,
        ),
      );
}
