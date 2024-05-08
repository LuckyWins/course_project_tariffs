// ignore_for_file: avoid_classes_with_only_static_members, avoid_bool_literals_in_conditional_expressions

import 'package:course_project/domain/domain.dart';
import 'package:course_project/generated/translations.g.dart';
import 'package:course_project/presentation/theme/theme.dart';
import 'package:course_project/presentation/widgets/widgets.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

/// class which help to display platform specific dialogs, datePicker & etc.
class Multiplatform {
  // static bool isIOS = false;
  static bool isIOS =
      kIsWeb ? true : defaultTargetPlatform == TargetPlatform.iOS;

  static const TextTheme iosTextTheme = Typography.blackCupertino;

  /// display dialog with [title], [message] and 'OK' button
  static Future<void> showMessage({
    required BuildContext context,
    required String title,
    String? message,
    DialogType type = DialogType.error,
    bool isDismissible = true,
    String? buttonText,
    VoidCallback? onTapAction,
    bool autoPop = true,
  }) =>
      showModalBottomSheet<void>(
        isDismissible: isDismissible,
        isScrollControlled: true,
        useRootNavigator: true,
        backgroundColor: context.colors.surface,
        elevation: 0,
        context: context,
        builder: (context) => Padding(
          padding: EdgeInsets.only(
            left: 24,
            top: 12,
            right: 24,
            bottom: MediaQuery.of(context).viewInsets.bottom +
                MediaQuery.of(context).viewPadding.bottom +
                16,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Align(
                alignment: Alignment.center,
                child: Icon(
                  switch (type) {
                    DialogType.error => Icons.error,
                    DialogType.info => Icons.warning,
                    DialogType.success => Icons.done,
                  },
                  size: 56,
                  color: switch (type) {
                    DialogType.error => context.colors.error,
                    DialogType.info => context.colors.primary,
                    DialogType.success => context.colors.success,
                  },
                ),
              ),
              const SizedBox(height: 20),
              Text(
                title,
                style: AppTextStyles.h2(context),
                textAlign: TextAlign.center,
              ),
              if (message != null)
                Padding(
                  padding: const EdgeInsets.only(top: 12),
                  child: Text(
                    message,
                    style: AppTextStyles.body1(context).copyWith(
                      color: context.colors.onSurfaceVariant.withOpacity(.6),
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              const SizedBox(height: 24),
              AppElevatedButton.primary(
                onTap: () {
                  if (autoPop) Navigator.pop(context);
                  onTapAction?.call();
                },
                child: Text(buttonText ?? context.t.general.actions.ok),
              ),
            ],
          ),
        ),
      );
}
