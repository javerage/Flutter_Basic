import 'package:flutter/material.dart';

class AppTheme {
  static const int _hexColor = 0XFF117A65;
  static const double globalElevation = 0;
  //static const Color primaryColor = Color.fromARGB(255, 115, 235, 211);
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
          style: TextButton.styleFrom(primary: primaryColor)),
      floatingActionButtonTheme:
          FloatingActionButtonThemeData(backgroundColor: primaryColor),
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
              shadowColor: primaryColor.withOpacity(.6),
              elevation: 4,
              primary: primaryColor,
              shape: StadiumBorder())),
      inputDecorationTheme: InputDecorationTheme(
          floatingLabelStyle: TextStyle(color: primaryColor),
          iconColor: primaryColor,
          prefixIconColor: primaryColor,
          suffixIconColor: primaryColor,
          focusColor: primaryColor,
          border: OutlineInputBorder(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  topRight: Radius.circular(10))),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: primaryColor),
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  topRight: Radius.circular(10))),
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: primaryColor),
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  topRight: Radius.circular(10)))));
}
