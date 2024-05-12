import 'package:course_project/domain/domain.dart';
import 'package:course_project/generated/translations.g.dart';
import 'package:course_project/presentation/utils/utils.dart';
import 'package:course_project/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';

class ReservationsFilterScreen extends StatefulWidget {
  final AppReservationsFilter filter;

  const ReservationsFilterScreen({
    super.key,
    required this.filter,
  });

  @override
  State<ReservationsFilterScreen> createState() =>
      _ReservationsFilterScreenState();
}

class _ReservationsFilterScreenState extends State<ReservationsFilterScreen> {
  final _hoursController = TextEditingController();

  late AppReservationsFilter _filter;

  bool get isEdit =>
      widget.filter.startDate != _filter.startDate ||
      widget.filter.hours != _filter.hours ||
      widget.filter.status != _filter.status;

  @override
  void initState() {
    _filter = widget.filter.copyWith();
    _hoursController.text = _filter.hours?.toString() ?? '';
    super.initState();
  }

  @override
  Widget build(BuildContext context) => DismissOutside(
        child: Scaffold(
          appBar: AppBar(
            title: Text(context.t.screens.reservationsFilter.title),
            actions: [
              if (!_filter.isEmpty && !isEdit)
                TextButton(
                  onPressed: _onClearTap,
                  child: Text(context.t.general.actions.clear),
                )
              else
                TextButton(
                  onPressed: isEdit ? _onApplyTap : null,
                  child: Text(context.t.general.actions.apply),
                ),
            ],
          ),
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
              child: Column(
                children: [
                  EditItemDateField(
                    label: context
                        .t.screens.reservationsFilter.startDateField.label,
                    value: _filter.startDate,
                    builder: (context, date) =>
                        Text(DateFormat('dd/MM/y').format(date)),
                    onClear: () {
                      setState(() {
                        _filter = _filter.copyWith(
                          startDate: null,
                        );
                      });
                    },
                    onChange: (value) {
                      setState(() {
                        _filter = _filter.copyWith(
                          startDate: value,
                        );
                      });
                    },
                  ),
                  const SizedBox(height: 16),
                  EditItemField(
                    label:
                        context.t.screens.reservationsFilter.hoursField.label,
                    controller: _hoursController,
                    keyboardType: const TextInputType.numberWithOptions(),
                    inputFormatters: [
                      FilteringTextInputFormatter.digitsOnly,
                    ],
                    onChanged: (value) {
                      setState(() {
                        _filter = _filter.copyWith(
                          hours: int.tryParse(value),
                        );
                      });
                    },
                  ),
                  const SizedBox(height: 16),
                  EditItemDropdown(
                    context: context,
                    label:
                        context.t.screens.reservationsFilter.statusField.label,
                    value: _filter.status,
                    items: AppReservationStatus.values,
                    itemBuilder: (item) => Text(item?.localName(context) ?? ''),
                    onClear: () {
                      setState(() {
                        _filter = _filter.copyWith(
                          status: null,
                        );
                      });
                    },
                    onChanged: (value) {
                      setState(() {
                        _filter = _filter.copyWith(
                          status: value,
                        );
                      });
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      );

  void _onClearTap() {
    _hoursController.clear();
    setState(() {
      _filter = _filter.clear();
    });
  }

  void _onApplyTap() {
    Navigator.of(context).pop(_filter);
  }
}
