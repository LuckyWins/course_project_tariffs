import 'package:course_project/domain/domain.dart';
import 'package:course_project/generated/translations.g.dart';
import 'package:flutter/material.dart';

extension AppReservationStatusExtension on AppReservationStatus {
  String localName(BuildContext context) =>
      context.t.models.appReservationStatus.name[name] ??
      context.t.general.unknownLabel;
}
