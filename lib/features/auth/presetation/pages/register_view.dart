import 'package:car_rental/core/helpers/extensions.dart';
import 'package:car_rental/core/widgets/custom_app_input.dart';
import 'package:car_rental/core/widgets/custom_filled_button.dart';
import 'package:car_rental/features/auth/presetation/widgets/custom_button_navigation_bar.dart';
import 'package:flutter/material.dart';
import '../widgets/custom_divider_widget.dart';
import '../widgets/custom_google_icon_widget.dart';
import '../widgets/custom_introduction_widget.dart';
import 'login_view.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const CustomIntroductionWidget(),
                const Text(
                  'Create Your Account',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: Colors.grey),
                ),
                const SizedBox(
                  height: 20,
                ),
                const CustomAppInput(labelText: 'Name'),
                const SizedBox(
                  height: 20,
                ),
                const CustomAppInput(labelText: 'Email'),
                const SizedBox(
                  height: 20,
                ),
                const CustomAppInput(labelText: 'Password', isPassword: true),
                const SizedBox(
                  height: 20,
                ),
                const CustomAppInput(
                    labelText: 'Confirm Password', isPassword: true),
                const SizedBox(
                  height: 24,
                ),
                CustomFilledButton(onPressed: () {}, title: "Signup"),
                const SizedBox(
                  height: 16,
                ),
                const CustomDividerWidget(
                  text: "Or continue with",
                ),
                const SizedBox(
                  height: 16,
                ),
                const CustomGoogleIconWidget(),
                const SizedBox(
                  height: 16,
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: CustomBottomNavigationBar(
          text: "Already have an account? ",
          buttonText: "Login",
          onPress: () {
            context.pushAndRemove(const LoginView());
          },
        ),
      ),
    );
  }
}
