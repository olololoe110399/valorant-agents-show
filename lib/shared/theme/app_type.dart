import 'package:flutter/material.dart';

class AppType {
  static final AppType _instance = AppType._internal();

  factory AppType() {
    return _instance;
  }

  AppType._internal();

  static const bodyLarge = TextStyle(
    fontFamily: 'valorant',
    fontWeight: FontWeight.normal,
    fontSize: 16.0,
    height: 1.5,
    letterSpacing: 0.5,
  );
}
