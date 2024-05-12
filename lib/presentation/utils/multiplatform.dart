// ignore_for_file: avoid_classes_with_only_static_members, avoid_bool_literals_in_conditional_expressions

import 'package:course_project/domain/domain.dart';
import 'package:course_project/generated/translations.g.dart';
import 'package:course_project/presentation/theme/theme.dart';
import 'package:course_project/presentation/widgets/widgets.dart';
import 'package:flutter/cupertino.dart';
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

  static Future<DateTime?> showModalDatePicker({
    required BuildContext context,
    required DateTime initialDate,
    required DateTime firstDate,
    required DateTime lastDate,
  }) {
    if (isIOS) {
      final normalHeight = MediaQuery.of(context).copyWith().size.height / 4;
      const maxHeight = 180.0;
      return showModalBottomSheet<DateTime>(
        backgroundColor: context.colors.surface,
        useRootNavigator: true,
        context: context,
        builder: (context) {
          var selected = initialDate;
          return Theme(
            data: Theme.of(context).copyWith(textTheme: iosTextTheme),
            child: SafeArea(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    color: context.colors.surface,
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        TextButton(
                          onPressed: () => Navigator.pop(context),
                          child: Text(
                            context.t.general.actions.close,
                            style: AppTextStyles.body1(context).copyWith(
                              color: context.colors.error,
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(),
                        ),
                        TextButton(
                          onPressed: () => Navigator.pop(context, selected),
                          child: Text(
                            context.t.general.actions.done,
                            style: AppTextStyles.body1(context).copyWith(
                              color: context.colors.primary,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    // height: 180,
                    height: normalHeight > maxHeight ? maxHeight : normalHeight,
                    child: CupertinoDatePicker(
                      onDateTimeChanged: (selectedDate) {
                        selected = selectedDate;
                      },
                      mode: CupertinoDatePickerMode.date,
                      initialDateTime: initialDate,
                      minimumDate: firstDate,
                      maximumDate: lastDate,
                    ),
                  )
                ],
              ),
            ),
          );
        },
      );
    } else {
      return showDatePicker(
        context: context,
        initialDate: initialDate,
        firstDate: firstDate,
        lastDate: lastDate,
      );
    }
  }

  static Future<TimeOfDay?> showModalTimePicker({
    required BuildContext context,
    required DateTime initialDate,
  }) =>
      showTimePicker(
        context: context,
        initialTime: TimeOfDay.fromDateTime(initialDate),
      );

  static Future<T?> showDropdown<T>({
    required BuildContext context,
    String? title,
    String? message,
    required List<T> items,
    required Widget Function(T value) itemBuilder,

    /// current value
    T? value,
    bool isDismissible = true,
    bool draggable = true,
  }) {
    Widget list(ScrollController? controller) => ListView.builder(
          controller: controller,
          shrinkWrap: !draggable,
          physics: !draggable ? const NeverScrollableScrollPhysics() : null,
          itemCount: items.length,
          itemBuilder: (context, index) {
            final e = items[index];

            return InkWell(
              // behavior: HitTestBehavior.translucent,
              onTap: () => Navigator.pop(context, e),
              child: Container(
                // padding: const EdgeInsets.symmetric(vertical: 12),
                padding:
                    const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  color: value == e ? context.colors.surfaceVariant : null,
                ),
                child: DefaultTextStyle(
                  style: AppTextStyles.body1(context),
                  child: itemBuilder(e),
                ),
              ),
            );
          },
        );
    Widget child(BuildContext context, ScrollController? controller) =>
        Container(
          padding: EdgeInsets.only(
            left: 24,
            top: 12,
            right: 24,
            bottom: MediaQuery.of(context).viewInsets.bottom +
                MediaQuery.of(context).viewPadding.bottom +
                16,
          ),
          decoration: BoxDecoration(
            color: context.colors.surface,
            borderRadius: const BorderRadius.vertical(
              top: Radius.circular(28),
            ),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(height: 24),
              if (title != null)
                Text(
                  title,
                  style: AppTextStyles.body1(context),
                  // textAlign: TextAlign.center,
                ),
              if (message != null)
                Padding(
                  padding: const EdgeInsets.only(top: 6),
                  child: Text(
                    message, style: AppTextStyles.caption(context),
                    // textAlign: TextAlign.center,
                  ),
                ),
              if (title != null || message != null)
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 12),
                  child: Divider(),
                ),
              if (draggable)
                Expanded(
                  child: list(controller),
                ),
              if (!draggable) list(controller),
            ],
          ),
        );
    return showModalBottomSheet<T>(
      context: context,
      isDismissible: isDismissible,
      useRootNavigator: true,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      elevation: 0,
      builder: (context) => GestureDetector(
        onTap: isDismissible ? () => Navigator.of(context).pop() : null,
        child: Container(
          color: const Color.fromRGBO(0, 0, 0, 0.001),
          child: draggable
              ? DraggableScrollableSheet(
                  initialChildSize: 0.5,
                  minChildSize: 0.4,
                  maxChildSize: 0.75,
                  builder: child,
                )
              : child(context, null),
        ),
      ),
    );
  }
}
