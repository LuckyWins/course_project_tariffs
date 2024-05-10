import 'package:course_project/generated/translations.g.dart';
import 'package:course_project/presentation/utils/utils.dart';
import 'package:course_project/presentation/widgets/widgets.dart';
import 'package:dartx/dartx.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class PriceFieldWidget extends StatefulWidget {
  final double? value;
  final Function(double value) onChanged;

  const PriceFieldWidget({
    super.key,
    required this.value,
    required this.onChanged,
  });

  @override
  State<PriceFieldWidget> createState() => _PriceFieldWidgetState();
}

class _PriceFieldWidgetState extends State<PriceFieldWidget> {
  @override
  Widget build(BuildContext context) => EditItemField(
        initialValue: widget.value?.toString(),
        label: context.t.screens.tariffEdit.priceField.label,
        // hint: context.t.screens.productEdit.priceField.hint,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        keyboardType: const TextInputType.numberWithOptions(decimal: true),
        inputFormatters: [
          // FilteringTextInputFormatter
          //     .digitsOnly,
          FilteringTextInputFormatter.deny(RegExp('[-| ]')),
          NumberTextInputFormatter(decimalRange: 2),
        ],
        maxLength: 15,
        validator: (value) {
          if (value.isBlank) {
            return context.t.widgets.generalEditItem.errors.mandatory;
          }
          final sum = double.tryParse(value);
          if (sum == null || sum <= 0) {
            return context.t.screens.tariffEdit.priceField.errors.general;
          }
          return null;
        },
        onChanged: (value) {
          final amount = double.tryParse(value) ?? 0;
          widget.onChanged(amount);
        },
      );
}
