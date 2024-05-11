import 'package:course_project/generated/translations.g.dart';
import 'package:course_project/presentation/theme/theme.dart';
import 'package:course_project/presentation/utils/utils.dart';
import 'package:flutter/material.dart';

class EditItemDateField extends StatefulWidget {
  final DateTime? value;
  final DateTime? lastDate;
  final VoidCallback? onClear;
  final Function(DateTime newDate) onChange;
  final FocusNode? focusNode;
  final String? label;
  final String? hint;
  final Widget Function(BuildContext context, DateTime date) builder;
  final bool editable;
  final bool mandatory;
  final DateTime? firstDate;
  final DateTime? initialDate;
  final bool enabled;
  final Widget? prefixIcon;

  /// key for scrolling to this widget
  final GlobalKey? scrollableKey;

  const EditItemDateField({
    // super.key,
    required this.value,
    this.lastDate,
    this.onClear,
    required this.onChange,
    this.focusNode,
    this.label,
    this.hint,
    required this.builder,
    this.editable = true,
    this.mandatory = true,
    this.firstDate,
    this.initialDate,
    this.enabled = true,
    this.prefixIcon,
    this.scrollableKey,
  }) : super(key: scrollableKey);

  @override
  State<EditItemDateField> createState() => _EditItemDateFieldState();
}

class _EditItemDateFieldState extends State<EditItemDateField> {
  late MouseCursor effectiveMouseCursor;
  String? _error;
  late bool _mandatory;

  @override
  void initState() {
    effectiveMouseCursor = MaterialStateProperty.resolveAs<MouseCursor>(
      MaterialStateMouseCursor.clickable,
      <MaterialState>{
        if (!widget.editable) MaterialState.disabled,
      },
    );
    _mandatory = widget.mandatory;
    super.initState();
  }

  @override
  Widget build(BuildContext context) => InkWell(
        mouseCursor: effectiveMouseCursor,
        onTap: widget.editable ? () => _onTap(context) : null,
        borderRadius: BorderRadius.circular(8),
        focusNode: widget.focusNode,
        enableFeedback: true,
        child: Row(
          children: [
            SizedBox(
              height: 0,
              width: 0,
              child: Offstage(
                  offstage: true,
                  child: TextFormField(
                    initialValue: widget.value.toString(),
                    validator: (value) {
                      setState(() {
                        if (widget.mandatory && widget.value == null) {
                          if (widget.scrollableKey != null) {
                            Scrollable.ensureVisible(
                              widget.scrollableKey!.currentContext!,
                              alignment: 0.05,
                            );
                          }
                          _error = context
                              .t.widgets.generalEditItem.errors.mandatory;
                        } else {
                          _error = null;
                        }
                      });

                      return _error;
                    },
                  )),
            ),
            Expanded(
              child: InputDecorator(
                isEmpty: widget.value == null,
                decoration: InputDecoration(
                  errorText: widget.editable ? _error : null,
                  enabled: widget.editable,
                  labelText: widget.label,
                  contentPadding: const EdgeInsets.fromLTRB(12, 21, 12,
                      16), //default EdgeInsets.fromLTRB(12, 24, 12, 16)
                  hintText: widget.hint,
                  prefixIcon: widget.prefixIcon,
                  // suffixIconConstraints: const BoxConstraints(
                  //   maxWidth: 34,
                  //   minWidth: 34,
                  //   minHeight: 34,
                  // ),
                  suffixIcon: widget.editable
                      ? widget.value != null && widget.onClear != null
                          ? IconButton(
                              onPressed: widget.onClear,
                              visualDensity: VisualDensity.compact,
                              iconSize: 16,
                              icon: Icon(
                                Icons.clear,
                                color: context.colors.onSurfaceVariant,
                              ),
                            )
                          : const SizedBox.shrink()
                      : null,
                ),
                child: DefaultTextStyle(
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: widget.editable
                      ? AppTextStyles.body1(context).copyWith(
                          color: context.colors.onSurface,
                        )
                      : AppTextStyles.body1(context).copyWith(
                          color:
                              context.colors.onSurfaceVariant.withOpacity(.6),
                        ),
                  child: widget.value != null
                      ? widget.builder(context, widget.value!)
                      : const Text(''),
                ),
              ),
            ),
          ],
        ),
      );

  Future<void> _onTap(BuildContext context) async {
    final newDate = await Multiplatform.showModalDatePicker(
      context: context,
      initialDate: widget.value ?? widget.initialDate ?? DateTime.now(),
      firstDate: widget.firstDate ??
          DateTime.now().subtract(const Duration(days: 20000)),
      lastDate:
          widget.lastDate ?? DateTime.now().add(const Duration(days: 20000)),
    );

    if (newDate != null) {
      widget.onChange(newDate);
    }
  }
}
