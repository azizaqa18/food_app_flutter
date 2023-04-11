import 'package:flutter/material.dart';
import 'package:food_app_flutter/theme/app_theme.dart';

class NotchBar extends StatelessWidget {
  const NotchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 4,
      width: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(40),
        color: AppTheme.darkBlue,
      ),
    );
  }
}
