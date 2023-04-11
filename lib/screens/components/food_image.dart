import 'package:flutter/material.dart';
import 'package:food_app_flutter/screens/food/food_detail_state.dart';
import 'package:food_app_flutter/states/overview_state.dart';
import 'package:provider/provider.dart';

class DisplayFoodImage extends StatelessWidget {
  const DisplayFoodImage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final overviewState = context.read<OverviewState>();
    final state = context.watch<FoodDetailState>();
    return Column(children: [
      Container(
        height: 80,
        width: 150,
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(
            Radius.circular(40.0),
          ),
          image: DecorationImage(
            image: NetworkImage(state.food.imageUrl),
            fit: BoxFit.cover,
          ),
        ),
      ),
      const SizedBox(
        height: 12,
      ),

      // const Text(
      //   'XS Set(26pcs)  ',
      //   style: TextStyle(
      //       color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
      // ),
      // const SizedBox(
      //   height: 12,
      // ),
      ElevatedButton(
        onPressed: () {
          overviewState.addToCart(state.food);
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.teal,
          foregroundColor: Colors.white,
          shape: const StadiumBorder(),
        ),
        child: const Text('Add'),
      ),
    ]);
  }
}
