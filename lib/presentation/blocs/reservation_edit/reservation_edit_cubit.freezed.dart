// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'reservation_edit_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ReservationEditState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(AppReservationEntity data) hasData,
    required TResult Function() updatedSuccessful,
    required TResult Function() cancelledSuccessful,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(AppReservationEntity data)? hasData,
    TResult? Function()? updatedSuccessful,
    TResult? Function()? cancelledSuccessful,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(AppReservationEntity data)? hasData,
    TResult Function()? updatedSuccessful,
    TResult Function()? cancelledSuccessful,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_HasData value) hasData,
    required TResult Function(_UpdatedSuccessful value) updatedSuccessful,
    required TResult Function(_CancelledSuccessful value) cancelledSuccessful,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_HasData value)? hasData,
    TResult? Function(_UpdatedSuccessful value)? updatedSuccessful,
    TResult? Function(_CancelledSuccessful value)? cancelledSuccessful,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_HasData value)? hasData,
    TResult Function(_UpdatedSuccessful value)? updatedSuccessful,
    TResult Function(_CancelledSuccessful value)? cancelledSuccessful,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReservationEditStateCopyWith<$Res> {
  factory $ReservationEditStateCopyWith(ReservationEditState value,
          $Res Function(ReservationEditState) then) =
      _$ReservationEditStateCopyWithImpl<$Res, ReservationEditState>;
}

/// @nodoc
class _$ReservationEditStateCopyWithImpl<$Res,
        $Val extends ReservationEditState>
    implements $ReservationEditStateCopyWith<$Res> {
  _$ReservationEditStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$ReservationEditStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'ReservationEditState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(AppReservationEntity data) hasData,
    required TResult Function() updatedSuccessful,
    required TResult Function() cancelledSuccessful,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(AppReservationEntity data)? hasData,
    TResult? Function()? updatedSuccessful,
    TResult? Function()? cancelledSuccessful,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(AppReservationEntity data)? hasData,
    TResult Function()? updatedSuccessful,
    TResult Function()? cancelledSuccessful,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_HasData value) hasData,
    required TResult Function(_UpdatedSuccessful value) updatedSuccessful,
    required TResult Function(_CancelledSuccessful value) cancelledSuccessful,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_HasData value)? hasData,
    TResult? Function(_UpdatedSuccessful value)? updatedSuccessful,
    TResult? Function(_CancelledSuccessful value)? cancelledSuccessful,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_HasData value)? hasData,
    TResult Function(_UpdatedSuccessful value)? updatedSuccessful,
    TResult Function(_CancelledSuccessful value)? cancelledSuccessful,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements ReservationEditState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$HasDataImplCopyWith<$Res> {
  factory _$$HasDataImplCopyWith(
          _$HasDataImpl value, $Res Function(_$HasDataImpl) then) =
      __$$HasDataImplCopyWithImpl<$Res>;
  @useResult
  $Res call({AppReservationEntity data});

  $AppReservationEntityCopyWith<$Res> get data;
}

/// @nodoc
class __$$HasDataImplCopyWithImpl<$Res>
    extends _$ReservationEditStateCopyWithImpl<$Res, _$HasDataImpl>
    implements _$$HasDataImplCopyWith<$Res> {
  __$$HasDataImplCopyWithImpl(
      _$HasDataImpl _value, $Res Function(_$HasDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$HasDataImpl(
      null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as AppReservationEntity,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $AppReservationEntityCopyWith<$Res> get data {
    return $AppReservationEntityCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc

class _$HasDataImpl implements _HasData {
  const _$HasDataImpl(this.data);

  @override
  final AppReservationEntity data;

  @override
  String toString() {
    return 'ReservationEditState.hasData(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HasDataImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HasDataImplCopyWith<_$HasDataImpl> get copyWith =>
      __$$HasDataImplCopyWithImpl<_$HasDataImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(AppReservationEntity data) hasData,
    required TResult Function() updatedSuccessful,
    required TResult Function() cancelledSuccessful,
  }) {
    return hasData(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(AppReservationEntity data)? hasData,
    TResult? Function()? updatedSuccessful,
    TResult? Function()? cancelledSuccessful,
  }) {
    return hasData?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(AppReservationEntity data)? hasData,
    TResult Function()? updatedSuccessful,
    TResult Function()? cancelledSuccessful,
    required TResult orElse(),
  }) {
    if (hasData != null) {
      return hasData(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_HasData value) hasData,
    required TResult Function(_UpdatedSuccessful value) updatedSuccessful,
    required TResult Function(_CancelledSuccessful value) cancelledSuccessful,
  }) {
    return hasData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_HasData value)? hasData,
    TResult? Function(_UpdatedSuccessful value)? updatedSuccessful,
    TResult? Function(_CancelledSuccessful value)? cancelledSuccessful,
  }) {
    return hasData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_HasData value)? hasData,
    TResult Function(_UpdatedSuccessful value)? updatedSuccessful,
    TResult Function(_CancelledSuccessful value)? cancelledSuccessful,
    required TResult orElse(),
  }) {
    if (hasData != null) {
      return hasData(this);
    }
    return orElse();
  }
}

abstract class _HasData implements ReservationEditState {
  const factory _HasData(final AppReservationEntity data) = _$HasDataImpl;

