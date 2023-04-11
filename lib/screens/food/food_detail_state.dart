import 'package:food_app_flutter/components/base_state.dart';
import 'package:food_app_flutter/models/cart_item.dart';
import 'package:food_app_flutter/models/food.dart';
import 'package:food_app_flutter/repositories/cart_repository.dart';
import 'package:food_app_flutter/services/get_it.dart';

class FoodDetailState extends BaseState {
  final cartRepo = locate<CartRepository>();
  Food food;
  CartItem? cartItem;

  FoodDetailState(this.food) {
    _listenToCart();
    cartRepo.cartNotifier.addListener(_listenToCart);
  }
  @override
  void dispose() {
    cartRepo.cartNotifier.removeListener(_listenToCart);
    super.dispose();
  }

  _listenToCart() {
    try {
      cartItem = cartRepo.cartNotifier.value
          .firstWhere((element) => element.foodId == food.id);
    } catch (_) {
      cartItem = null;
    }
    notifyListeners();
  }
}
