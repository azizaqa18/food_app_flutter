import 'package:flutter/material.dart';
import 'package:food_app_flutter/models/cart_item.dart';
import 'package:food_app_flutter/screens/checkout/checkout_state.dart';
import 'package:food_app_flutter/states/overview_state.dart';
import 'package:food_app_flutter/theme/app_theme.dart';
import 'package:provider/provider.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final state = context.read<OverviewState>();

    return AppBar(
      leading: const Icon(Icons.home),
      backgroundColor: Colors.transparent,
      elevation: 0,
      actions: [
        InkWell(
          onTap: () => state.openCartView(context),
          child: Builder(builder: (context) {
            final cartItems =
                context.select<CheckoutState, List<CartItem>>((v) => v.cart);

            return Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  padding: const EdgeInsets.all(AppTheme.elementSpacing),
                  decoration: BoxDecoration(
                    color: AppTheme.black,
                    borderRadius: BorderRadius.circular(99),
                  ),
                  child: const Icon(Icons.shopping_cart_checkout_sharp),
                ),
                if (cartItems.isNotEmpty) ...[
                  Positioned(
                    right: -2,
                    child: Text(
                      cartItems.length.toString(),
                      style: Theme.of(context).textTheme.bodyText1?.copyWith(
                            color: AppTheme.red,
                            fontWeight: FontWeight.w500,
                          ),
                    ),
                  ),
                ],
              ],
            );
          }),
        ),
        const SizedBox(width: AppTheme.elementSpacing),
      ],
    );
  }
}
