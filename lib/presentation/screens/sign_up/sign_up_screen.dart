import 'package:course_project/generated/translations.g.dart';
import 'package:course_project/presentation/blocs/blocs.dart';
import 'package:course_project/presentation/navigation.dart';
import 'package:course_project/presentation/theme/theme.dart';
import 'package:course_project/presentation/utils/utils.dart';
import 'package:course_project/presentation/widgets/widgets.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({
    super.key,
  });

  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final _authFormKey = GlobalKey<FormState>();

  final _emailController = TextEditingController(text: 'notadmin');
  final _passwordController = TextEditingController(text: '123456');

  final FocusNode _emailFocus = FocusNode();
  final FocusNode _passwordFocus = FocusNode();

  late String _username;
  late String _password;

  @override
  void dispose() {
    _passwordController.dispose();
    _emailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => BlocListener<AuthBloc, AuthState>(
        listener: (context, state) => state.mapOrNull(
          error: (state) {
            RequestUtil.catchNetworkError(
              context: context,
              obj: state.error,
            );
            return null;
          },
        ),
        child: DismissOutside(
          child: Scaffold(
            backgroundColor: context.colors.surface,
            appBar: AppBar(
              title: Text(context.t.screens.signUp.title),
            ),
            body: Column(
              children: [
                Expanded(
                  child: FullScreen(
                    bottomSafe: false,
                    child: Padding(
                      padding: const EdgeInsets.all(24),
                      child: Form(
                        key: _authFormKey,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            LoginField(
                              label: context.t.widgets.loginField.label,
                              controller: _emailController,
                              focusNode: _emailFocus,
                              onFieldSubmitted: (_) {
                                _emailFocus.unfocus();
                                FocusScope.of(context)
                                    .requestFocus(_passwordFocus);
                              },
                              onSaved: (value) {
                                _username = value;
                              },
                            ),
                            const SizedBox(height: 20),
                            PasswordField(
                              controller: _passwordController,
                              textInputAction: TextInputAction.done,
                              label: context.t.widgets.passwordField.label,
                              focusNode: _passwordFocus,
                              autovalidateMode: null,
                              onFieldSubmitted: (_) {
                                _passwordFocus.unfocus();
                              },
                              onSaved: (value) {
                                _password = value;
                              },
                            ),
                            const SizedBox(height: 24),
                            Text.rich(
                              TextSpan(
                                text:
                                    '${context.t.screens.signUp.signInLabel.text} ',
                                children: [
                                  TextSpan(
                                    text: context
                                        .t.screens.signUp.signInLabel.button,
                                    style: AppTextStyles.body1Link(context)
                                        .copyWith(
                                      color: context.colors.primary,
                                    ),
                                    recognizer: TapGestureRecognizer()
                                      ..onTap = _onSignInTap,
                                  ),
                                ],
                              ),
                              style: AppTextStyles.body1(context),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                AppBottomButtonWrapper(
                  padding: const EdgeInsets.only(
                    left: 24,
                    right: 24,
                    bottom: 32,
                    top: 12,
                  ),
                  child: BlocPrimaryButton<AuthBloc, AuthState>(
                    context.t.screens.signUp.proceedButton,
                    onTap: _onAuthTap,
                    builder: (context, state) => state.maybeMap(
                      loading: (state) => BlocActionButtonState.loading,
                      orElse: () => BlocActionButtonState.idle,
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      );

  void _onAuthTap() {
    AppActions.hideKeyboard();
    // _authSuccess();
    if (_authFormKey.currentState?.validate() ?? false) {
      _authFormKey.currentState?.save();

      context.read<AuthBloc>().add(AuthEvent.signUp(
            username: _username,
            password: _password,
          ));
    }
  }

  void _onSignInTap() {
    Navigation.toSignIn();
  }
}
