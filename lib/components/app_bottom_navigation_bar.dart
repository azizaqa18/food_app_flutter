import 'package:flutter/material.dart';
import 'package:food_app_flutter/services/navigation_service.dart';
import 'package:food_app_flutter/theme/app_theme.dart';

class AppBottomNavigationBar extends StatelessWidget {
  const AppBottomNavigationBar({
    Key? key,
    required this.navigationService,
  }) : super(key: key);

  final NavigationService navigationService;

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<int>(
        valueListenable: navigationService.currentIndexNotifier,
        builder: (context, index, _) {
          return BottomNavigationBar(
            currentIndex: index,
            onTap: (index) {
              navigationService.updateIndex(index);
            },
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                activeIcon: Icon(Icons.home, color: AppTheme.orange),
                label: "",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.favorite_border),
                activeIcon: Icon(Icons.favorite_border, color: AppTheme.orange),
                label: "",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.search),
                activeIcon: Icon(Icons.search, color: AppTheme.orange),
                label: "",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.account_circle_outlined),
                activeIcon:
                    Icon(Icons.account_circle_outlined, color: AppTheme.orange),
                label: "",
              ),
            ],
            elevation: 0,
            selectedFontSize: 11,
            unselectedFontSize: 11,
            type: BottomNavigationBarType.fixed,
            backgroundColor: Colors.transparent,
            unselectedLabelStyle: Theme.of(context).textTheme.caption,
            selectedLabelStyle: Theme.of(context)
                .textTheme
                .caption
                ?.copyWith(fontWeight: FontWeight.w700),
            showSelectedLabels: true,
            showUnselectedLabels: true,
          );
        });
  }
}
