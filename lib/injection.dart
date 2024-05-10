import 'package:course_project/data/data.dart';
import 'package:course_project/domain/domain.dart';
import 'package:get_it/get_it.dart';
import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';

import 'settings_controller.dart';

final locator = GetIt.instance;

Future<void> init() async {
  final settingsController = SettingsController();
  await settingsController.loadSettings();

  locator
    ..registerSingleton<SettingsController>(settingsController)
    // repo
    // ..registerSingleton<SettingsController>(settingsController)
    ..registerLazySingleton<ReservationsRepository>(
        () => ReservationsRepositoryImpl(
              db: locator(),
            ))
    ..registerLazySingleton<TariffsRepository>(() => TariffsRepositoryImpl(
          db: locator(),
        ))
    ..registerLazySingleton<UsersRepository>(() => UsersRepositoryImpl(
          db: locator(),
        ));

  // DB
  final dir = await getApplicationDocumentsDirectory();
  final isar = Isar.getInstance() ??
      await Isar.open(
        [
          AppReservationSchema,
          AppTariffSchema,
          AppUserSchema,
        ],
        directory: dir.path,
      );
  // TO clear all
  // isar.writeTxnSync(isar.clearSync);
  // TO clear tariffs
  // isar.writeTxnSync(isar.tariffs.clearSync);
  await performMigrationIfNeeded(isar);
  locator.registerSingleton<Isar>(isar);

  return locator.allReady();
}

Future<void> performMigrationIfNeeded(Isar db) async {
  final adminUser =
      await db.appUsers.filter().usernameEqualTo('admin').findFirst();
  if (adminUser == null) {
    final newUser = AppUser()
      ..username = 'admin'
      ..role = UserRole.admin
      ..hashedPassword =
          '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92';
    await db.writeTxn(() async {
      await db.appUsers.put(newUser);
    });
  }
}
