import 'package:flutter/material.dart';
import 'package:food_app_flutter/components/button.dart';
import 'package:food_app_flutter/screens/checkout/checkout_state.dart';
import 'package:food_app_flutter/screens/checkout/cart_items.dart';
import 'package:food_app_flutter/theme/app_theme.dart';
import 'package:food_app_flutter/utils/common.dart';
import 'package:provider/provider.dart';

class CartView extends StatelessWidget {
  const CartView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final state = context.watch<CheckoutState>();
    fodaPrint(state.cartItems);
    return Column(
      children: [
        const SizedBox(height: AppTheme.elementSpacing),
        Text(
          "Your Order",
          style: Theme.of(context).textTheme.headline2?.copyWith(
                color: AppTheme.orange,
              ),
        ),
        if (state.cart.isEmpty) ...[
          const Spacer(),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(
                Icons.shopping_basket_outlined,
                size: 100,
                color: AppTheme.white,
              ),
              const SizedBox(height: AppTheme.cardPadding),
              Text(
                "Cart is Empty",
                style: Theme.of(context).textTheme.headline6,
              ),
            ],
          ),
          const Spacer(),
        ] else ...[
          const CartItemList(),
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: AppTheme.cardPadding),
            child: FodaButton(
              title: 'Confirm Order',
              state: state.isLoading ? ButtonState.loading : ButtonState.idle,
              gradiant: const [
                AppTheme.orange,
                AppTheme.red,
              ],
              onTap: () {
                state.animateToPage(confirm_order);
              },
            ),
          ),
          const SizedBox(height: kToolbarHeight),
        ],
      ],
    );
  }
}
