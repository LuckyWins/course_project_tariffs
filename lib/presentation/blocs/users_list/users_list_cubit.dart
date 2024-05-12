import 'package:bloc/bloc.dart';
import 'package:course_project/domain/domain.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'users_list_cubit.freezed.dart';
part 'users_list_state.dart';

class UsersListCubit extends Cubit<UsersListState> {
  final UsersRepository usersRepository;

  UsersListCubit({
    required this.usersRepository,
  }) : super(const UsersListState.loading());

  Future<void> init() async {
    emit(const UsersListState.loading());

    final data = await usersRepository.getUsersList(AppUsersFilter.empty());

    emit(UsersListState.hasData(data));
  }
}
