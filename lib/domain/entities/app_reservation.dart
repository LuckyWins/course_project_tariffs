import 'package:isar/isar.dart';

part 'app_reservation.g.dart';

@collection
class AppReservation {
  Id id = Isar.autoIncrement;

  late int tariffId;

  late int userId;

  late DateTime creationDate = DateTime.now();

  late int hours;
}
