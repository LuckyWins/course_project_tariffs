import 'package:course_project/presentation/theme/theme.dart';
import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget {
  final VoidCallback? onTap;
  final Widget child;
  final EdgeInsets padding;

  const PrimaryButton({
    super.key,
    this.onTap,
    required this.child,
    this.padding = const EdgeInsets.symmetric(vertical: 17, horizontal: 24),
  });

  @override
  Widget build(BuildContext context) => ElevatedButton(
        style: ElevatedButton.styleFrom(
          minimumSize: Size(MediaQuery.of(context).size.width * 0.44, 56),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          elevation: 0,
          backgroundColor: context.colors.primary,
          padding: padding,
        ),
        onPressed: onTap,
        child: DefaultTextStyle(
          style: AppTextStyles.buttonL.copyWith(
            color: context.colors.onPrimary,
          ),
          child: child,
        ),
      );
}
