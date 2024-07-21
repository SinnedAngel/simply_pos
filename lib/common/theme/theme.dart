import 'package:flutter/material.dart';
import 'package:simply_pos/common/theme/pallete.dart';

class AppTheme {
  static borderTheme([Color borderColor = AppPallete.borderColor]) =>
      OutlineInputBorder(
        borderSide: BorderSide(
          width: 3,
          color: borderColor,
        ),
        borderRadius: BorderRadius.circular(10),
      );
  static final darkThemeMode = ThemeData.dark().copyWith(
    colorScheme: ColorScheme.fromSeed(
      seedColor: Colors.blue,
    ),
    appBarTheme: const AppBarTheme(
      color: Colors.blueGrey,
      titleTextStyle: TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.bold,
        letterSpacing: 1.5,
        fontSize: 20,
      ),
      centerTitle: true,
    ),
    // static final darkThemeMode = ThemeData.dark().copyWith(
    //     colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
    // colorScheme: ColorScheme.fromSeed(
    //     seedColor: Colors.blue,
    //     surface: AppPallete.backgroundColor,
    //     primary: AppPallete.primaryColor,
    //     secondary: AppPallete.secondayColor),
    inputDecorationTheme: InputDecorationTheme(
      contentPadding: const EdgeInsets.all(27),
      enabledBorder: borderTheme(),
      focusedBorder: borderTheme(AppPallete.focusedBorderColor),
    ),
    buttonTheme: const ButtonThemeData(buttonColor: Colors.transparent),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
      ),
    ),
  );
}
