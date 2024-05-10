import 'package:course_project/generated/translations.g.dart';
import 'package:course_project/presentation/blocs/blocs.dart';
import 'package:course_project/presentation/navigation.dart';
import 'package:course_project/presentation/utils/utils.dart';
import 'package:course_project/presentation/widgets/widgets.dart';
import 'package:course_project/settings_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SettingsScreen extends StatelessWidget {
  final SettingsController settingsController;

  const SettingsScreen({
    super.key,
    required this.settingsController,
  });

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text(context.t.screens.settings.title),
          actions: [
            BlocBuilder<ProfileCubit, ProfileState>(
              builder: (context, state) => state.maybeMap(
                hasData: (state) => IconButton(
                  onPressed: _onEditProfileTap,
                  icon: const Icon(Icons.edit_rounded),
                ),
                loading: (_) => const LoadingIndicator(),
                orElse: SizedBox.shrink,
              ),
            )
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
          child: BlocBuilder<ProfileCubit, ProfileState>(
            builder: (context, state) => state.maybeMap(
              hasData: (state) => SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    ListTile(
                      title: Text(context.t.screens.settings.username),
                      subtitle: Text(state.data.username),
                    ),
                    ListTile(
                      title:
                          Text(context.t.screens.settings.realNameField.label),
                      subtitle: Text(state.data.profile?.realName ?? 'Empty'),
                    ),
                    ListTile(
                      title: Text(context.t.screens.settings.bioField.label),
                      subtitle: Text(state.data.profile?.bio ?? 'Empty'),
                    ),
                    ListTile(
                      onTap: _onThemeChangeTap,
                      title: Text(context.t.screens.settings.theme),
                      subtitle:
                          Text(settingsController.themeMode.localName(context)),
                    ),
                    TextButton(
                      style: const ButtonStyle(
                        padding: MaterialStatePropertyAll(
                          EdgeInsets.symmetric(horizontal: 16),
                        ),
                      ),
                      onPressed: () => _onLogOutTap(context),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(context.t.screens.settings.logOutButton),
                      ),
                    ),
                  ],
                ),
              ),
              orElse: () => const Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  LoadingIndicator(),
                ],
              ),
            ),
          ),
        ),
      );

  void _onEditProfileTap() {
    Navigation.toProfileEdit();
  }

  void _onThemeChangeTap() {
    Navigation.toThemeSelect();
  }

  void _onLogOutTap(BuildContext context) {
    Multiplatform.showMessage(
      context: context,
      title: context.t.screens.settings.modal.logOut.title,
      message: context.t.screens.settings.modal.logOut.message,
      buttonText: context.t.screens.settings.modal.logOut.action,
      onTapAction: () => context.read<AuthBloc>().add(const AuthEvent.logOut()),
    );
  }
}
