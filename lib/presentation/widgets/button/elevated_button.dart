import 'package:course_project/presentation/theme/theme.dart';
import 'package:course_project/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';

enum AppElevatedButtonType {
  primary,
  tonal,
}

class AppElevatedButton extends StatelessWidget {
  final AppElevatedButtonType type;
  final Widget? icon;
  final String label;
  final double borderRadius;
  final double elevation;
  final Color? backgroundColor;
  final VoidCallback? onTap;
  final Widget? child;
  final EdgeInsetsGeometry? padding;
  final Size? minimumSize;
  final Color? textColor;
  final bool isLoading;

  const AppElevatedButton({
    super.key,
    this.type = AppElevatedButtonType.primary,
    this.backgroundColor,
    this.icon,
    this.label = '',
    this.borderRadius = 12,
    this.elevation = 0,
    this.onTap,
    this.child,
    this.padding = const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
    this.minimumSize,
    this.textColor,
    this.isLoading = false,
  });

  factory AppElevatedButton.primary({
    Widget? icon,
    String label = '',
    Widget? child,
    VoidCallback? onTap,
    Color? backgroundColor,
    Color? textColor,
    bool isLoading = false,
  }) =>
      AppElevatedButton(
        type: AppElevatedButtonType.primary,
        icon: icon,
        label: label,
        onTap: onTap,
        backgroundColor: backgroundColor,
        textColor: textColor,
        isLoading: isLoading,
        child: child,
      );

  factory AppElevatedButton.primaryRounded({
    Widget? icon,
    String label = '',
    Widget? child,
    VoidCallback? onTap,
    EdgeInsetsGeometry? padding =
        const EdgeInsets.symmetric(horizontal: 24, vertical: 10),
    Size? minimumSize,
    Color? backgroundColor,
    Color? textColor,
    bool isLoading = false,
  }) =>
      AppElevatedButton(
        type: AppElevatedButtonType.primary,
        borderRadius: 100,
        icon: icon,
        label: label,
        onTap: onTap,
        padding: padding,
        minimumSize: minimumSize,
        backgroundColor: backgroundColor,
        textColor: textColor,
        isLoading: isLoading,
        child: child,
      );

  factory AppElevatedButton.tonal({
    Widget? icon,
    String label = '',
    EdgeInsetsGeometry? padding =
        const EdgeInsets.symmetric(horizontal: 24, vertical: 10),
    Widget? child,
    VoidCallback? onTap,
    Size? minimumSize,
    bool isLoading = false,
  }) =>
      AppElevatedButton(
        type: AppElevatedButtonType.tonal,
        icon: icon,
        label: label,
        padding: padding,
        onTap: onTap,
        minimumSize: minimumSize,
        isLoading: isLoading,
        child: child,
      );

  factory AppElevatedButton.tonalRounded({
    Widget? icon,
    String label = '',
    Widget? child,
    VoidCallback? onTap,
    Size? minimumSize,
    bool isLoading = false,
  }) =>
      AppElevatedButton(
        type: AppElevatedButtonType.tonal,
        borderRadius: 100,
        icon: icon,
        label: label,
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 10),
        onTap: onTap,
        minimumSize: minimumSize,
        isLoading: isLoading,
        child: child,
      );

  @override
  Widget build(BuildContext context) {
    final backgroundColor = this.backgroundColor ??
        switch (type) {
          AppElevatedButtonType.primary => context.colors.primary,
          AppElevatedButtonType.tonal => context.colors.secondaryContainer,
        };
    final textColor = onTap == null
        ? context.colors.onSurface.withOpacity(.38)
        : this.textColor ??
            switch (type) {
              AppElevatedButtonType.primary => context.colors.onPrimary,
              AppElevatedButtonType.tonal =>
                context.colors.onSecondaryContainer,
            };
    if (icon != null) {
      return ElevatedButton.icon(
        style: ElevatedButton.styleFrom(
          padding: padding,
          minimumSize: minimumSize ?? const Size(64, 36),
          alignment: Alignment.center,
          backgroundColor: backgroundColor,
          enableFeedback: true,
          elevation: elevation,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius), // <-- Radius
          ),
        ),
        onPressed: onTap,
        icon: icon!,
        label: Stack(
          alignment: Alignment.center,
          children: [
            if (isLoading) const LoadingIndicator(),
            child ??
                Text(
                  label,
                  style: AppTextStyles.buttonL.copyWith(
                    color: textColor,
                    height: 0,
                  ),
                ),
          ],
        ),
      );
    }
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        padding: padding,
        minimumSize: minimumSize ?? const Size(64, 36),
        alignment: Alignment.center,
        backgroundColor: backgroundColor,
        foregroundColor: backgroundColor.withOpacity(.6),
        elevation: elevation,
        enableFeedback: true,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius), // <-- Radius
        ),
      ),
      onPressed: isLoading ? () {} : onTap,
      child: IconTheme(
        data: Theme.of(context).iconTheme.copyWith(
              color: textColor,
            ),
        child: DefaultTextStyle(
          style: AppTextStyles.buttonL.copyWith(
            color: isLoading ? Colors.transparent : textColor,
            height: 0,
          ),
          child: Stack(
            alignment: Alignment.center,
            children: [
              if (isLoading) const LoadingIndicator(),
              child ?? Text(label),
            ],
          ),
        ),
      ),
    );
  }
}
