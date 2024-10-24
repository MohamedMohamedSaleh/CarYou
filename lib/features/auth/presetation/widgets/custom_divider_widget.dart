
import 'package:flutter/material.dart';

class CustomDividerWidget extends StatelessWidget {
  const CustomDividerWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          child: Divider(
            color: Color.fromARGB(255, 202, 201, 201),
            thickness: 1,
            // Customize the divider thickness
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Text(
            "Or Login With",
            style: TextStyle(
                fontSize: 15, fontWeight: FontWeight.w400),
            textAlign: TextAlign.end,
          ),
        ),
        Expanded(
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
