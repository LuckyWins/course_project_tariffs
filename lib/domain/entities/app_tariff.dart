import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:isar/isar.dart';

part 'app_tariff.freezed.dart';
part 'app_tariff.g.dart';

@collection
class AppTariff {
  Id id = Isar.autoIncrement;

  late int ownerId;

  DateTime creationDate = DateTime.now();

  String title = '';

  double price = 0;

  String description = '';
}

@freezed
class AppTariffEntity with _$AppTariffEntity {
  const factory AppTariffEntity({
    required int id,
    required int ownerId,
    required DateTime creationDate,
    required String title,
    required double price,
    required String description,
  }) = _AppTariffEntity;

  factory AppTariffEntity.empty({
    required int ownerId,
  }) =>
      AppTariffEntity(
        id: -1,
        ownerId: ownerId,
        creationDate: DateTime.now(),
        title: '',
        price: 0,
        description: '',
      );

  factory AppTariffEntity.fromJson(Map<String, dynamic> json) =>
      _$AppTariffEntityFromJson(json);
}

extension AppTariffMapperExtension on AppTariff {
  AppTariffEntity get entity => AppTariffEntity(
        id: id,
        ownerId: ownerId,
        creationDate: creationDate,
        title: title,
        price: price,
        description: description,
      );
}

extension AppTariffEntityMapperExtension on AppTariffEntity {
  AppTariff get dto => AppTariff()
    ..id = id == -1 ? Isar.autoIncrement : id
    ..creationDate = creationDate
    ..ownerId = ownerId
    ..title = title
    ..price = price
    ..description = description;
}
