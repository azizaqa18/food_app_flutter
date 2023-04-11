// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';
import 'package:food_app_flutter/constant/route_name.dart';
import 'package:food_app_flutter/models/food.dart';
import 'package:food_app_flutter/states/overview_state.dart';
import 'package:provider/provider.dart';

class FoodCard extends StatelessWidget {
  final Food food;
  const FoodCard({Key? key, required this.food}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final state = context.read<OverviewState>();
    return InkWell(
        onTap: () {
          Navigator.pushNamed(
            context,
            foodDetailPath,
            arguments: food,
          );
        },
        child: Column(children: [
          Container(
            height: 70,
            width: 150,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(
                Radius.circular(40.0),
              ),
              image: DecorationImage(
                image: NetworkImage(
                  food.imageUrl,
                ),
                fit: BoxFit.contain,
              ),
            ),
          ),
          const SizedBox(
            height: 12,
          ),
          Text(
            food.title,
            style: const TextStyle(
                color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 12,
          ),
          Text(
            "${food.price.toString()} ₼",
            style: const TextStyle(
                color: Colors.teal, fontSize: 18, fontWeight: FontWeight.bold),
          ),
          // const SizedBox(
          //   height: 12,
          // ),
          // ElevatedButton(
          //   onPressed: () {
          //     state.addToCart(food);
          //   },
          //   style: ElevatedButton.styleFrom(
          //     backgroundColor: Colors.teal,
          //     foregroundColor: Colors.white,
          //     shape: const StadiumBorder(),
          //   ),
          //   child: const Text('Add'),
          // ),
        ]));
  }
}
      // child: Column(
      //   children: [
      //     Stack(
      //       clipBehavior: Clip.none,
      //       children: [
      //         Container(
      //           height: 300,
      //           width: 300,
      //           decoration: BoxDecoration(
      //             shape: BoxShape.circle,
      //             boxShadow: [
      //               BoxShadow(
      //                 color: AppTheme.black.withOpacity(.6),
      //                 spreadRadius: 20,
      //                 blurRadius: 20,
      //                 offset: const Offset(15, 5),
      //               ),
      //             ],
      //             image: DecorationImage(
      //               image: NetworkImage(food.imageUrl),
      //               fit: BoxFit.cover,
      //             ),
      //           ),
      //         ),
      //         Positioned(
      //           left: 0,
      //           bottom: 50,
      //           child: FodaCircleButton(
      //             title: "",
      //             gradiant: const [
      //               AppTheme.orange,
      //               AppTheme.orangeDark,
      //             ],
      //             icon: const Icon(
      //               Icons.add,
      //               color: AppTheme.white,
      //               size: 30,
      //             ),
      //             onTap: () {
      //               state.addToCart(food);
      //             },
      //           ),
      //         ),
      //         Positioned(
      //           left: 50,
      //           bottom: 0,
      //           child: FodaCircleButton(
      //             title: "",
      //             gradiant: const [
      //               AppTheme.darkBlue,
      //               AppTheme.darkBlue,
      //             ],
      //             icon: const Icon(Icons.favorite_border),
      //             onTap: () {
      //               state.addToFavorite(food);
      //             },
      //           ),
      //         ),
      //         Positioned(
      //             left: -120,
      //             bottom: 100,
      //             child: SizedBox(
      //               width: 120,
      //               child: Column(
      //                 crossAxisAlignment: CrossAxisAlignment.start,
      //                 children: [
      //                   Text(
      //                     food.title,
      //                     style: Theme.of(context).textTheme.headline5,
      //                   ),
      //                   const SizedBox(height: AppTheme.elementSpacing * 0.5),
      //                   Text(
      //                     "\$ ${food.price}",
      //                     style: Theme.of(context)
      //                         .textTheme
      //                         .subtitle1
      //                         ?.copyWith(color: AppTheme.red),
      //                   ),
      //                 ],
      //               ),
      //             )),
      //       ],
      //     ),
      //   ],
      // ),
 
