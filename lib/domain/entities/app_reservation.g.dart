// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_reservation.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetAppReservationCollection on Isar {
  IsarCollection<AppReservation> get appReservations => this.collection();
}

const AppReservationSchema = CollectionSchema(
  name: r'AppReservation',
  id: 3724109048515900562,
  properties: {
    r'creationDate': PropertySchema(
      id: 0,
      name: r'creationDate',
      type: IsarType.dateTime,
    ),
    r'hours': PropertySchema(
      id: 1,
      name: r'hours',
      type: IsarType.long,
    ),
    r'tariffId': PropertySchema(
      id: 2,
      name: r'tariffId',
      type: IsarType.long,
    ),
    r'userId': PropertySchema(
      id: 3,
      name: r'userId',
      type: IsarType.long,
    )
  },
  estimateSize: _appReservationEstimateSize,
  serialize: _appReservationSerialize,
  deserialize: _appReservationDeserialize,
  deserializeProp: _appReservationDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _appReservationGetId,
  getLinks: _appReservationGetLinks,
  attach: _appReservationAttach,
  version: '3.1.0+1',
);

int _appReservationEstimateSize(
  AppReservation object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  return bytesCount;
}

void _appReservationSerialize(
  AppReservation object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeDateTime(offsets[0], object.creationDate);
  writer.writeLong(offsets[1], object.hours);
  writer.writeLong(offsets[2], object.tariffId);
  writer.writeLong(offsets[3], object.userId);
}

AppReservation _appReservationDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = AppReservation();
  object.creationDate = reader.readDateTime(offsets[0]);
  object.hours = reader.readLong(offsets[1]);
  object.id = id;
  object.tariffId = reader.readLong(offsets[2]);
  object.userId = reader.readLong(offsets[3]);
  return object;
}

P _appReservationDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readDateTime(offset)) as P;
    case 1:
      return (reader.readLong(offset)) as P;
    case 2:
      return (reader.readLong(offset)) as P;
    case 3:
      return (reader.readLong(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _appReservationGetId(AppReservation object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _appReservationGetLinks(AppReservation object) {
  return [];
}

void _appReservationAttach(
    IsarCollection<dynamic> col, Id id, AppReservation object) {
  object.id = id;
}

extension AppReservationQueryWhereSort
    on QueryBuilder<AppReservation, AppReservation, QWhere> {
  QueryBuilder<AppReservation, AppReservation, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension AppReservationQueryWhere
    on QueryBuilder<AppReservation, AppReservation, QWhereClause> {
  QueryBuilder<AppReservation, AppReservation, QAfterWhereClause> idEqualTo(
      Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<AppReservation, AppReservation, QAfterWhereClause> idNotEqualTo(
      Id id) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<AppReservation, AppReservation, QAfterWhereClause> idGreaterThan(
      Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<AppReservation, AppReservation, QAfterWhereClause> idLessThan(
      Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<AppReservation, AppReservation, QAfterWhereClause> idBetween(
    Id lowerId,
    Id upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerId,
        includeLower: includeLower,
        upper: upperId,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension AppReservationQueryFilter
    on QueryBuilder<AppReservation, AppReservation, QFilterCondition> {
  QueryBuilder<AppReservation, AppReservation, QAfterFilterCondition>
      creationDateEqualTo(DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'creationDate',
        value: value,
      ));
    });
  }

  QueryBuilder<AppReservation, AppReservation, QAfterFilterCondition>
      creationDateGreaterThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'creationDate',
        value: value,
      ));
    });
  }

  QueryBuilder<AppReservation, AppReservation, QAfterFilterCondition>
      creationDateLessThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'creationDate',
        value: value,
      ));
    });
  }

  QueryBuilder<AppReservation, AppReservation, QAfterFilterCondition>
      creationDateBetween(
    DateTime lower,
    DateTime upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'creationDate',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<AppReservation, AppReservation, QAfterFilterCondition>
      hoursEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'hours',
        value: value,
      ));
    });
  }

  QueryBuilder<AppReservation, AppReservation, QAfterFilterCondition>
      hoursGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'hours',
        value: value,
      ));
    });
  }

  QueryBuilder<AppReservation, AppReservation, QAfterFilterCondition>
      hoursLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'hours',
        value: value,
      ));
    });
  }

  QueryBuilder<AppReservation, AppReservation, QAfterFilterCondition>
      hoursBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'hours',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<AppReservation, AppReservation, QAfterFilterCondition> idEqualTo(
      Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<AppReservation, AppReservation, QAfterFilterCondition>
      idGreaterThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<AppReservation, AppReservation, QAfterFilterCondition>
      idLessThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<AppReservation, AppReservation, QAfterFilterCondition> idBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<AppReservation, AppReservation, QAfterFilterCondition>
      tariffIdEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'tariffId',
        value: value,
      ));
    });
  }

  QueryBuilder<AppReservation, AppReservation, QAfterFilterCondition>
      tariffIdGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'tariffId',
        value: value,
      ));
    });
  }

  QueryBuilder<AppReservation, AppReservation, QAfterFilterCondition>
      tariffIdLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'tariffId',
        value: value,
      ));
    });
  }

  QueryBuilder<AppReservation, AppReservation, QAfterFilterCondition>
      tariffIdBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'tariffId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<AppReservation, AppReservation, QAfterFilterCondition>
      userIdEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'userId',
        value: value,
      ));
    });
  }

  QueryBuilder<AppReservation, AppReservation, QAfterFilterCondition>
      userIdGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'userId',
        value: value,
      ));
    });
  }

  QueryBuilder<AppReservation, AppReservation, QAfterFilterCondition>
      userIdLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'userId',
        value: value,
      ));
    });
  }

  QueryBuilder<AppReservation, AppReservation, QAfterFilterCondition>
      userIdBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'userId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension AppReservationQueryObject
    on QueryBuilder<AppReservation, AppReservation, QFilterCondition> {}

