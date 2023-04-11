// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:food_app_flutter/components/app_scaffold.dart';
import 'package:food_app_flutter/components/button.dart';
import 'package:food_app_flutter/constant/route_name.dart';
import 'package:food_app_flutter/repositories/user_repository.dart';
import 'package:food_app_flutter/screens/authentication/authentication_view.dart';
import 'package:food_app_flutter/services/get_it.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final userRepo = locate<UserRepository>();

    return AppScaffold(
      // backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.all(30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              userRepo.currentUserNotifier.value!.email,
              style: Theme.of(context).textTheme.headline5,
            ),
            Center(
              child: FodaButton(
                onTap: () async {
                  await userRepo.logout();
                  Navigator.of(context).pushNamedAndRemoveUntil(
                    authPath,
                    (route) => false,
                    arguments: AuthenticationViewState.signIn,
                  );
                },
                title: 'Logout',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
