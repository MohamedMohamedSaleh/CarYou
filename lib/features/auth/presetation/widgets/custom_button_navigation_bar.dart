import 'package:car_rental/core/constants/my_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  const CustomBottomNavigationBar({
    super.key,
    required this.text,
    required this.buttonText,
    this.paddingBottom = 40,
    required this.onPress,
  });
  final String text;
  final String buttonText;
  final double paddingBottom;
  final VoidCallback onPress;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        bottom: paddingBottom,
        top: 4,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FittedBox(
                child: Text(
                  text,
                  style: const TextStyle(
                    fontSize: 15,
                    // color: Theme.of(context).primaryColor,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ),
              GestureDetector(
                onTap: onPress,
                child: Text(
                  buttonText,
                  style: const TextStyle(
                    fontSize: 15,
                    color: myPrimaryColor,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
