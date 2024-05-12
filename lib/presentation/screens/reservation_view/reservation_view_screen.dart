import 'package:course_project/generated/translations.g.dart';
import 'package:flutter/material.dart';

class ReservationViewScreen extends StatefulWidget {
  final int id;

  const ReservationViewScreen({
    super.key,
    required this.id,
  });

  @override
  State<ReservationViewScreen> createState() => _ReservationViewScreenState();
}

class _ReservationViewScreenState extends State<ReservationViewScreen> {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text(
            context.t.screens.reservationView.title(id: widget.id),
          ),
        ),
      );
}
