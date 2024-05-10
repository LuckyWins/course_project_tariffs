import 'package:bloc/bloc.dart';
import 'package:course_project/domain/domain.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_edit_cubit.freezed.dart';
part 'profile_edit_state.dart';

class ProfileEditCubit extends Cubit<ProfileEditState> {
  final UsersRepository usersRepository;

  late AppUser _user;

  ProfileEditCubit({
    required this.usersRepository,
  }) : super(const ProfileEditState.loading());

  Future<void> init() async {
    emit(const ProfileEditState.loading());

    final username =
        (await SecureStorageDataSource.read(SecureStorageKeys.username))!;

    final user = await usersRepository.getUserByName(username);
    _user = user!;

    emit(ProfileEditState.hasData(_user));
  }

  Future<void> updateProfile(AppUserProfile profile) async {
    emit(const ProfileEditState.loading());

    await usersRepository.updateProfile(userId: _user.id, profile: profile);
    final user = await usersRepository.getUserByName(_user.username);
    _user = user!;

    emit(ProfileEditState.updatedSuccessful(_user));
    emit(ProfileEditState.hasData(_user));
  }
}
