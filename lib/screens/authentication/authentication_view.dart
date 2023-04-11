import 'package:flutter/material.dart';
import 'package:food_app_flutter/components/app_scaffold.dart';
import 'package:food_app_flutter/constant/image_path.dart';
import 'package:food_app_flutter/screens/authentication/authentication_state.dart';
import 'package:food_app_flutter/screens/authentication/come_back.dart';
import 'package:food_app_flutter/screens/authentication/sign_in.dart';
import 'package:food_app_flutter/screens/authentication/sign_up.dart';
import 'package:provider/provider.dart';

enum AuthenticationViewState { signIn, signUp, comeBack }

class AuthenticationView extends StatelessWidget {
  final AuthenticationViewState viewState;

  const AuthenticationView({Key? key, required this.viewState})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      body: Form(
        key: context.read<AuthenticationState>().formKey,
        child: Stack(
          children: [
            if (viewState == AuthenticationViewState.signIn ||
                viewState == AuthenticationViewState.signUp)
              Positioned(
                right: -120,
                top: 10,
                child: Image.asset(
                  viewState == AuthenticationViewState.signUp
                      ? ImagePath.fries
                      : ImagePath.salad,
                  height: 300,
                ),
              ),
            Builder(builder: (context) {
              if (viewState == AuthenticationViewState.signUp) {
                return const SignUpView();
              }
              if (viewState == AuthenticationViewState.signIn) {
                return const SignInView();
              } else {
                return const ComeSignIn();
              }
            }),
          ],
        ),
      ),
    );
  }
}
