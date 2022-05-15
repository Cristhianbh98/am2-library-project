import 'package:flutter/material.dart';

Color primaryColor = const Color.fromRGBO(145, 129, 242, 1);
Color primaryColorLight = const Color.fromRGBO(145, 129, 242, 1);
Color primaryColorDark = const Color.fromARGB(255, 46, 27, 90);
Color whiteColor = Colors.white;

ThemeData primaryTheme = ThemeData(
  primaryColor: primaryColor,
  primaryColorLight: primaryColorLight,
  primaryColorDark: primaryColorDark,
  textTheme: TextTheme(
    headline1: TextStyle(
      fontSize: 36.0,
      fontWeight: FontWeight.bold,
      color: primaryColorLight,
    ),
    headline2: TextStyle(
      fontSize: 24.0,
      fontWeight: FontWeight.bold,
      color: primaryColorLight,
    ),
    bodyText1: TextStyle(
      fontSize: 16.0,
      color: whiteColor,
      height: 1.5,
      fontWeight: FontWeight.normal,
    ),
  ),
);
