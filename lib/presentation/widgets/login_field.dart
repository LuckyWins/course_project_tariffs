import 'package:course_project/generated/translations.g.dart';
import 'package:dartx/dartx.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class LoginField extends StatelessWidget {
  final String? label;
  final String? hint;

  final String? error;
  final FocusNode focusNode;
  final Function(String value)? onFieldSubmitted;
  final Function(String value)? onSaved;
  final TextEditingController controller;
  final bool mandatory;

  const LoginField({
    this.label,
    this.hint,
    this.error,
    required this.focusNode,
    this.onFieldSubmitted,
    this.onSaved,
    this.mandatory = true,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) => TextFormField(
        controller: controller,
        autocorrect: false,
        keyboardType: TextInputType.emailAddress,
        textInputAction: TextInputAction.next,
        inputFormatters: [
          FilteringTextInputFormatter.deny(
              RegExp('[\u0430-\u044F\u0410-\u042F]|\u0020'))
        ],
        focusNode: focusNode,
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.all(16),
          labelText: label,
          hintText: hint,
          errorText: error,
        ),
        validator: (value) {
          if (mandatory && (value?.isBlank ?? true)) {
            return context.t.widgets.generalEditItem.errors.mandatory;
          }
          return null;
        },
        onFieldSubmitted: (value) => onFieldSubmitted?.call(value),
        onSaved: (value) => onSaved?.call(value!),
      );
}
