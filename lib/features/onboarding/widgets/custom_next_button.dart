import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../../../core/constants/my_colors.dart';

class CustomNextButton extends StatelessWidget {
  const CustomNextButton({
    super.key,
    required this.pageController,
    this.isLastPage = false,
  });
  final bool isLastPage;
  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 100,
      right: 20,
      child: GestureDetector(
        onTap: () => pageController.nextPage(
          duration: const Duration(milliseconds: 600),
          curve: Curves.easeInOut,
        ),
        child: Container(
          height: 52,
          width: 150,
          decoration: BoxDecoration(
            color: Colors.grey[200],
            borderRadius: BorderRadius.circular(11),
          ),
          child: Row(
            children: [
              Container(
                padding: const EdgeInsets.all(8),
                alignment: Alignment.center,
                height: 52,
                width: 90,
                decoration: const BoxDecoration(
                  color: primaryColor,
                  borderRadius: BorderRadius.all(
                    Radius.circular(11),
                  ),
                ),
                child: FittedBox(
                  child: Text(
                    isLastPage ? "Get Started" : "Next",
                    style: const TextStyle(
                        fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Transform.rotate(
                  angle: -3.14 / 2,
                  child: Lottie.asset('assets/lottie/arrows.json', width: 58))
            ],
          ),
        ),
      ),
    );
  }
}
