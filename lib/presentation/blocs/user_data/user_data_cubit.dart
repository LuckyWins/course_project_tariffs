import 'package:bloc/bloc.dart';
import 'package:course_project/domain/domain.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_data_cubit.freezed.dart';
part 'user_data_state.dart';

class UserDataCubit extends Cubit<UserDataState> {
  final UsersRepository usersRepository;

  UserDataCubit({
    required this.usersRepository,
  }) : super(const UserDataState.loading());

  Future<void> init(int? id) async {
    emit(const UserDataState.loading());

    if (id == null) {
      emit(const UserDataState.hasData(null));
      return;
    }

    final data = await usersRepository.getUser(id);

    emit(UserDataState.hasData(data));
  }
}
