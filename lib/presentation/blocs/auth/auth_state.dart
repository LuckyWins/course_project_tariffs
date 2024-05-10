part of 'auth_bloc.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState.initial() = _Initial;
  const factory AuthState.loading() = _Loading;
  const factory AuthState.error(Object error) = _Error;
  const factory AuthState.proceedSuccess({
    required int id,
    required UserRole role,
  }) = _ProceedSuccess;
  const factory AuthState.logOutSuccess() = _LogOutSuccess;
  const factory AuthState.noAuth() = _NoAuth;
}
