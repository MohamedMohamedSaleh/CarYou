import 'package:flutter/material.dart';

class CustomDividerWidget extends StatelessWidget {
  const CustomDividerWidget({
    super.key, required this.text,
  });
  final String text;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(
          child: Divider(
            color: Color.fromARGB(255, 202, 201, 201),
            thickness: 1,
            // Customize the divider thickness
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Text(
            text,
            style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
            textAlign: TextAlign.end,
          ),
        ),
        const Expanded(
          child: Divider(
            color: Color.fromARGB(255, 202, 201, 201),
            thickness: 1,
            // Customize the divider thickness
          ),
        ),
      ],
    );
  }
}
