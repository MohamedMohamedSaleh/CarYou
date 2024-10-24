import 'package:car_rental/core/constants/my_colors.dart';
import 'package:flutter/material.dart';

import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'widgets/custom_next_button.dart';
import 'widgets/custom_page_view.dart';
import 'widgets/custom_text.dart';

class OnBoardingView extends StatefulWidget {
  const OnBoardingView({super.key});

  @override
  State<OnBoardingView> createState() => _OnBoardingViewState();
}

class _OnBoardingViewState extends State<OnBoardingView> {
  final pageController = PageController();
  bool isLastPage = false;

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            onPageChanged: (index) {
              setState(() {
                isLastPage = index == 2;
              });
            },
            controller: pageController,
            children: const [
              CustomPageView(
                image: "car1",
                isRotate: true,
                title: CustomText(
                  isTitle: true,
                  title: "Locate the Destination",
                  top: 200,
                ),
                subtitle: CustomText(
                  isTitle: false,
                  subtitle:
                      "Your destination is at your fingertips. We'll show you the nearest available cars.",
                  top: 240,
                ),
              ),
              CustomPageView(
                image: "car2",
                isRotate: false,
                title: CustomText(
                  isTitle: true,
                  title: "Locate the Destination",
                  top: 200,
                ),
                subtitle: CustomText(
                  isTitle: false,
                  subtitle:
                      "Your destination is at your fingertips. We'll show you the nearest available cars.",
                  top: 240,
                ),
              ),
              CustomPageView(
                image: "car3",
                isRotate: true,
                title: CustomText(
                  isTitle: true,
                  title: "Locate the Destination",
                  top: 200,
                ),
                subtitle: CustomText(
                  isTitle: false,
                  subtitle:
                      "Your destination is at your fingertips. We'll show you the nearest available cars.",
                  top: 240,
                ),
              ),
            ],
          ),
          Positioned(
            bottom: 120,
            left: 20,
            child: SmoothPageIndicator(
              effect: const ExpandingDotsEffect(
                spacing: 8.0,
                radius: 5,
                dotWidth: 10,
                dotHeight: 10,
                // paintStyle: PaintingStyle.stroke,
                strokeWidth: 5,
                dotColor: Colors.white,
                activeDotColor: myPrimaryColor,
              ),
              controller: pageController,
              count: 3,
            ),
          ),
          CustomNextButton(
              pageController: pageController, isLastPage: isLastPage),
        ],
      ),
    );
  }
}
