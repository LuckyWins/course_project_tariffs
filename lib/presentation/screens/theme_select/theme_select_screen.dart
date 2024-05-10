import 'package:course_project/generated/translations.g.dart';
import 'package:course_project/presentation/theme/theme.dart';
import 'package:course_project/presentation/utils/utils.dart';
import 'package:course_project/settings_controller.dart';
import 'package:flutter/material.dart';

class ThemeSelectScreen extends StatelessWidget {
  final SettingsController settingsController;

  const ThemeSelectScreen({
    super.key,
    required this.settingsController,
  });

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          backgroundColor: context.colors.background,
          title: Text(context.t.screens.themeSelect.title),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
          child: Column(
            children: [
              _listItem(
                ThemeMode.light,
                context,
              ),
              _listItem(
                ThemeMode.dark,
                context,
              ),
              _listItem(
                ThemeMode.system,
                context,
              ),
            ],
          ),
        ),
      );

  Widget _listItem(ThemeMode mode, BuildContext context) => ListTile(
        onTap: () => _onThemeModeTap(mode),
        title: Text(
          mode.localName(context),
          style: AppTextStyles.body1(context)
              .copyWith(color: context.colors.onSurface),
        ),
        trailing: settingsController.themeMode == mode
            ? Icon(
                Icons.check_rounded,
                size: 18,
                color: context.colors.primary,
              )
            : null,
      );

  Future<void> _onThemeModeTap(ThemeMode mode) async {
    await settingsController.updateThemeMode(mode);
  }
}
