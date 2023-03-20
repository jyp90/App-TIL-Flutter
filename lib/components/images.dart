import 'package:flutter/material.dart';

Image getImage(String path) {
  return Image(
    image: AssetImage(path),
    width: 170.0,
    height: 190.0,
  );
}