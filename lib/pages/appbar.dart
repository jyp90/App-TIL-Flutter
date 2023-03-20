import 'package:flutter/material.dart';

AppBar getAppBar(String title, var primaryColor) {
  var defaultColor = Colors.purple[400];
  primaryColor = primaryColor ?? defaultColor;
  return AppBar(
    title: Text(title),
    backgroundColor: primaryColor,
    centerTitle: true,
    leading: IconButton(icon: const Icon(Icons.menu), onPressed: () {}),
    actions: <Widget>[
      IconButton(icon: const Icon(Icons.search), onPressed: () {})
    ],
  );
}