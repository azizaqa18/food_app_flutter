import 'package:flutter/material.dart';
import 'package:food_app_flutter/components/app_scaffold.dart';
import 'package:food_app_flutter/components/button.dart';
import 'package:food_app_flutter/constant/image_path.dart';
import 'package:food_app_flutter/constant/route_name.dart';
import 'package:food_app_flutter/screens/authentication/authentication_view.dart';
import 'package:food_app_flutter/theme/app_theme.dart';

class OnboardView extends StatelessWidget {
  const OnboardView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    ImagePath.discuss,
                    height: 400,
                  ),
                  const SizedBox(height: AppTheme.cardPadding),
                  SizedBox(
                    width: AppTheme.size(context).width * 0.5,
                    child: Column(
                      children: [
                        const AuthHeader("Welcome to Takeshi Sumgait"),
                        const SizedBox(height: 40),
                        FodaButton(
                            title: "Sign In",
                            onTap: () {
                              Navigator.of(context).pushNamed(authPath,
                                  arguments: AuthenticationViewState.signIn);
                            }),
                        const SizedBox(height: 20),
                        FodaButton(
                          title: "Sign Up",
                          gradiant: const [AppTheme.darkBlue],
                          onTap: () {
                            Navigator.of(context).pushNamed(authPath,
                                arguments: AuthenticationViewState.signUp);
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class AuthHeader extends StatelessWidget {
  final String title;
  const AuthHeader(
    this.title, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      textAlign: TextAlign.center,
      style: Theme.of(context).textTheme.headline1?.copyWith(
            fontWeight: FontWeight.w800,
            color: AppTheme.orange,
          ),
    );
  }
}
