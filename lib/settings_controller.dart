import 'package:flutter/material.dart';

import 'domain/domain.dart';
import 'presentation/utils/utils.dart';

class SettingsController with ChangeNotifier {
  SettingsController();

  late ThemeMode _themeMode;

  ThemeMode get themeMode => _themeMode;

  Future<void> loadSettings() async {
    _themeMode = ThemeUtil.getThemeByName(
        await PreferencesDataSource.read(PrefsKeys.themeMode));

    notifyListeners();
  }

  Future<void> updateThemeMode(ThemeMode? newThemeMode) async {
    if (newThemeMode == null) return;

    if (newThemeMode == _themeMode) return;

    _themeMode = newThemeMode;

    notifyListeners();

    await PreferencesDataSource.write(PrefsKeys.themeMode, newThemeMode.name);
  }
}
