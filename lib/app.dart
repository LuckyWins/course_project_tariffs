import 'package:course_project/presentation/theme/theme.dart' as theme;
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'generated/translations.g.dart';
import 'presentation/blocs/blocs.dart';
import 'presentation/navigation.dart';
import 'presentation/route/route.dart';
import 'settings_controller.dart';

class CourseApp extends StatefulWidget {
  final SettingsController settingsController;

  const CourseApp({
    super.key,
    required this.settingsController,
  });

  @override
  State<CourseApp> createState() => _CourseAppState();
}

class _CourseAppState extends State<CourseApp> {
  @override
  Widget build(BuildContext context) => BlocListener<AuthBloc, AuthState>(
        listener: (context, state) => state.mapOrNull(
          noAuth: (_) {
            Navigation.toSignIn();
            return null;
          },
        ),
        child: ListenableBuilder(
          listenable: widget.settingsController,
          builder: (context, child) => MaterialApp.router(
            routerConfig: GoRouteClass.route,
            localizationsDelegates: const [
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
            ],
            locale: TranslationProvider.of(context).flutterLocale,
            supportedLocales: AppLocaleUtils.supportedLocales,
            title: 'Course App',
            theme: theme.lightTheme(context),
            darkTheme: theme.darkTheme(context),
            themeMode: widget.settingsController.themeMode,
          ),
        ),
      );
}
