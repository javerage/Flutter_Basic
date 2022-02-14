import 'package:flutter/material.dart';

class PrimaryTheme {
  static const primaryColor = Colors.blueAccent;
  static const double globalElevation = 0;

  static final ThemeData lightTheme = ThemeData.light().copyWith(
      primaryColor: primaryColor,
      appBarTheme: const AppBarTheme(
          backgroundColor: primaryColor,
          centerTitle: true,
          elevation: globalElevation));

  static final ThemeData darkTheme = ThemeData.dark().copyWith(
      primaryColor: Colors.yellow,
      appBarTheme: const AppBarTheme(
          backgroundColor: primaryColor,
          centerTitle: true,
          elevation: globalElevation),
      scaffoldBackgroundColor: Colors.black);
}
