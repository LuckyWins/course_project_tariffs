import 'package:equatable/equatable.dart';

abstract class Failure extends Equatable {
  final String message;
  const Failure(this.message);

  @override
  List<Object> get props => [message];
}

class SignInFailure extends Failure {
  final SignInFailureType type;

  const SignInFailure(
    super.message,
    this.type,
  );

  factory SignInFailure.userNotFound() => const SignInFailure(
        'User not found',
        SignInFailureType.userNotFound,
      );

  factory SignInFailure.wrongPassword() => const SignInFailure(
        'Wrong password',
        SignInFailureType.wrongPassword,
      );
}

enum SignInFailureType {
  userNotFound,
  wrongPassword,
}

class SignUpFailure extends Failure {
  final SignUpFailureType type;

  const SignUpFailure(
    super.message,
    this.type,
  );

  factory SignUpFailure.userAlreadyRegistered() => const SignUpFailure(
        'User already registered',
        SignUpFailureType.userAlreadyRegistered,
      );
}

enum SignUpFailureType {
  userAlreadyRegistered,
}
