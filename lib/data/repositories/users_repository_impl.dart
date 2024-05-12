import 'package:course_project/domain/domain.dart';
import 'package:dartx/dartx.dart';
import 'package:either_dart/either.dart';
import 'package:isar/isar.dart';

class UsersRepositoryImpl extends UsersRepository {
  final Isar db;

  UsersRepositoryImpl({
    required this.db,
  });

  /// return user entity if success or failure on error
  @override
  Future<Either<SignInFailure, AppUser>> signIn({
    required String username,
    required String hashedPassword,
  }) async {
    final user =
        await db.appUsers.where().usernameEqualTo(username).build().findFirst();
    if (user == null) {
      return Left(SignInFailure.userNotFound());
    }
    if (user.hashedPassword != hashedPassword) {
      return Left(SignInFailure.wrongPassword());
    }
    return Right(user);
  }

  /// return user entity if success or failure on error
  @override
  Future<Either<SignUpFailure, AppUser>> signUp({
    required String username,
    required String hashedPassword,
  }) async {
    final user =
        await db.appUsers.where().usernameEqualTo(username).build().findFirst();
    if (user != null) {
      return Left(SignUpFailure.userAlreadyRegistered());
    }
    final newUser = AppUser()
      ..username = username
      ..hashedPassword = hashedPassword;
    await db.writeTxn(() async {
      await db.appUsers.put(newUser);
    });
    return Right(newUser);
  }

  @override
  Future<List<AppUser>> getUsersList(AppUsersFilter filter) =>
      db.appUsers.buildQuery<AppUser>(
        filter: FilterGroup.and([
          if (filter.usernameQuery.isNotNullOrBlank)
            FilterCondition.contains(
              property: 'username',
              value: filter.usernameQuery!,
              caseSensitive: false,
            ),
          if (filter.registrationDate != null)
            FilterCondition.equalTo(
              property: 'registrationDate',
              value: filter.registrationDate,
            ),
          const FilterCondition.equalTo(
            property: 'role',
            value: UserRole.user,
          ),
        ]),
        sortBy: [
          SortProperty(
            property: filter.sort.name,
            sort: filter.asc ? Sort.asc : Sort.desc,
          )
        ],
      ).findAll();

  @override
  Future<AppUser?> getUser(int id) =>
      db.appUsers.filter().idEqualTo(id).findFirst();

  @override
  Future<AppUser?> getUserByName(String username) =>
      db.appUsers.filter().usernameEqualTo(username).findFirst();

  @override
  Future<void> updateProfile({
    required int userId,
    required AppUserProfile profile,
  }) async {
    final user = await getUser(userId);
    if (user == null) return;
    await db.writeTxn(() async {
      await db.appUsers.put(user..profile = profile);
    });
    return;
  }
}
