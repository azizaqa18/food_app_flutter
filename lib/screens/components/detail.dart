import 'package:flutter/material.dart';
import 'package:food_app_flutter/screens/food/food_detail_state.dart';
import 'package:food_app_flutter/theme/app_theme.dart';
import 'package:provider/provider.dart';

class FoodDetail extends StatelessWidget {
  const FoodDetail({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final state = context.watch<FoodDetailState>();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              state.food.title,
              style: Theme.of(context).textTheme.headline2,
            ),
            Text(
              " ${state.food.price} ₼",
              style: Theme.of(context).textTheme.headline4?.copyWith(
                    color: Colors.teal,
                    fontWeight: FontWeight.w600,
                  ),
            ),
          ],
        ),
        const SizedBox(height: AppTheme.cardPadding),
        Text(
          "DETAILS",
          style: Theme.of(context)
              .textTheme
              .subtitle1
              ?.copyWith(fontWeight: FontWeight.w600, color: Colors.teal),
        ),
        const SizedBox(height: AppTheme.elementSpacing),
        Text(state.food.description, style: const TextStyle(fontSize: 21)),
        const SizedBox(height: AppTheme.cardPadding),
        // Text(
        //   "INGREDIENT",
        //   style: Theme.of(context).textTheme.subtitle1?.copyWith(
        //         fontWeight: FontWeight.w600,
        //       ),
        // ),
      ],
    );
  }
}
