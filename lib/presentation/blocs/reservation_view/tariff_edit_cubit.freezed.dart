// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tariff_edit_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TariffEditState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(AppTariffEntity data) hasData,
    required TResult Function() updatedSuccessful,
    required TResult Function() deletedSuccessful,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(AppTariffEntity data)? hasData,
    TResult? Function()? updatedSuccessful,
    TResult? Function()? deletedSuccessful,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(AppTariffEntity data)? hasData,
    TResult Function()? updatedSuccessful,
    TResult Function()? deletedSuccessful,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_HasData value) hasData,
    required TResult Function(_UpdatedSuccessful value) updatedSuccessful,
    required TResult Function(_DeletedSuccessful value) deletedSuccessful,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_HasData value)? hasData,
    TResult? Function(_UpdatedSuccessful value)? updatedSuccessful,
    TResult? Function(_DeletedSuccessful value)? deletedSuccessful,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_HasData value)? hasData,
    TResult Function(_UpdatedSuccessful value)? updatedSuccessful,
    TResult Function(_DeletedSuccessful value)? deletedSuccessful,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TariffEditStateCopyWith<$Res> {
  factory $TariffEditStateCopyWith(
          TariffEditState value, $Res Function(TariffEditState) then) =
      _$TariffEditStateCopyWithImpl<$Res, TariffEditState>;
}

/// @nodoc
class _$TariffEditStateCopyWithImpl<$Res, $Val extends TariffEditState>
    implements $TariffEditStateCopyWith<$Res> {
  _$TariffEditStateCopyWithImpl(this._value, this._then);

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
    extends _$TariffEditStateCopyWithImpl<$Res, _$LoadingImpl>
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
    return 'TariffEditState.loading()';
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
    required TResult Function(AppTariffEntity data) hasData,
    required TResult Function() updatedSuccessful,
    required TResult Function() deletedSuccessful,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(AppTariffEntity data)? hasData,
    TResult? Function()? updatedSuccessful,
    TResult? Function()? deletedSuccessful,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(AppTariffEntity data)? hasData,
    TResult Function()? updatedSuccessful,
    TResult Function()? deletedSuccessful,
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
    required TResult Function(_DeletedSuccessful value) deletedSuccessful,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_HasData value)? hasData,
    TResult? Function(_UpdatedSuccessful value)? updatedSuccessful,
    TResult? Function(_DeletedSuccessful value)? deletedSuccessful,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_HasData value)? hasData,
    TResult Function(_UpdatedSuccessful value)? updatedSuccessful,
    TResult Function(_DeletedSuccessful value)? deletedSuccessful,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements TariffEditState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$HasDataImplCopyWith<$Res> {
  factory _$$HasDataImplCopyWith(
          _$HasDataImpl value, $Res Function(_$HasDataImpl) then) =
      __$$HasDataImplCopyWithImpl<$Res>;
  @useResult
  $Res call({AppTariffEntity data});

  $AppTariffEntityCopyWith<$Res> get data;
}

/// @nodoc
class __$$HasDataImplCopyWithImpl<$Res>
    extends _$TariffEditStateCopyWithImpl<$Res, _$HasDataImpl>
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
              as AppTariffEntity,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $AppTariffEntityCopyWith<$Res> get data {
    return $AppTariffEntityCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc

class _$HasDataImpl implements _HasData {
  const _$HasDataImpl(this.data);

  @override
  final AppTariffEntity data;

  @override
  String toString() {
    return 'TariffEditState.hasData(data: $data)';
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
    required TResult Function(AppTariffEntity data) hasData,
    required TResult Function() updatedSuccessful,
    required TResult Function() deletedSuccessful,
  }) {
    return hasData(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(AppTariffEntity data)? hasData,
    TResult? Function()? updatedSuccessful,
    TResult? Function()? deletedSuccessful,
  }) {
    return hasData?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(AppTariffEntity data)? hasData,
    TResult Function()? updatedSuccessful,
    TResult Function()? deletedSuccessful,
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
    required TResult Function(_DeletedSuccessful value) deletedSuccessful,
  }) {
    return hasData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_HasData value)? hasData,
    TResult? Function(_UpdatedSuccessful value)? updatedSuccessful,
    TResult? Function(_DeletedSuccessful value)? deletedSuccessful,
  }) {
    return hasData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_HasData value)? hasData,
    TResult Function(_UpdatedSuccessful value)? updatedSuccessful,
    TResult Function(_DeletedSuccessful value)? deletedSuccessful,
    required TResult orElse(),
  }) {
    if (hasData != null) {
      return hasData(this);
    }
    return orElse();
  }
}

