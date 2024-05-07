import 'package:course_project/data/data.dart';
import 'package:course_project/domain/domain.dart';
import 'package:get_it/get_it.dart';
import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';

final locator = GetIt.instance;

Future<void> init() async {
  // final settingsController = SettingsController();
  // await settingsController.loadSettings();

  locator
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
  locator.registerSingleton<Isar>(isar);

  return locator.allReady();
}
