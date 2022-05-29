import 'package:flutter/material.dart';

class AppTheme {
  static const Color primaryColor = Colors.indigo;

  static final ThemeData lightTheme = ThemeData.light().copyWith(
    primaryColor: primaryColor,

    // AppBar Theme
    appBarTheme: const AppBarTheme(color: primaryColor, elevation: 0),
    // AppBar Sliver Theme
    //
  );
}
