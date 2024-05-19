import 'dart:async';

import 'package:course_project/domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'generated/translations.g.dart';
import 'injection.dart' as di;
import 'presentation/blocs/blocs.dart';
import 'presentation/navigation.dart';

class AppWrappersWidget extends StatelessWidget {
  final Widget child;

  const AppWrappersWidget({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) => TranslationProvider(
        child: MultiBlocProvider(
          providers: [
            BlocProvider<AuthBloc>(
              create: (context) => AuthBloc(
                usersRepository: di.locator(),
              ),
            ),
            BlocProvider<ProfileCubit>(
              create: (context) => ProfileCubit(
                usersRepository: di.locator(),
              ),
            ),
            BlocProvider<TariffsCubit>(
              create: (context) => TariffsCubit(
                tariffsRepository: di.locator(),
              ),
            ),
            BlocProvider<ReservationsCubit>(
              create: (context) => ReservationsCubit(
                reservationsRepository: di.locator(),
              ),
            ),
          ],
          child: BlocListener<AuthBloc, AuthState>(
            listener: (context, state) => state.mapOrNull(
              proceedSuccess: (state) {
                context.read<TariffsCubit>().setUser(state.id, state.role);
                context.read<ReservationsCubit>().setUser(state.id, state.role);
                unawaited(context.read<ProfileCubit>().init());
                // TODO: init blocs
                if (state.role == UserRole.admin) {
                  Navigation.toTariffs();
                } else {
                  Navigation.toReservations();
                }
                return null;
              },
              logOutSuccess: (state) {
                context.read<TariffsCubit>().onLogOut();
                context.read<ReservationsCubit>().onLogOut();
                Navigation.toSignIn();
                return null;
              },
            ),
            child: child,
          ),
        ),
      );
}
