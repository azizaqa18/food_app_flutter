import 'package:flutter/material.dart';
import 'package:food_app_flutter/screens/authentication/authentication_state.dart';
import 'package:food_app_flutter/screens/checkout/checkout_state.dart';
import 'package:food_app_flutter/states/overview_state.dart';
import 'package:food_app_flutter/theme/app_theme.dart';
import 'package:food_app_flutter/wrapper.dart';
import 'package:provider/provider.dart';

class FodaApp extends StatelessWidget {
  const FodaApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => AuthenticationState()),
        ChangeNotifierProvider(create: (_) => OverviewState()),
        ChangeNotifierProvider(
          create: (_) => CheckoutState(),
          lazy: true,
        )
      ],
      child: MaterialApp(
        theme: AppTheme.theme,
        home: const Wrapper(),
      ),
    );
  }
}
