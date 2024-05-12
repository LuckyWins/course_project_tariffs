// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_reservation.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AppReservationEntity _$AppReservationEntityFromJson(Map<String, dynamic> json) {
  return _AppReservationEntity.fromJson(json);
}

/// @nodoc
mixin _$AppReservationEntity {
  int get id => throw _privateConstructorUsedError;
  int get tariffId => throw _privateConstructorUsedError;
  int get tariffOwnerId => throw _privateConstructorUsedError;
  int get userId => throw _privateConstructorUsedError;
  DateTime get creationDate => throw _privateConstructorUsedError;
  DateTime get startDate => throw _privateConstructorUsedError;
  int get hours => throw _privateConstructorUsedError;
  AppReservationStatus get status => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AppReservationEntityCopyWith<AppReservationEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppReservationEntityCopyWith<$Res> {
  factory $AppReservationEntityCopyWith(AppReservationEntity value,
          $Res Function(AppReservationEntity) then) =
      _$AppReservationEntityCopyWithImpl<$Res, AppReservationEntity>;
  @useResult
  $Res call(
      {int id,
      int tariffId,
      int tariffOwnerId,
      int userId,
      DateTime creationDate,
      DateTime startDate,
      int hours,
      AppReservationStatus status});
}

/// @nodoc
class _$AppReservationEntityCopyWithImpl<$Res,
        $Val extends AppReservationEntity>
    implements $AppReservationEntityCopyWith<$Res> {
  _$AppReservationEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? tariffId = null,
    Object? tariffOwnerId = null,
    Object? userId = null,
    Object? creationDate = null,
    Object? startDate = null,
    Object? hours = null,
    Object? status = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      tariffId: null == tariffId
          ? _value.tariffId
          : tariffId // ignore: cast_nullable_to_non_nullable
              as int,
      tariffOwnerId: null == tariffOwnerId
          ? _value.tariffOwnerId
          : tariffOwnerId // ignore: cast_nullable_to_non_nullable
              as int,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      creationDate: null == creationDate
          ? _value.creationDate
          : creationDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      startDate: null == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      hours: null == hours
          ? _value.hours
          : hours // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as AppReservationStatus,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AppReservationEntityImplCopyWith<$Res>
    implements $AppReservationEntityCopyWith<$Res> {
  factory _$$AppReservationEntityImplCopyWith(_$AppReservationEntityImpl value,
          $Res Function(_$AppReservationEntityImpl) then) =
      __$$AppReservationEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      int tariffId,
      int tariffOwnerId,
      int userId,
      DateTime creationDate,
      DateTime startDate,
      int hours,
      AppReservationStatus status});
}

/// @nodoc
class __$$AppReservationEntityImplCopyWithImpl<$Res>
    extends _$AppReservationEntityCopyWithImpl<$Res, _$AppReservationEntityImpl>
    implements _$$AppReservationEntityImplCopyWith<$Res> {
  __$$AppReservationEntityImplCopyWithImpl(_$AppReservationEntityImpl _value,
      $Res Function(_$AppReservationEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? tariffId = null,
    Object? tariffOwnerId = null,
    Object? userId = null,
    Object? creationDate = null,
    Object? startDate = null,
    Object? hours = null,
    Object? status = null,
  }) {
    return _then(_$AppReservationEntityImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      tariffId: null == tariffId
          ? _value.tariffId
          : tariffId // ignore: cast_nullable_to_non_nullable
              as int,
      tariffOwnerId: null == tariffOwnerId
          ? _value.tariffOwnerId
          : tariffOwnerId // ignore: cast_nullable_to_non_nullable
              as int,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      creationDate: null == creationDate
          ? _value.creationDate
          : creationDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      startDate: null == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      hours: null == hours
          ? _value.hours
          : hours // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as AppReservationStatus,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AppReservationEntityImpl implements _AppReservationEntity {
  const _$AppReservationEntityImpl(
      {required this.id,
      required this.tariffId,
      required this.tariffOwnerId,
      required this.userId,
      required this.creationDate,
      required this.startDate,
      required this.hours,
      required this.status});

  factory _$AppReservationEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$AppReservationEntityImplFromJson(json);

  @override
  final int id;
  @override
  final int tariffId;
  @override
  final int tariffOwnerId;
  @override
  final int userId;
  @override
  final DateTime creationDate;
  @override
  final DateTime startDate;
  @override
  final int hours;
  @override
  final AppReservationStatus status;

  @override
  String toString() {
    return 'AppReservationEntity(id: $id, tariffId: $tariffId, tariffOwnerId: $tariffOwnerId, userId: $userId, creationDate: $creationDate, startDate: $startDate, hours: $hours, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppReservationEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.tariffId, tariffId) ||
                other.tariffId == tariffId) &&
            (identical(other.tariffOwnerId, tariffOwnerId) ||
                other.tariffOwnerId == tariffOwnerId) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.creationDate, creationDate) ||
                other.creationDate == creationDate) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.hours, hours) || other.hours == hours) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, tariffId, tariffOwnerId,
      userId, creationDate, startDate, hours, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AppReservationEntityImplCopyWith<_$AppReservationEntityImpl>
      get copyWith =>
          __$$AppReservationEntityImplCopyWithImpl<_$AppReservationEntityImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AppReservationEntityImplToJson(
      this,
    );
  }
}

abstract class _AppReservationEntity implements AppReservationEntity {
  const factory _AppReservationEntity(
      {required final int id,
      required final int tariffId,
      required final int tariffOwnerId,
      required final int userId,
      required final DateTime creationDate,
      required final DateTime startDate,
      required final int hours,
      required final AppReservationStatus status}) = _$AppReservationEntityImpl;

  factory _AppReservationEntity.fromJson(Map<String, dynamic> json) =
      _$AppReservationEntityImpl.fromJson;

  @override
  int get id;
  @override
  int get tariffId;
  @override
  int get tariffOwnerId;
  @override
  int get userId;
  @override
  DateTime get creationDate;
  @override
  DateTime get startDate;
  @override
  int get hours;
  @override
  AppReservationStatus get status;
  @override
  @JsonKey(ignore: true)
  _$$AppReservationEntityImplCopyWith<_$AppReservationEntityImpl>
      get copyWith => throw _privateConstructorUsedError;
}