abstract class _HasData implements TariffEditState {
  const factory _HasData(final AppTariffEntity data) = _$HasDataImpl;

  AppTariffEntity get data;
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
    extends _$TariffEditStateCopyWithImpl<$Res, _$UpdatedSuccessfulImpl>
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
    return 'TariffEditState.updatedSuccessful()';
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
    required TResult Function(AppTariffEntity data) hasData,
    required TResult Function() updatedSuccessful,
    required TResult Function() deletedSuccessful,
  }) {
    return updatedSuccessful();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(AppTariffEntity data)? hasData,
    TResult? Function()? updatedSuccessful,
    TResult? Function()? deletedSuccessful,
  }) {
    return updatedSuccessful?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(AppTariffEntity data)? hasData,
    TResult Function()? updatedSuccessful,
    TResult Function()? deletedSuccessful,
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
    required TResult Function(_DeletedSuccessful value) deletedSuccessful,
  }) {
    return updatedSuccessful(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_HasData value)? hasData,
    TResult? Function(_UpdatedSuccessful value)? updatedSuccessful,
    TResult? Function(_DeletedSuccessful value)? deletedSuccessful,
  }) {
    return updatedSuccessful?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_HasData value)? hasData,
    TResult Function(_UpdatedSuccessful value)? updatedSuccessful,
    TResult Function(_DeletedSuccessful value)? deletedSuccessful,
    required TResult orElse(),
  }) {
    if (updatedSuccessful != null) {
      return updatedSuccessful(this);
    }
    return orElse();
  }
}

abstract class _UpdatedSuccessful implements TariffEditState {
  const factory _UpdatedSuccessful() = _$UpdatedSuccessfulImpl;
}

/// @nodoc
abstract class _$$DeletedSuccessfulImplCopyWith<$Res> {
  factory _$$DeletedSuccessfulImplCopyWith(_$DeletedSuccessfulImpl value,
          $Res Function(_$DeletedSuccessfulImpl) then) =
      __$$DeletedSuccessfulImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DeletedSuccessfulImplCopyWithImpl<$Res>
    extends _$TariffEditStateCopyWithImpl<$Res, _$DeletedSuccessfulImpl>
    implements _$$DeletedSuccessfulImplCopyWith<$Res> {
  __$$DeletedSuccessfulImplCopyWithImpl(_$DeletedSuccessfulImpl _value,
      $Res Function(_$DeletedSuccessfulImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$DeletedSuccessfulImpl implements _DeletedSuccessful {
  const _$DeletedSuccessfulImpl();

  @override
  String toString() {
    return 'TariffEditState.deletedSuccessful()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$DeletedSuccessfulImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(AppTariffEntity data) hasData,
    required TResult Function() updatedSuccessful,
    required TResult Function() deletedSuccessful,
  }) {
    return deletedSuccessful();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(AppTariffEntity data)? hasData,
    TResult? Function()? updatedSuccessful,
    TResult? Function()? deletedSuccessful,
  }) {
    return deletedSuccessful?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(AppTariffEntity data)? hasData,
    TResult Function()? updatedSuccessful,
    TResult Function()? deletedSuccessful,
    required TResult orElse(),
  }) {
    if (deletedSuccessful != null) {
      return deletedSuccessful();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_HasData value) hasData,
    required TResult Function(_UpdatedSuccessful value) updatedSuccessful,
    required TResult Function(_DeletedSuccessful value) deletedSuccessful,
  }) {
    return deletedSuccessful(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_HasData value)? hasData,
    TResult? Function(_UpdatedSuccessful value)? updatedSuccessful,
    TResult? Function(_DeletedSuccessful value)? deletedSuccessful,
  }) {
    return deletedSuccessful?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_HasData value)? hasData,
    TResult Function(_UpdatedSuccessful value)? updatedSuccessful,
    TResult Function(_DeletedSuccessful value)? deletedSuccessful,
    required TResult orElse(),
  }) {
    if (deletedSuccessful != null) {
      return deletedSuccessful(this);
    }
    return orElse();
  }
}

abstract class _DeletedSuccessful implements TariffEditState {
  const factory _DeletedSuccessful() = _$DeletedSuccessfulImpl;
}
