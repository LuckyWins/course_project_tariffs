import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'app.dart';
import 'app_wrappers.dart';
import 'domain/domain.dart';
import 'generated/translations.g.dart';
import 'injection.dart' as di;
import 'presentation/blocs/simple_bloc_observer.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle.dark.copyWith(statusBarColor: Colors.transparent));

  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    // DeviceOrientation.portraitDown,
  ]);

  final language = (await PreferencesDataSource.read(PrefsKeys.language))!;
  LocaleSettings.setLocaleRaw(language);
  // inject dependencies
  await di.init();
  // inject dependencies END

  Bloc.observer = SimpleBlocObserver();
  Bloc.transformer = sequential<dynamic>();

  runApp(AppWrappersWidget(
    child: CourseApp(
      settingsController: di.locator(),
    ),
  ));
}
