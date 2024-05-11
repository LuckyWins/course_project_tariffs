import 'package:course_project/presentation/blocs/blocs.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

extension AuthBlocExtension on BuildContext {
  int get userId =>
      read<AuthBloc>().state.mapOrNull(proceedSuccess: (state) => state.id)!;
}
