part of 'profile_edit_cubit.dart';

@freezed
class ProfileEditState with _$ProfileEditState {
  const factory ProfileEditState.loading() = _Loading;
  const factory ProfileEditState.hasData(AppUser data) = _HasData;
  const factory ProfileEditState.updatedSuccessful(AppUser data) =
      _UpdatedSuccessful;
}
