import 'package:isar/isar.dart';

part 'app_user.g.dart';

@collection
class AppUser {
  Id id = Isar.autoIncrement;

  @Index(unique: true)
  late String username;

  late String hashedPassword;

  AppUserProfile? profile;

  @Enumerated(EnumType.name)
  UserRole role = UserRole.user;

  DateTime registrationDate = DateTime.now();
}

/// available messengers
enum UserRole {
  admin,
  user,
}

@embedded
class AppUserProfile {
  String? realName;

  String? bio;
}
