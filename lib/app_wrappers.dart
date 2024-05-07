import 'package:flutter/material.dart';

import 'generated/translations.g.dart';

class AppWrappersWidget extends StatelessWidget {
  final Widget child;

  const AppWrappersWidget({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) => TranslationProvider(
        child: child,
      );
}
