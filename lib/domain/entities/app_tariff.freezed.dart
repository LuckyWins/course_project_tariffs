// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_tariff.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AppTariffEntity _$AppTariffEntityFromJson(Map<String, dynamic> json) {
  return _AppTariffEntity.fromJson(json);
}

/// @nodoc
mixin _$AppTariffEntity {
  int get id => throw _privateConstructorUsedError;
  int get ownerId => throw _privateConstructorUsedError;
  DateTime get creationDate => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  double get price => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AppTariffEntityCopyWith<AppTariffEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppTariffEntityCopyWith<$Res> {
  factory $AppTariffEntityCopyWith(
          AppTariffEntity value, $Res Function(AppTariffEntity) then) =
      _$AppTariffEntityCopyWithImpl<$Res, AppTariffEntity>;
  @useResult
  $Res call(
      {int id,
      int ownerId,
      DateTime creationDate,
      String title,
      double price,
      String description});
}

/// @nodoc
class _$AppTariffEntityCopyWithImpl<$Res, $Val extends AppTariffEntity>
    implements $AppTariffEntityCopyWith<$Res> {
  _$AppTariffEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? ownerId = null,
    Object? creationDate = null,
    Object? title = null,
    Object? price = null,
    Object? description = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      ownerId: null == ownerId
          ? _value.ownerId
          : ownerId // ignore: cast_nullable_to_non_nullable
              as int,
      creationDate: null == creationDate
          ? _value.creationDate
          : creationDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AppTariffEntityImplCopyWith<$Res>
    implements $AppTariffEntityCopyWith<$Res> {
  factory _$$AppTariffEntityImplCopyWith(_$AppTariffEntityImpl value,
          $Res Function(_$AppTariffEntityImpl) then) =
      __$$AppTariffEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      int ownerId,
      DateTime creationDate,
      String title,
      double price,
      String description});
}

/// @nodoc
class __$$AppTariffEntityImplCopyWithImpl<$Res>
    extends _$AppTariffEntityCopyWithImpl<$Res, _$AppTariffEntityImpl>
    implements _$$AppTariffEntityImplCopyWith<$Res> {
  __$$AppTariffEntityImplCopyWithImpl(
      _$AppTariffEntityImpl _value, $Res Function(_$AppTariffEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? ownerId = null,
    Object? creationDate = null,
    Object? title = null,
    Object? price = null,
    Object? description = null,
  }) {
    return _then(_$AppTariffEntityImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      ownerId: null == ownerId
          ? _value.ownerId
          : ownerId // ignore: cast_nullable_to_non_nullable
              as int,
      creationDate: null == creationDate
          ? _value.creationDate
          : creationDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AppTariffEntityImpl implements _AppTariffEntity {
  const _$AppTariffEntityImpl(
      {required this.id,
      required this.ownerId,
      required this.creationDate,
      required this.title,
      required this.price,
      required this.description});

  factory _$AppTariffEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$AppTariffEntityImplFromJson(json);

  @override
  final int id;
  @override
  final int ownerId;
  @override
  final DateTime creationDate;
  @override
  final String title;
  @override
  final double price;
  @override
  final String description;

  @override
  String toString() {
    return 'AppTariffEntity(id: $id, ownerId: $ownerId, creationDate: $creationDate, title: $title, price: $price, description: $description)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppTariffEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.ownerId, ownerId) || other.ownerId == ownerId) &&
            (identical(other.creationDate, creationDate) ||
                other.creationDate == creationDate) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, ownerId, creationDate, title, price, description);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AppTariffEntityImplCopyWith<_$AppTariffEntityImpl> get copyWith =>
      __$$AppTariffEntityImplCopyWithImpl<_$AppTariffEntityImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AppTariffEntityImplToJson(
      this,
    );
  }
}

abstract class _AppTariffEntity implements AppTariffEntity {
  const factory _AppTariffEntity(
      {required final int id,
      required final int ownerId,
      required final DateTime creationDate,
      required final String title,
      required final double price,
      required final String description}) = _$AppTariffEntityImpl;

  factory _AppTariffEntity.fromJson(Map<String, dynamic> json) =
      _$AppTariffEntityImpl.fromJson;

  @override
  int get id;
  @override
  int get ownerId;
  @override
  DateTime get creationDate;
  @override
  String get title;
  @override
  double get price;
  @override
  String get description;
  @override
  @JsonKey(ignore: true)
  _$$AppTariffEntityImplCopyWith<_$AppTariffEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
