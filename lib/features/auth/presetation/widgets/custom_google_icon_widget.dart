
import 'package:flutter/material.dart';

class CustomGoogleIconWidget extends StatelessWidget {
  const CustomGoogleIconWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      alignment: Alignment.center,
      height: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        border: Border.all(
          color: Colors.grey.shade200, // Outline color
          width: 2.0, // Outline width
        ),
      ),
      child: Padding(
        padding:
            const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              "assets/images/google_logo.png",
            ),
            const SizedBox(
              width: 10,
            ),
            const Text(
              'Google',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
