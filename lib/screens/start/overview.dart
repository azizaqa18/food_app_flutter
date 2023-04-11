import 'package:flutter/material.dart';
import 'package:food_app_flutter/components/app_scaffold.dart';
import 'package:food_app_flutter/screens/account.dart';
import 'package:food_app_flutter/screens/favorite.dart';
import 'package:food_app_flutter/screens/search.dart';
import 'package:food_app_flutter/states/overview_state.dart';
import 'package:food_app_flutter/theme/app_theme.dart';
import 'package:provider/provider.dart';

import '../home/home.dart';

class Overview extends StatelessWidget {
  const Overview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      backgroundColor: AppTheme.darkBlue,
      body: PageView(
        controller: context.read<OverviewState>().pageController,
        physics: const NeverScrollableScrollPhysics(),
        children: const [
          HomePage(),
          FavoritePage(),
          SearchPage(),
          AccountPage(),
        ],
      ),
    );
  }
}