extension AppReservationQueryLinks
    on QueryBuilder<AppReservation, AppReservation, QFilterCondition> {}

extension AppReservationQuerySortBy
    on QueryBuilder<AppReservation, AppReservation, QSortBy> {
  QueryBuilder<AppReservation, AppReservation, QAfterSortBy>
      sortByCreationDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'creationDate', Sort.asc);
    });
  }

  QueryBuilder<AppReservation, AppReservation, QAfterSortBy>
      sortByCreationDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'creationDate', Sort.desc);
    });
  }

  QueryBuilder<AppReservation, AppReservation, QAfterSortBy> sortByHours() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hours', Sort.asc);
    });
  }

  QueryBuilder<AppReservation, AppReservation, QAfterSortBy> sortByHoursDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hours', Sort.desc);
    });
  }

  QueryBuilder<AppReservation, AppReservation, QAfterSortBy> sortByTariffId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tariffId', Sort.asc);
    });
  }

  QueryBuilder<AppReservation, AppReservation, QAfterSortBy>
      sortByTariffIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tariffId', Sort.desc);
    });
  }

  QueryBuilder<AppReservation, AppReservation, QAfterSortBy> sortByUserId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'userId', Sort.asc);
    });
  }

  QueryBuilder<AppReservation, AppReservation, QAfterSortBy>
      sortByUserIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'userId', Sort.desc);
    });
  }
}

extension AppReservationQuerySortThenBy
    on QueryBuilder<AppReservation, AppReservation, QSortThenBy> {
  QueryBuilder<AppReservation, AppReservation, QAfterSortBy>
      thenByCreationDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'creationDate', Sort.asc);
    });
  }

  QueryBuilder<AppReservation, AppReservation, QAfterSortBy>
      thenByCreationDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'creationDate', Sort.desc);
    });
  }

  QueryBuilder<AppReservation, AppReservation, QAfterSortBy> thenByHours() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hours', Sort.asc);
    });
  }

  QueryBuilder<AppReservation, AppReservation, QAfterSortBy> thenByHoursDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hours', Sort.desc);
    });
  }

  QueryBuilder<AppReservation, AppReservation, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<AppReservation, AppReservation, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<AppReservation, AppReservation, QAfterSortBy> thenByTariffId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tariffId', Sort.asc);
    });
  }

  QueryBuilder<AppReservation, AppReservation, QAfterSortBy>
      thenByTariffIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tariffId', Sort.desc);
    });
  }

  QueryBuilder<AppReservation, AppReservation, QAfterSortBy> thenByUserId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'userId', Sort.asc);
    });
  }

  QueryBuilder<AppReservation, AppReservation, QAfterSortBy>
      thenByUserIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'userId', Sort.desc);
    });
  }
}

extension AppReservationQueryWhereDistinct
    on QueryBuilder<AppReservation, AppReservation, QDistinct> {
  QueryBuilder<AppReservation, AppReservation, QDistinct>
      distinctByCreationDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'creationDate');
    });
  }

  QueryBuilder<AppReservation, AppReservation, QDistinct> distinctByHours() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'hours');
    });
  }

  QueryBuilder<AppReservation, AppReservation, QDistinct> distinctByTariffId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'tariffId');
    });
  }

  QueryBuilder<AppReservation, AppReservation, QDistinct> distinctByUserId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'userId');
    });
  }
}

extension AppReservationQueryProperty
    on QueryBuilder<AppReservation, AppReservation, QQueryProperty> {
  QueryBuilder<AppReservation, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<AppReservation, DateTime, QQueryOperations>
      creationDateProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'creationDate');
    });
  }

  QueryBuilder<AppReservation, int, QQueryOperations> hoursProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'hours');
    });
  }

  QueryBuilder<AppReservation, int, QQueryOperations> tariffIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'tariffId');
    });
  }

  QueryBuilder<AppReservation, int, QQueryOperations> userIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'userId');
    });
  }
}
