import 'package:course_project/domain/domain.dart';
import 'package:either_dart/either.dart';

abstract class UsersRepository {
  /// return user entity if success or failure on error
  Future<Either<SignInFailure, AppUser>> signIn({
    required String username,
    required String hashedPassword,
  });

  /// return user entity if success or failure on error
  Future<Either<SignUpFailure, AppUser>> signUp({
    required String username,
    required String hashedPassword,
  });

  Future<List<AppUser>> getUsersList();

  Future<AppUser?> getUser(int id);

  /// create or update
  Future<void> updateProfile({
    required int userId,
    required AppUserProfile profile,
  });
}
