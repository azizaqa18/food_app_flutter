import 'package:flutter/material.dart';
import 'package:food_app_flutter/components/button.dart';
import 'package:food_app_flutter/constant/image_path.dart';
import 'package:food_app_flutter/screens/start/onboard_view.dart';
import 'package:food_app_flutter/theme/app_theme.dart';

import '../../../components/textfield.dart';

class ComeSignIn extends StatelessWidget {
  const ComeSignIn({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(AppTheme.cardPadding),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SizedBox(height: AppTheme.cardPadding * 4),
          Image.asset(
            ImagePath.avatar,
            fit: BoxFit.cover,
          ),
          Text(
            'Welcome back',
            style: Theme.of(context).textTheme.subtitle1,
          ),
          const SizedBox(height: AppTheme.elementSpacing),
          const AuthHeader("Flutter Fairy"),
          const SizedBox(height: AppTheme.cardPadding * 2),
          const FodaTextfield(title: "Password"),
          const SizedBox(height: AppTheme.cardPadding),
          FodaButton(
            title: "Sign In",
            onTap: () {},
          )
        ],
      ),
    );
  }
}
