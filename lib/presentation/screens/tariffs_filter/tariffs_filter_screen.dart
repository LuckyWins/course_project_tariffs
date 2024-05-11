import 'package:course_project/domain/domain.dart';
import 'package:course_project/generated/translations.g.dart';
import 'package:course_project/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class TariffsFilterScreen extends StatefulWidget {
  final AppTariffsFilter filter;

  const TariffsFilterScreen({
    super.key,
    required this.filter,
  });

  @override
  State<TariffsFilterScreen> createState() => _TariffsFilterScreenState();
}

class _TariffsFilterScreenState extends State<TariffsFilterScreen> {
  final _titleController = TextEditingController();

  late AppTariffsFilter _filter;

  bool get isEdit =>
      widget.filter.creationDate != _filter.creationDate ||
      widget.filter.titleQuery != _filter.titleQuery;

  @override
  void initState() {
    _filter = widget.filter.copyWith();
    _titleController.text = _filter.titleQuery ?? '';
    super.initState();
  }

  @override
  Widget build(BuildContext context) => DismissOutside(
        child: Scaffold(
          appBar: AppBar(
            title: Text(context.t.screens.tariffsFilter.title),
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
                  EditItemField(
                    label: context.t.screens.tariffsFilter.titleField.label,
                    controller: _titleController,
                    onChanged: (value) {
                      setState(() {
                        _filter = _filter.copyWith(
                          titleQuery: value,
                        );
                      });
                    },
                  ),
                  const SizedBox(height: 16),
                  EditItemDateField(
                    label:
                        context.t.screens.tariffsFilter.creationDateField.label,
                    value: _filter.creationDate,
                    builder: (context, date) =>
                        Text(DateFormat('dd/MM/y').format(date)),
                    onClear: () {
                      setState(() {
                        _filter = _filter.copyWith(
                          creationDate: null,
                        );
                      });
                    },
                    onChange: (value) {
                      setState(() {
                        _filter = _filter.copyWith(
                          creationDate: value,
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
    _titleController.clear();
    setState(() {
      _filter = _filter.clear();
    });
  }

  void _onApplyTap() {
    Navigator.of(context).pop(_filter);
  }
}
