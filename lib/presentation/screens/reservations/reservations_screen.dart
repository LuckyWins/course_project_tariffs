import 'package:course_project/domain/domain.dart';
import 'package:course_project/generated/translations.g.dart';
import 'package:course_project/presentation/blocs/blocs.dart';
import 'package:course_project/presentation/navigation.dart';
import 'package:course_project/presentation/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ReservationsScreen extends StatefulWidget {
  const ReservationsScreen({
    super.key,
  });

  @override
  State<ReservationsScreen> createState() => _ReservationsScreenState();
}

class _ReservationsScreenState extends State<ReservationsScreen> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (context.read<ReservationsCubit>().state.maybeMap(
            hasData: (_) => false,
            orElse: () => true,
          )) {
        context.read<ReservationsCubit>().init();
      }
    });
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text(context.t.screens.reservations.title),
        ),
      );

  void _onItemTap(AppReservation data) {
    if (context.isAdmin) {
      Navigation.toReservationEdit(data: data);
    } else {
      Navigation.toReservationView(data);
    }
  }
}
