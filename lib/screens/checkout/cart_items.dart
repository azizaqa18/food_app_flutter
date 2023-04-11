import 'package:flutter/material.dart';
import 'package:food_app_flutter/screens/checkout/checkout_state.dart';
import 'package:food_app_flutter/screens/checkout/cart_item_card.dart';
import 'package:food_app_flutter/theme/app_theme.dart';
import 'package:provider/provider.dart';

class CartItemList extends StatelessWidget {
  const CartItemList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final state = context.watch<CheckoutState>();

    return Expanded(
      child: ListView.builder(
        itemCount: state.cart.length + 1,
        padding: const EdgeInsets.only(top: AppTheme.elementSpacing),
        itemBuilder: (context, index) {
          if (index == state.cart.length) {
            return Padding(
              padding: const EdgeInsets.only(top: AppTheme.cardPadding * 1.5),
              child: Column(
                children: [
                  Text(
                    "Total",
                    style: Theme.of(context).textTheme.headline4,
                  ),
                  Text(
                    "${state.cart.length} items",
                    style: Theme.of(context).textTheme.subtitle1?.copyWith(
                          color: AppTheme.grey,
                        ),
                  ),
                  Text(
                    "${state.getTotalAmount} ₼",
                    style: Theme.of(context).textTheme.headline2?.copyWith(
                          color: Colors.teal,
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                  const SizedBox(height: kToolbarHeight),
                ],
              ),
            );
          }
          return CartItemCard(
            cartItem: state.cart[index],
            food: state.cartItems[state.cart[index].foodId],
          );
        },
      ),
    );
  }
}
