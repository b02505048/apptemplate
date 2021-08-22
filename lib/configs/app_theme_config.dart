import 'package:flutter/material.dart';

abstract class AppThemeConfig {
  static final ThemeData light = lightTheme;
  static final ThemeData dark = darkTheme;
}


// Dark theme configurations
final ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark,
  scaffoldBackgroundColor: Color(0xff112326),
  appBarTheme: AppBarTheme(
    color: Color(0xff121212),
    iconTheme: IconThemeData(
      color: Colors.white70,
    ),
  ),
  colorScheme: ColorScheme.dark(
    primary: Color(0xffeed511),
    onPrimary: Colors.white60,
    primaryVariant: Colors.white38,
    secondary: Color(0xffeed511),
    onSecondary: Colors.white60,
  ),
  cardTheme: CardTheme(
    color: Color(0xff384b4e),
  ),
  iconTheme: IconThemeData(
    color: Colors.white,
  ),
  primaryIconTheme: IconThemeData(
    color: Colors.white70,
  ),
  floatingActionButtonTheme: FloatingActionButtonThemeData(
    foregroundColor: Colors.black
  ),
  textTheme: TextTheme(
    bodyText1: TextStyle(color: Colors.white),
    bodyText2: TextStyle(color: Colors.white70),
    subtitle1: TextStyle(color: Colors.white, fontWeight: FontWeight.w700),
  ),
);


// Light theme configurations
final ThemeData lightTheme = ThemeData(
  brightness: Brightness.light,
  scaffoldBackgroundColor: Color(0xfff2f3f5),
  appBarTheme: AppBarTheme(
    color: Colors.white,
    iconTheme: IconThemeData(
      color: Colors.black45,
    ),
  ),
  colorScheme: ColorScheme.light(
    primary: Color(0xffeed511),
    onPrimary: Colors.black54,
    primaryVariant: Colors.black54,
    secondary: Color(0xffeed511),
    onSecondary: Colors.white,
  ),
  cardTheme: CardTheme(
    color: Colors.white,
  ),
  iconTheme: IconThemeData(
    color: Colors.black54,
  ),
  primaryIconTheme: IconThemeData(
    color: Colors.black54,
  ),
  floatingActionButtonTheme: FloatingActionButtonThemeData(
    foregroundColor: Colors.white
  ),
  textTheme: TextTheme(
    bodyText1: TextStyle(color: Colors.black),
    bodyText2: TextStyle(color: Colors.black54),
    subtitle1: TextStyle(color: Colors.black, fontWeight: FontWeight.w700),
  ),
);