  AppReservationEntity get data;
  @JsonKey(ignore: true)
  _$$HasDataImplCopyWith<_$HasDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdatedSuccessfulImplCopyWith<$Res> {
  factory _$$UpdatedSuccessfulImplCopyWith(_$UpdatedSuccessfulImpl value,
          $Res Function(_$UpdatedSuccessfulImpl) then) =
      __$$UpdatedSuccessfulImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UpdatedSuccessfulImplCopyWithImpl<$Res>
    extends _$ReservationEditStateCopyWithImpl<$Res, _$UpdatedSuccessfulImpl>
    implements _$$UpdatedSuccessfulImplCopyWith<$Res> {
  __$$UpdatedSuccessfulImplCopyWithImpl(_$UpdatedSuccessfulImpl _value,
      $Res Function(_$UpdatedSuccessfulImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$UpdatedSuccessfulImpl implements _UpdatedSuccessful {
  const _$UpdatedSuccessfulImpl();

  @override
  String toString() {
    return 'ReservationEditState.updatedSuccessful()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UpdatedSuccessfulImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(AppReservationEntity data) hasData,
    required TResult Function() updatedSuccessful,
    required TResult Function() cancelledSuccessful,
  }) {
    return updatedSuccessful();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(AppReservationEntity data)? hasData,
    TResult? Function()? updatedSuccessful,
    TResult? Function()? cancelledSuccessful,
  }) {
    return updatedSuccessful?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(AppReservationEntity data)? hasData,
    TResult Function()? updatedSuccessful,
    TResult Function()? cancelledSuccessful,
    required TResult orElse(),
  }) {
    if (updatedSuccessful != null) {
      return updatedSuccessful();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_HasData value) hasData,
    required TResult Function(_UpdatedSuccessful value) updatedSuccessful,
    required TResult Function(_CancelledSuccessful value) cancelledSuccessful,
  }) {
    return updatedSuccessful(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_HasData value)? hasData,
    TResult? Function(_UpdatedSuccessful value)? updatedSuccessful,
    TResult? Function(_CancelledSuccessful value)? cancelledSuccessful,
  }) {
    return updatedSuccessful?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_HasData value)? hasData,
    TResult Function(_UpdatedSuccessful value)? updatedSuccessful,
    TResult Function(_CancelledSuccessful value)? cancelledSuccessful,
    required TResult orElse(),
  }) {
    if (updatedSuccessful != null) {
      return updatedSuccessful(this);
    }
    return orElse();
  }
}

abstract class _UpdatedSuccessful implements ReservationEditState {
  const factory _UpdatedSuccessful() = _$UpdatedSuccessfulImpl;
}

/// @nodoc
abstract class _$$CancelledSuccessfulImplCopyWith<$Res> {
  factory _$$CancelledSuccessfulImplCopyWith(_$CancelledSuccessfulImpl value,
          $Res Function(_$CancelledSuccessfulImpl) then) =
      __$$CancelledSuccessfulImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CancelledSuccessfulImplCopyWithImpl<$Res>
    extends _$ReservationEditStateCopyWithImpl<$Res, _$CancelledSuccessfulImpl>
    implements _$$CancelledSuccessfulImplCopyWith<$Res> {
  __$$CancelledSuccessfulImplCopyWithImpl(_$CancelledSuccessfulImpl _value,
      $Res Function(_$CancelledSuccessfulImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CancelledSuccessfulImpl implements _CancelledSuccessful {
  const _$CancelledSuccessfulImpl();

  @override
  String toString() {
    return 'ReservationEditState.cancelledSuccessful()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CancelledSuccessfulImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(AppReservationEntity data) hasData,
    required TResult Function() updatedSuccessful,
    required TResult Function() cancelledSuccessful,
  }) {
    return cancelledSuccessful();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(AppReservationEntity data)? hasData,
    TResult? Function()? updatedSuccessful,
    TResult? Function()? cancelledSuccessful,
  }) {
    return cancelledSuccessful?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(AppReservationEntity data)? hasData,
    TResult Function()? updatedSuccessful,
    TResult Function()? cancelledSuccessful,
    required TResult orElse(),
  }) {
    if (cancelledSuccessful != null) {
      return cancelledSuccessful();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_HasData value) hasData,
    required TResult Function(_UpdatedSuccessful value) updatedSuccessful,
    required TResult Function(_CancelledSuccessful value) cancelledSuccessful,
  }) {
    return cancelledSuccessful(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_HasData value)? hasData,
    TResult? Function(_UpdatedSuccessful value)? updatedSuccessful,
    TResult? Function(_CancelledSuccessful value)? cancelledSuccessful,
  }) {
    return cancelledSuccessful?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_HasData value)? hasData,
    TResult Function(_UpdatedSuccessful value)? updatedSuccessful,
    TResult Function(_CancelledSuccessful value)? cancelledSuccessful,
    required TResult orElse(),
  }) {
    if (cancelledSuccessful != null) {
      return cancelledSuccessful(this);
    }
    return orElse();
  }
}

abstract class _CancelledSuccessful implements ReservationEditState {
  const factory _CancelledSuccessful() = _$CancelledSuccessfulImpl;
}
