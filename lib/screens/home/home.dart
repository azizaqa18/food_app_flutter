// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'package:flutter/material.dart';
import 'package:food_app_flutter/screens/home/app_bar.dart';
import 'package:food_app_flutter/screens/home/food_card.dart';
import 'package:food_app_flutter/states/overview_state.dart';
import 'package:provider/provider.dart';
import '../../components/app_scaffold.dart';
import '../../models/food.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    final state = context.read<OverviewState>();

    return AppScaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const HomeAppBar(),
            Flexible(
              child: ValueListenableBuilder<List<Food>>(
                valueListenable: state.foodRepository.foodsNotifier,
                builder: (context, foods, _) {
                  return GridView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 20,
                      mainAxisSpacing: 20,
                    ),
                    itemCount: foods.length,
                    itemBuilder: (context, index) {
                      return FoodCard(food: foods[index]);
                    },
                  );
                  // return PageView.builder(
                  //   controller: PageController(viewportFraction: 0.8),
                  //   physics: const ClampingScrollPhysics(),
                  //   scrollDirection: Axis.horizontal,
                  //   onPageChanged: (index) {
                  //     setState(() {
                  //       currentPage = index;
                  //     });
                  //   },
                  //   itemCount: foods.length,
                  //   itemBuilder: (context, index) {
                  //     double _scaleFactor = currentPage == index ? 1 : 0.5;
                  //     Offset offset = currentPage == index
                  //         ? const Offset(100, 0)
                  //         : const Offset(220, 400);

                  //     return Transform.scale(
                  //       scale: _scaleFactor,
                  //       child: Transform.translate(
                  //         offset: offset,
                  //         child: FoodCard(food: foods[index]),
                  //       ),
                  //     );
                  //   },
                  // );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
