// ignore_for_file: avoid_classes_with_only_static_members

import 'package:course_project/generated/translations.g.dart';
import 'package:flutter/material.dart';

extension ThemeModeUtil on ThemeMode {
  String localName(BuildContext context) =>
      context.t.models.theme.name[name] ?? context.t.general.unknownLabel;
}

class ThemeUtil {
  static ThemeMode getThemeByName(String? name) => switch (name) {
        'dark' => ThemeMode.dark,
        'light' => ThemeMode.light,
        'system' => ThemeMode.system,
        _ => ThemeMode.system,
      };
}
