import 'package:flutter/material.dart';

class AppColor {
  static final AppColor _instance = AppColor._internal();

  factory AppColor() {
    return _instance;
  }

  AppColor._internal();

  // Light
  static const primaryLight = Color(0xFFfb4353);
  static const onPrimaryLight = Color(0xFFFFFFFF);
  static const primaryContainerLight = Color(0xFFd1e4ff);
  static const onPrimaryContainerLight = Color(0xFF001d36);

  static const secondaryLight = Color(0xFF535f70);
  static const onSecondaryLight = Color(0xFFffffff);
  static const secondaryContainerLight = Color(0xFFd7e3f7);
  static const onSecondaryContainerLight = Color(0xFF101c2b);

  static const tertiaryLight = Color(0xFF6b5778);
  static const onTertiaryLight = Color(0xFFffffff);
  static const tertiaryContainerLight = Color(0xFFf2daff);
  static const onTertiaryContainerLight = Color(0xFF251431);

  static const errorLight = Color(0xFFba1a1a);
  static const onErrorLight = Color(0xFFffffff);
  static const errorContainerLight = Color(0xFFffdad6);
  static const onErrorContainerLight = Color(0xFF410002);

  static const backgroundLight = Color(0xFFfdfcff);
  static const onBackgroundLight = Color(0xFF1a1c1e);
  static const surfaceLight = Color(0xFFfdfcff);

  static const outlineLight = Color(0xFF73777f);
  static const surfaceVariantLight = Color(0xFFdfe2eb);
  static const onSurfaceVariantLight = Color(0xFF43474e);

  // Dark
  static const primaryDark = Color(0xFFfb4353);
  static const onPrimaryDark = Color(0xFF003258);
  static const primaryContainerDark = Color(0xFF00497d);
  static const onPrimaryContainerDark = Color(0xFFd1e4ff);

  static const secondaryDark = Color(0xFFbbc7db);
  static const onSecondaryDark = Color(0xFF253140);
  static const secondaryContainerDark = Color(0xFF3b4858);
  static const onSecondaryContainerDark = Color(0xFFd7e3f7);

  static const tertiaryDark = Color(0xFFd7bee4);
  static const onTertiaryDark = Color(0xFF3b2948);
  static const tertiaryContainerDark = Color(0xFF523f5f);
  static const onTertiaryContainerDark = Color(0xFFf2daff);

  static const errorDark = Color(0xFFffb4ab);
  static const onErrorDark = Color(0xFF690005);
  static const errorContainerDark = Color(0xFF93000a);
  static const onErrorContainerDark = Color(0xFFffdad6);

  static const backgroundDark = Color(0xFF0f1822);
  static const onBackgroundDark = Color(0xFFe2e2e6);
  static const surfaceDark = Color(0xFF1a1c1e);

  static const outlineDark = Color(0xFF8d9199);
  static const surfaceVariantDark = Color(0xFF43474e);
  static const onSurfaceVariantDark = Color(0xFFc3c7cf);
}
