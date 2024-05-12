part of 'user_data_cubit.dart';

@freezed
class UserDataState with _$UserDataState {
  const factory UserDataState.loading() = _Loading;
  const factory UserDataState.hasData(AppUser? data) = _HasData;
}
