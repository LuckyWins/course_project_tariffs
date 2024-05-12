import 'package:course_project/domain/domain.dart';
import 'package:course_project/generated/translations.g.dart';
import 'package:flutter/material.dart';

extension AppReservationsSortTypeExtension on AppReservationsSortType {
  String localName(BuildContext context) =>
      context.t.models.appReservationsSortType.name[name] ??
      context.t.general.unknownLabel;
}
