import 'package:flutter/material.dart';
import 'package:food_app_flutter/components/button.dart';
import 'package:food_app_flutter/screens/checkout/checkout_state.dart';
import 'package:food_app_flutter/screens/checkout/cart_summery.dart';
import 'package:food_app_flutter/screens/checkout/payment_method.dart';
import 'package:food_app_flutter/theme/app_theme.dart';
import 'package:provider/provider.dart';

class ConfirmOrder extends StatelessWidget {
  const ConfirmOrder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final state = context.watch<CheckoutState>();
    return Column(
      children: [
        const SizedBox(height: AppTheme.elementSpacing),
        Text(
          "Confirm Order",
          style: Theme.of(context).textTheme.headline2?.copyWith(
                color: AppTheme.orange,
              ),
        ),
        Expanded(
          child: SingleChildScrollView(
            padding:
                const EdgeInsets.symmetric(horizontal: AppTheme.cardPadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                SizedBox(height: AppTheme.cardPadding),
                CartSummery(),
                PaymentMethod(),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: AppTheme.cardPadding),
          child: FodaButton(
            state: state.isLoading ? ButtonState.loading : ButtonState.idle,
            title: "Confirmation",
            gradiant: const [
              AppTheme.orange,
              AppTheme.red,
            ],
            onTap: context.read<CheckoutState>().placeOrder,
          ),
        ),
        const SizedBox(height: kToolbarHeight),
      ],
    );
  }
}
