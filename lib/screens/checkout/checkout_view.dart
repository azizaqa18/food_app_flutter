import 'package:flutter/material.dart';
import 'package:food_app_flutter/components/notch_bar.dart';
import 'package:food_app_flutter/screens/checkout/checkout_state.dart';
import 'package:food_app_flutter/screens/checkout/cart.dart';
import 'package:food_app_flutter/screens/checkout/complete_order.dart';
import 'package:food_app_flutter/screens/checkout/confirm_order.dart';
import 'package:food_app_flutter/theme/app_theme.dart';
import 'package:provider/provider.dart';

class CheckoutView extends StatelessWidget {
  const CheckoutView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final state = context.read<CheckoutState>();
    return Scaffold(
      backgroundColor: AppTheme.black,
      body: Column(
        children: [
          const SizedBox(height: AppTheme.elementSpacing),
          const NotchBar(),
          Expanded(
            child: PageView(
              controller: state.pageController,
              onPageChanged: state.onPageChange,
              physics: const NeverScrollableScrollPhysics(),
              children: const [
                CartView(),
                ConfirmOrder(),
                OrderComplete(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
