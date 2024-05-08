import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'widgets.dart';

class BlocPrimaryButton<B extends StateStreamable<S>, S>
    extends StatelessWidget {
  final String text;
  final VoidCallback? onTap;
  final B? bloc;
  final BlocBuilderCondition<S>? buildWhen;
  final BlocActionButtonState Function(BuildContext context, S state) builder;

  const BlocPrimaryButton(
    this.text, {
    super.key,
    required this.onTap,
    this.bloc,
    this.buildWhen,
    required this.builder,
  });

  @override
  Widget build(BuildContext context) => BlocBuilder<B, S>(
        bloc: bloc,
        buildWhen: buildWhen,
        builder: (context, state) {
          final buttonState = builder(context, state);
          if (buttonState == BlocActionButtonState.idle) {
            return button(
              context: context,
              onTap: onTap,
              child: Text(text),
            );
          } else if (buttonState == BlocActionButtonState.loading) {
            return button(
              context: context,
              onTap: null,
              child: const LoadingIndicator(),
            );
          }
          return const SizedBox.shrink();
        },
      );

  Widget button({
    required BuildContext context,
    required VoidCallback? onTap,
    required Widget child,
  }) =>
      PrimaryButton(
        onTap: onTap,
        child: child,
      );
}
