part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.checkCredentials() = _CheckCredentials;
  const factory AuthEvent.signIn({
    required String username,
    required String password,
  }) = _SignIn;
  const factory AuthEvent.signInFromToken({
    required String username,
    required String token,
  }) = _SignInFromToken;
  const factory AuthEvent.logOut() = _LogOut;
  const factory AuthEvent.signUp({
    required String username,
    required String password,
  }) = _SignUp;
}
