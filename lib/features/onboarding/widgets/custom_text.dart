
import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  const CustomText({
    super.key,
    required this.top,
    this.title,
    this.subtitle,
    required this.isTitle,
  });
  final double top;
  final String? title, subtitle;
  final bool isTitle;
  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: top,
      left: 20,
      child: SizedBox(
        width: MediaQuery.of(context).size.width - 40,
        child: Text(
          isTitle ? title! : subtitle!,
          style: isTitle
              ? const TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.bold)
              : const TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
        ),
      ),
    );
  }
}
