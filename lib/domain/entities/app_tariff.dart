import 'package:isar/isar.dart';

part 'app_tariff.g.dart';

@collection
class AppTariff {
  Id id = Isar.autoIncrement;

  late int ownerId;

  late DateTime creationDate = DateTime.now();

  late String title;

  late double price;

  late String description;
}
