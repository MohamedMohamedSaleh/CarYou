
import 'package:flutter/material.dart';

import '../../../../core/widgets/custom_logo_widget.dart';

class CustomIntroductionWidget extends StatelessWidget {
  const CustomIntroductionWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SizedBox(
          height: 50,
        ),
        Align(
          alignment: Alignment.center,
          child: CustomLogoWidget(),
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          'Welcome Back🤝',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 26,
          ),
        ),
        SizedBox(
          height: 16,
        ),
      ],
    );
  }
}
