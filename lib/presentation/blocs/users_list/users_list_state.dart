part of 'users_list_cubit.dart';

@freezed
class UsersListState with _$UsersListState {
  const factory UsersListState.loading() = _Loading;
  const factory UsersListState.hasData(
    List<AppUser> data,
  ) = _HasData;
}
