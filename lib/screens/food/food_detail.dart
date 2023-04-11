import 'package:flutter/material.dart';
import 'package:food_app_flutter/models/food.dart';
import 'package:food_app_flutter/screens/food/appbar.dart';
import 'package:food_app_flutter/screens/food/cart_actions.dart';
import 'package:food_app_flutter/screens/components/detail.dart';
import 'package:food_app_flutter/screens/components/food_image.dart';
import 'package:food_app_flutter/screens/food/food_detail_state.dart';
import 'package:provider/provider.dart';

class FoodDetailView extends StatelessWidget {
  const FoodDetailView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const FoodDetailAppBar(),
          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const [
                  DisplayFoodImage(),
                  SizedBox(height: 20),
                  CartActions(),
                  SizedBox(height: 20),
                  FoodDetail(),
                  SizedBox(height: 20),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class FoodDetailViewWidget extends StatelessWidget {
  final Food food;
  const FoodDetailViewWidget({Key? key, required this.food}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => FoodDetailState(food),
      child: const FoodDetailView(),
    );
  }
}
