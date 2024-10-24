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
         Container(
      height: double.infinity,
      width: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/$image.jpg'),
          fit: BoxFit.cover,
        ),
        color: const Color.fromARGB(255, 101, 98, 98),
      ),
      foregroundDecoration: const BoxDecoration(
        color: Color.fromARGB(87, 0, 0, 0),
      ),
    ),
        title,
        subtitle,
      ],
    );
  }
}
