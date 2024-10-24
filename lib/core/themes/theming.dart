import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../constants/my_colors.dart';
import '../helpers/helper_methods.dart';

class MyThemes {
  static MaterialColor myMainLightColor =
      getMaterialColor(myColor: myPrimaryColor);
  static ThemeData lightTheme = ThemeData(
    colorScheme: ColorScheme.fromSeed(
      secondaryContainer: secondaryLightContainer,
      seedColor: myPrimaryColor ,
      brightness: Brightness.light,
    ),
    scaffoldBackgroundColor: Colors.white,
    filledButtonTheme: FilledButtonThemeData(
      style: FilledButton.styleFrom(
        elevation: 6,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(11),
        ),
      ),
    ),
    appBarTheme: AppBarTheme(
      elevation: 0,
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarColor: myMainLightColor,
        statusBarIconBrightness: Brightness.light, // For Android (dark icons)
        statusBarBrightness: Brightness.light, // For iOS (dark icons)
      ),
      centerTitle: true,
      color: myMainLightColor,
      titleTextStyle: const TextStyle(
        color: Colors.white,
        fontSize: 24,
        fontWeight: FontWeight.bold,
      ),
    ),
  );

  static ThemeData darkTheme = ThemeData(
    colorScheme: ColorScheme.fromSeed(
      secondaryContainer: const Color(0xff202709),
      seedColor: myMainLightColor,
      brightness: Brightness.dark,
    ),
    scaffoldBackgroundColor: darkBackgroundColor,
    filledButtonTheme: FilledButtonThemeData(
      style: FilledButton.styleFrom(
        elevation: 6,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(11),
        ),
      ),
    ),
    appBarTheme: AppBarTheme(
      elevation: 0,
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarColor: myMainLightColor,
        statusBarIconBrightness: Brightness.dark, // For Android (dark icons)
        statusBarBrightness: Brightness.dark, // For iOS (dark icons)
      ),
      centerTitle: true,
      color: myMainLightColor,
    ),
  );
}
