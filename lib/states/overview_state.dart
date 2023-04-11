import 'package:flutter/material.dart';
import 'package:food_app_flutter/components/base_state.dart';
import 'package:food_app_flutter/repositories/cart_repository.dart';
import 'package:food_app_flutter/repositories/food_repository.dart';
import 'package:food_app_flutter/repositories/user_repository.dart';
import 'package:food_app_flutter/screens/checkout/checkout_view.dart';
import 'package:food_app_flutter/screens/components/cupertino_model_route.dart';
import 'package:food_app_flutter/services/get_it.dart';
import 'package:food_app_flutter/services/navigation_service.dart';
import 'package:food_app_flutter/theme/app_theme.dart';
import 'package:food_app_flutter/utils/common.dart';
import '../models/food.dart';

class OverviewState extends BaseState {
  final navigationService = locate<NavigationService>();
  final userRepo = locate<UserRepository>();
  final foodRepository = locate<FoodRepository>();
  final cartRepo = locate<CartRepository>();

  PageController pageController = PageController();

  OverviewState() {
    foodRepository.getFoods();
    cartRepo.getCart(userRepo.currentUserUID!);
    navigationService.currentIndexNotifier.addListener(_currentIndexListener);
  }

  void animateToPage(int page) {
    pageController.animateToPage(page,
        duration: const Duration(milliseconds: 300), curve: Curves.easeOut);
  }

  void _currentIndexListener() {
    animateToPage(navigationService.currentIndexNotifier.value);
  }

  void addToCart(Food food, [bool isAdding = true]) async {
    await cartRepo.addOrRemoveFoodFromCart(userRepo.currentUserUID!, food,
        isAdding: isAdding);
    if (isAdding) {
      showCustomToast("${food.title} added to cart");
    } else {
      showCustomToast("${food.title} removed from cart");
    }
  }

  void addToFavorite(Food food) {
    userRepo.addFoodToFavorite(userRepo.currentUserUID!, food);
    showCustomToast("Added ${food.title} to favorite");
  }

  void removCartItem(Food food) {
    cartRepo.removeFoodFromCart(userRepo.currentUserUID!, food);
    showCustomToast("Removed ${food.title} from cart");
  }

  Future<void> openCartView(BuildContext context) async {
    await showSnapModelBottomSheet(
      context: context,
      enableDrag: true,
      useRootNavigator: true,
      elevation: 10,
      backgroundColor: AppTheme.black.withOpacity(.8),
      topRadius: const Radius.circular(40),
      builder: (_) => SizedBox(
        height: MediaQuery.of(context).size.height * 0.92,
        child: const CheckoutView(),
      ),
    );
  }
}
