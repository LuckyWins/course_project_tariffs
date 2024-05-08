import 'package:course_project/generated/translations.g.dart';
import 'package:course_project/presentation/blocs/blocs.dart';
import 'package:course_project/presentation/theme/theme.dart';
import 'package:course_project/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({
    super.key,
  });

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    _checkCredentials();
    super.initState();
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        backgroundColor: const Color(0xff2F7DFA),
        body: FullScreen(
          bottomSafe: false,
          child: _loadingWidget,
        ),
      );

  Widget get _loadingWidget => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const LoadingIndicator(
              color: Colors.white,
            ),
            const SizedBox(height: 16),
            Text(
              context.t.screens.splash.loadingMessage,
              style: AppTextStyles.body1(context).copyWith(color: Colors.white),
              textAlign: TextAlign.center,
            )
          ],
        ),
      );

  void _checkCredentials() {
    context.read<AuthBloc>().add(const AuthEvent.checkCredentials());
  }
}
