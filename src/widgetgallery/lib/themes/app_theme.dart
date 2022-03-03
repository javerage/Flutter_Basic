import 'package:flutter/material.dart';

class AppTheme {
  static const int _hexColor = 0XFF117A65;
  static const double globalElevation = 0;
  static const Color primaryColor = Color(_hexColor);

  static ThemeData lightTheme = ThemeData.light().copyWith(
      primaryColor: primaryColor,
      appBarTheme: const AppBarTheme(
          centerTitle: true,
          elevation: globalElevation,
          backgroundColor: primaryColor),
      listTileTheme: const ListTileThemeData(
        iconColor: primaryColor,
      ),
      textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(primary: primaryColor)));
}
