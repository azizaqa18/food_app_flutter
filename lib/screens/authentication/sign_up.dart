// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:food_app_flutter/components/button.dart';
import 'package:food_app_flutter/screens/authentication/authentication_state.dart';
import 'package:food_app_flutter/screens/authentication/authentication_view.dart';
import 'package:food_app_flutter/screens/start/onboard_view.dart';
import 'package:food_app_flutter/theme/app_theme.dart';
import 'package:provider/provider.dart';

import '../../../components/textfield.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final state = context.watch<AuthenticationState>();
    return Padding(
      padding: const EdgeInsets.all(AppTheme.cardPadding),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const AuthHeader("Register"),
            const SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: AppTheme.cardPadding * 2),
              child: FodaButton(
                state: state.isLoadingGoogle
                    ? ButtonState.loading
                    : ButtonState.idle,
                title: "Sign In With Google",
                gradiant: const [
                  AppTheme.orange,
                  AppTheme.red,
                ],
                leadingIcon: const Icon(
                  Icons.g_translate_outlined,
                  color: AppTheme.white,
                ),
                onTap: state.googleSingin,
              ),
            ),
            const SizedBox(height: AppTheme.cardPadding),
            Text(
              "Or with Email",
              style: Theme.of(context)
                  .textTheme
                  .bodyText2
                  ?.copyWith(color: AppTheme.grey),
            ),
            const SizedBox(height: 10),
            FodaTextfield(
              title: "Your Name",
              controller: state.nameController,
            ),
            const SizedBox(height: AppTheme.elementSpacing),
            FodaTextfield(
              title: "Email",
              controller: state.emailController,
            ),
            const SizedBox(height: AppTheme.elementSpacing),
            FodaTextfield(
              title: "Password",
              controller: state.passwordController,
            ),
            const SizedBox(height: AppTheme.cardPadding),
            FodaButton(
              title: "Register",
              state: state.isLoading ? ButtonState.loading : ButtonState.idle,
              onTap: state.registerUser,
            ),
            const SizedBox(height: AppTheme.cardPadding * 2),
          ],
        ),
      ),
    );
  }
}
