import 'package:course_project/generated/translations.g.dart';
import 'package:dartx/dartx.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class EditItemField extends StatelessWidget {
  final String? label;
  final String? hint;
  final TextEditingController? controller;
  final FocusNode? focusNode;
  final VoidCallback? onTap;
  final TextInputType? keyboardType;
  final Function(String value)? onFieldSubmitted;
  final String? Function(String value)? validator;
  final Function(String value)? onSaved;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final TextInputAction textInputAction;
  final List<TextInputFormatter>? inputFormatters;
  final AutovalidateMode? autovalidateMode;
  final Function(String value)? onChanged;
  final String? prefixText;
  final String? suffixText;
  final bool mandatory;
  final int? maxLength;
  final String? initialValue;
  final int minLines;
  final int maxLines;
  final bool editable;
  final EdgeInsets contentPadding;
  final TextStyle? hintStyle;
  final TextStyle? prefixStyle;
  final bool capitalizeSentences;
  final bool autofocus;
  final String? validationError;

  const EditItemField({
    this.label,
    this.hint,
    this.controller,
    this.focusNode,
    this.onTap,
    this.keyboardType,
    this.onFieldSubmitted,
    this.validator,
    this.onSaved,
    this.prefixIcon,
    this.suffixIcon,
    this.textInputAction = TextInputAction.next,
    this.inputFormatters,
    this.autovalidateMode,
    this.onChanged,
    this.prefixText,
    this.suffixText,
    this.mandatory = true,
    this.maxLength,
    this.initialValue,
    this.minLines = 1,
    this.maxLines = 1,
    this.editable = true,
    this.contentPadding = const EdgeInsets.all(16),
    super.key,
    this.hintStyle,
    this.prefixStyle,
    this.capitalizeSentences = false,
    this.autofocus = false,
    this.validationError,
  });

  @override
  Widget build(BuildContext context) => TextFormField(
        initialValue: controller == null ? initialValue : null,
        controller: controller,
        autocorrect: false,
        autovalidateMode: autovalidateMode,
        keyboardType: keyboardType,
        textCapitalization: capitalizeSentences
            ? TextCapitalization.sentences
            : TextCapitalization.none,
        onTap: onTap,
        textInputAction: textInputAction,
        minLines: minLines,
        maxLines: maxLines,
        inputFormatters: inputFormatters,
        focusNode: focusNode,
        maxLength: maxLength,
        decoration: InputDecoration(
          contentPadding: contentPadding,
          labelText: label,
          hintText: hint,
          enabled: editable,
          prefixText: prefixText,
          suffixText: suffixText,
          prefixIcon: prefixIcon,
          suffixIcon: suffixIcon,
          hintStyle: hintStyle,
          prefixStyle: prefixStyle,
          counterText: '',
          alignLabelWithHint: maxLines > 1,
        ),
        validator: (value) {
          if (mandatory && (value?.isBlank ?? true)) {
            return validationError ??
                context.t.widgets.generalEditItem.errors.mandatory;
          }

          return validator?.call(value!);
        },
        onFieldSubmitted: (value) => onFieldSubmitted?.call(value),
        onSaved: (value) => onSaved?.call(value!),
        onChanged: onChanged,
        // contextMenuBuilder: contextMenuBuilder,
        autofocus: autofocus,
      );
}
