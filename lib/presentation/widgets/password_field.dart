import 'package:course_project/generated/translations.g.dart';
import 'package:course_project/presentation/theme/theme.dart';
import 'package:dartx/dartx.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class PasswordField extends StatefulWidget {
  final String? label;
  final String? hint;
  final FocusNode? focusNode;
  final Function(String value)? onFieldSubmitted;
  final Function(String value)? onSaved;
  final TextInputAction? textInputAction;
  final String? Function(String)? validator;
  final TextEditingController? controller;
  final bool mandatory;
  final int? minLength;
  final int? maxLength;
  final AutovalidateMode? autovalidateMode;

  const PasswordField({
    this.label,
    this.hint,
    this.focusNode,
    this.onFieldSubmitted,
    this.onSaved,
    this.textInputAction = TextInputAction.next,
    this.validator,
    this.controller,
    this.mandatory = true,
    this.minLength = 6,
    this.maxLength = 20,
    this.autovalidateMode = AutovalidateMode.onUserInteraction,
  });

  @override
  _PasswordFieldState createState() => _PasswordFieldState();
}

class _PasswordFieldState extends State<PasswordField> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) => TextFormField(
        autocorrect: false,
        keyboardType: TextInputType.visiblePassword,
        textInputAction: widget.textInputAction,
        maxLength: widget.maxLength,
        inputFormatters: [
          FilteringTextInputFormatter.deny(
              RegExp('[\u0430-\u044F\u0410-\u042F]|\u0020'))
        ],
        focusNode: widget.focusNode,
        obscureText: _obscureText,
        controller: widget.controller,
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.all(16),
          hintText: widget.hint,
          labelText: widget.label,
          counterText: '',
          helperText: context.t.widgets.passwordField.description(
            minLength: widget.minLength!,
          ),
          helperStyle: AppTextStyles.caption(context),
          suffixIcon: GestureDetector(
            onTap: () {
              setState(() {
                _obscureText = !_obscureText;
              });
            },
            child: Padding(
              padding: const EdgeInsets.all(12),
              child: Icon(
                !_obscureText
                    ? Icons.remove_red_eye
                    : Icons.remove_red_eye_outlined,
                size: 16,
                color: context.colors.onSurfaceVariant,
              ),
            ),
          ),
        ),
        autovalidateMode: widget.autovalidateMode,
        validator: (value) {
          if (widget.mandatory && (value?.isBlank ?? true)) {
            return context.t.widgets.generalEditItem.errors.mandatory;
          }

          if (widget.minLength != null && value!.length < widget.minLength!) {
            return context.t.widgets.passwordField.errors.minLength(
              minLength: widget.minLength!,
            );
          }
          return widget.validator?.call(value!);
        },
        onFieldSubmitted: (value) => widget.onFieldSubmitted?.call(value),
        onSaved: (value) => widget.onSaved?.call(value!),
      );
}
