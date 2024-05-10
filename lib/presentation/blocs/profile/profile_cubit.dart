import 'package:bloc/bloc.dart';
import 'package:course_project/domain/domain.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_cubit.freezed.dart';
part 'profile_state.dart';

class ProfileCubit extends Cubit<ProfileState> {
  final UsersRepository usersRepository;

  late AppUser _user;

  ProfileCubit({
    required this.usersRepository,
  }) : super(const ProfileState.loading());

  Future<void> init() async {
    emit(const ProfileState.loading());

    final username =
        (await SecureStorageDataSource.read(SecureStorageKeys.username))!;

    final user = await usersRepository.getUserByName(username);
    _user = user!;

    emit(ProfileState.hasData(_user));
  }

  Future<void> updateUser(AppUser user) async {
    emit(const ProfileState.loading());

    _user = user;

    emit(ProfileState.hasData(_user));
  }
}
