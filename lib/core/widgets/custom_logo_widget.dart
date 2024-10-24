import 'package:flutter/material.dart';

import '../constants/my_colors.dart';
import 'app_image.dart';

class CustomLogoWidget extends StatelessWidget {
  const CustomLogoWidget({
    super.key,
    this.isIcon = true,
    this.size = 40,
    this.fontSize = 30,
  });

  final bool? isIcon;
  final double? size, fontSize;

  @override
  Widget build(BuildContext context) {
    return Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (isIcon!)
            AppImage(
              'assets/images/logo.png',
              height: size,
              width: size,
            ),
          Text(
            'CAR',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: fontSize,
            ),
          ),
          Text(
            'YOU',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: fontSize,
              color: myPrimaryColor,
            ),
          ),
        ],);
  }
}
