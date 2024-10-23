
import 'package:flutter/material.dart';

class CustomPageView extends StatelessWidget {
  const CustomPageView({
    super.key,
    required this.image,
    required this.isRotate,
    required this.title,
    required this.subtitle,
  });
  final String image;
  final bool isRotate;
  final Widget title;
  final Widget subtitle;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Transform.flip(
          flipX: isRotate,
          child: Image.asset(
            'assets/images/$image.jpg',
            height: double.infinity,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
        ),
        Container(
          color: const Color.fromARGB(87, 0, 0, 0),
        ),
        title,
        subtitle,
      ],
    );
  }
}
