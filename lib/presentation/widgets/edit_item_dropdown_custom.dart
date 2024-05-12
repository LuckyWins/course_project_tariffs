import 'package:course_project/generated/translations.g.dart';
import 'package:course_project/presentation/theme/theme.dart';
import 'package:dartx/dartx.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/// same as [EditItemDropdown]
class EditItemDropdownCustom extends FormField<String> {
  final VoidCallback? onTap;
  final FocusNode? focusNode;
  final String? label;
  final String? hint;
  final bool editable;
  final bool isEmpty;
  final bool mandatory;

  /// key for scrolling to this widget
  final GlobalKey? scrollableKey;
  final String? Function(String value)? customValidator;

  EditItemDropdownCustom({
    // TODO: remove context and set colors to flutter theme
    required BuildContext context,
    // super.key,
    required this.onTap,
    this.focusNode,
    this.label,
    this.hint,
    required Widget Function(BuildContext context) builder,
    this.editable = true,
    required this.isEmpty,
    this.mandatory = true,
    this.scrollableKey,
    this.customValidator,
  }) : super(
          key: scrollableKey,
          validator: (value) {
            if (mandatory && isEmpty) {
              return context.t.widgets.generalEditItem.errors.mandatory;
            }

            return customValidator?.call(value ?? '');
          },
          builder: (field) {
            final effectiveMouseCursor =
                MaterialStateProperty.resolveAs<MouseCursor>(
              MaterialStateMouseCursor.clickable,
              <MaterialState>{
                if (!editable) MaterialState.disabled,
              },
            );

            final effectiveDecoration = const InputDecoration()
                .applyDefaults(Theme.of(field.context).inputDecorationTheme);

            return UnmanagedRestorationScope(
              bucket: field.bucket,
              child: InkWell(
                mouseCursor: effectiveMouseCursor,
                onTap: editable ? onTap : null,
                canRequestFocus: editable,
                focusNode: focusNode,
                enableFeedback: true,
                child: InputDecorator(
                  isEmpty: isEmpty && hint.isNullOrBlank,
                  decoration: effectiveDecoration.copyWith(
                    errorText: field.errorText,
                    contentPadding: const EdgeInsets.fromLTRB(12, 21, 12,
                        16), //default EdgeInsets.fromLTRB(12, 24, 12, 16)
                    labelText: label,
                    // hintText: hint,
                    // alignLabelWithHint: true,
                    enabled: editable,
                    suffixIcon: editable
                        ? Padding(
                            padding: const EdgeInsets.only(right: 4),
                            child: Icon(
                              CupertinoIcons.chevron_down,
                              size: 16,
                              color: context.colors.onSurfaceVariant,
                            ),
                          )
                        : null,
                  ),
                  child: DefaultTextStyle(
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: editable && !isEmpty
                        ? AppTextStyles.body1(context).copyWith(
                            color: context.colors.onSurface,
                          )
                        : AppTextStyles.body1(context).copyWith(
                            color:
                                context.colors.onSurfaceVariant.withOpacity(.6),
                          ),
                    child: !isEmpty ? builder(field.context) : Text(hint ?? ''),
                  ),
                ),
              ),
            );
          },
        );
}
