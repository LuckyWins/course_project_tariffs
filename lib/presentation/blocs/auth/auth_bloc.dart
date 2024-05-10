import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:course_project/domain/domain.dart';
import 'package:course_project/presentation/utils/utils.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_bloc.freezed.dart';
part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final UsersRepository usersRepository;

  AuthBloc({
    required this.usersRepository,
  }) : super(const AuthState.loading()) {
    on<AuthEvent>((event, emit) async {
      await event.map(
        checkCredentials: (event) async {
          emit(const AuthState.loading());

          final username =
              await SecureStorageDataSource.read(SecureStorageKeys.username);
          final accessToken =
              await SecureStorageDataSource.read(SecureStorageKeys.accessToken);

          if (username != null && accessToken != null) {
            add(AuthEvent.signInFromToken(
              username: username,
              token: accessToken,
            ));
          } else {
            emit(const AuthState.noAuth());
            emit(const AuthState.initial());
          }
        },
        signIn: (event) async {
          emit(const AuthState.loading());

          final response = await usersRepository.signIn(
            username: event.username,
            hashedPassword: event.password.toSha256(),
          );

          await response.fold(
            (failure) {
              emit(AuthState.error(failure));
            },
            (user) async {
              await _writeData(
                username: user.username,
                accessToken: user.hashedPassword,
              );
              emit(AuthState.proceedSuccess(
                id: user.id,
                role: user.role,
              ));
            },
          );
        },
        signInFromToken: (event) async {
          emit(const AuthState.loading());

          final user = await usersRepository.getUserByName(event.username);

          if (user != null) {
            emit(AuthState.proceedSuccess(
              id: user.id,
              role: user.role,
            ));
          } else {
            emit(const AuthState.noAuth());
          }
        },
        logOut: (event) async {
          emit(const AuthState.loading());

          await SecureStorageDataSource.write(SecureStorageKeys.username, null);
          await SecureStorageDataSource.write(
              SecureStorageKeys.accessToken, null);

          emit(const AuthState.logOutSuccess());

          emit(const AuthState.initial());
        },
        signUp: (event) async {
          emit(const AuthState.loading());

          final response = await usersRepository.signUp(
            username: event.username,
            hashedPassword: event.password.toSha256(),
          );

          await response.fold(
            (failure) {
              emit(AuthState.error(failure));
            },
            (user) async {
              await _writeData(
                username: user.username,
                accessToken: user.hashedPassword,
              );
              emit(AuthState.proceedSuccess(
                id: user.id,
                role: user.role,
              ));
            },
          );
        },
      );
    });
  }

  Future<void> _writeData({
    required String username,
    required String accessToken,
  }) async {
    await SecureStorageDataSource.write(SecureStorageKeys.username, username);
    await SecureStorageDataSource.write(
        SecureStorageKeys.accessToken, accessToken);
    return Future.value();
  }
}
