import 'package:flutter/material.dart';

ThemeData getAppTheme(var primaryColor) {
  var defaultColor = Colors.purple[400];
  primaryColor = primaryColor ?? defaultColor;
  return ThemeData(
      primaryColor: primaryColor,
      inputDecorationTheme: const InputDecorationTheme(
          labelStyle: TextStyle(
              color: Colors.purple, fontSize: 15.0))
  );
}