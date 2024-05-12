import 'package:course_project/generated/translations.g.dart';
import 'package:course_project/presentation/theme/theme.dart';
import 'package:course_project/presentation/utils/utils.dart';
import 'package:dartx/dartx.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// --- default flutter textfield height is 56
//     according other textfields height should be 56 --- //

class EditItemDropdown<T> extends FormField<T> {
  final String? label;
  final String? hint;
  final FocusNode? focusNode;
  final bool editable;
  final List<T> items;
  final Widget Function(T value) itemBuilder;

  /// if you want custom style for dropdown. default as itemBuilder
  final Widget Function(T value)? itemDropdownBuilder;
  final T value;
  final VoidCallback? onClear;
  final Function(T value) onChanged;
  final bool mandatory;
  final bool draggable;

  /// key for scrolling to this widget
  final GlobalKey? scrollableKey;

  EditItemDropdown({
    // TODO: remove context and set colors to flutter theme
    required BuildContext context,
    this.label,
    this.hint,
    this.focusNode,
    this.editable = true,
    required this.items,
    required this.itemBuilder,
    this.itemDropdownBuilder,
    required this.value,
    this.onClear,
    required this.onChanged,
    this.mandatory = true,
    this.draggable = true,
    this.scrollableKey,
  }) : super(
          key: scrollableKey,
          validator: (_) {
            if (mandatory && value == null) {
              return context.t.widgets.generalEditItem.errors.mandatory;
            }

            return null;
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
                // onTap: editable ? () => _onTap(field.context, draggable) : null,
                onTap: editable
                    ? () async {
                        final newValue = await Multiplatform.showDropdown(
                          context: field.context,
                          // title: label,
                          items: items,
                          itemBuilder: itemDropdownBuilder ?? itemBuilder,
                          draggable: draggable,
                          value: value,
                        );
                        if (newValue != null) {
                          onChanged(newValue);
                        }
                      }
                    : null,
                canRequestFocus: editable,
                focusNode: focusNode,
                enableFeedback: true,
                child: InputDecorator(
                  isEmpty: value == null && hint.isNullOrBlank,
                  decoration: effectiveDecoration.copyWith(
                    errorText: field.errorText,
                    contentPadding: const EdgeInsets.fromLTRB(12, 21, 12,
                        16), //default EdgeInsets.fromLTRB(12, 24, 12, 16)
                    labelText: label,
                    // hintText: hint,
                    // alignLabelWithHint: true,
                    enabled: editable,
                    suffixIcon: editable
                        ? value != null && onClear != null
                            ? IconButton(
                                onPressed: onClear,
                                visualDensity: VisualDensity.compact,
                                iconSize: 16,
                                icon: Icon(
                                  Icons.clear,
                                  color: context.colors.onSurfaceVariant,
                                ),
                              )
                            : Padding(
                                padding: const EdgeInsets.only(right: 4),
                                child: Icon(
                                  CupertinoIcons.chevron_down,
                                  size: 16,
                                  color: context.colors.onSurfaceVariant
                                      .withOpacity(.6),
                                ),
                              )
                        : null,
                  ),
                  child: DefaultTextStyle(
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    // style: AppTextStyles.body1(context).copyWith(
                    //   color: context.colors.error,
                    // ),
                    style: editable && value != null
                        ? AppTextStyles.body1(context).copyWith(
                            color: context.colors.onSurface,
                          )
                        : AppTextStyles.body1(context).copyWith(
                            color: context.colors.onSurface.withOpacity(.6),
                          ),
                    child:
                        value != null ? itemBuilder(value) : Text(hint ?? ''),
                  ),
                ),
              ),
            );
          },
        );
}
