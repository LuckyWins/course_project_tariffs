import 'package:course_project/generated/translations.g.dart';
import 'package:flutter/material.dart';

class ReservationsScreen extends StatelessWidget {
  const ReservationsScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text(context.t.screens.reservations.title),
        ),
      );
}
