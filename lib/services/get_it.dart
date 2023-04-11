import 'package:food_app_flutter/repositories/cart_repository.dart';
import 'package:food_app_flutter/repositories/order_repository.dart';
import 'package:food_app_flutter/repositories/user_repository.dart';
import 'package:food_app_flutter/services/navigation_service.dart';
import 'package:get_it/get_it.dart';

import '../repositories/food_repository.dart';

class GetItService {
  static final getIt = GetIt.instance;
  static initializeService() {
    getIt.registerSingleton<UserRepository>(UserRepository());
    getIt.registerSingleton<NavigationService>(NavigationService());
    getIt.registerSingleton<FoodRepository>(FoodRepository());
    getIt.registerSingleton<CartRepository>(CartRepository());
    getIt.registerSingleton<OrderRepository>(OrderRepository());
  }
}

T locate<T extends Object>() {
  return GetItService.getIt<T>();
}
