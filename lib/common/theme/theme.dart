import 'package:flutter/material.dart';
import 'package:simply_pos/common/theme/pallete.dart';

class AppTheme {
  static borderTheme([Color borderColor = AppPallete.borderColor]) => OutlineInputBorder(
      borderSide: BorderSide(width: 3, color: borderColor),
      borderRadius: BorderRadius.circular(10));
  static final darkThemeMode = ThemeData.dark().copyWith(
    colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
      // colorScheme: ColorScheme.fromSeed(
      //     seedColor: Colors.blue,
      //     surface: AppPallete.backgroundColor,
      //     primary: AppPallete.primaryColor,
      //     secondary: AppPallete.secondayColor),
      inputDecorationTheme: InputDecorationTheme(
          contentPadding: const EdgeInsets.all(27),
          enabledBorder: borderTheme(),
          focusedBorder: borderTheme(AppPallete.focusedBorderColor)));
}
