import 'package:course_project/domain/domain.dart';
import 'package:course_project/generated/translations.g.dart';
import 'package:flutter/material.dart';

extension AppTariffsSortTypeExtension on AppTariffsSortType {
  String localName(BuildContext context) =>
      context.t.models.appTariffSortType.name[name] ??
      context.t.general.unknownLabel;
}
