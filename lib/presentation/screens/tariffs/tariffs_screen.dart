import 'package:course_project/generated/translations.g.dart';
import 'package:flutter/material.dart';

class TariffsScreen extends StatelessWidget {
  const TariffsScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text(context.t.screens.tariffs.title),
        ),
      );
}
