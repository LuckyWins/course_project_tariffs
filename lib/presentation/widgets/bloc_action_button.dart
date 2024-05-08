import 'package:course_project/presentation/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'widgets.dart';

enum BlocActionButtonState {
  loading,
  idle,
}

class BlocActionButton<B extends StateStreamable<S>, S>
    extends StatelessWidget {
  final String text;
  final VoidCallback? onTap;
  final B? bloc;
  final BlocBuilderCondition<S>? buildWhen;
  final BlocActionButtonState Function(BuildContext context, S state) builder;

  const BlocActionButton(
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
      TextButton(
        style: TextButton.styleFrom(
          textStyle: AppTextStyles.body1M(context),
          // foregroundColor: AppColors.textDefault,
        ),
        onPressed: onTap,
        child: child,
      );
}
