import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:valorant_agents_show/theme/app_color.dart';

class ValorantAgentsTheme extends StatelessWidget {
  final bool darkTheme;
  final bool dynamicColor;
  final Widget Function(BuildContext) contentBuilder;

  const ValorantAgentsTheme({
    super.key,
    this.darkTheme = false,
    this.dynamicColor = true,
    required this.contentBuilder,
  });

  @override
  Widget build(BuildContext context) {
    final colorScheme = _getColorScheme(context);
    _applyStatusBarColor(colorScheme.primary);

    return Theme(
      data: ThemeData(
        colorScheme: colorScheme,
      ),
      child: Builder(
        builder: (innerContext) {
          _applyStatusBarStyle(innerContext, colorScheme, darkTheme);
          return contentBuilder(innerContext);
        },
      ),
    );
  }

  ColorScheme _getColorScheme(BuildContext context) {
    if (dynamicColor && Platform.isAndroid) {
      final brightness = darkTheme ? Brightness.dark : Brightness.light;
      return Theme.of(context).colorScheme.copyWith(brightness: brightness);
    }

    return darkTheme ? _darkColorScheme : _lightColorScheme;
  }

  void _applyStatusBarColor(Color color) {
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarColor: color));
  }

  void _applyStatusBarStyle(
      BuildContext context, ColorScheme colorScheme, bool darkTheme) {
    final statusBarBrightness = colorScheme.brightness == Brightness.dark
        ? Brightness.light
        : Brightness.dark;

    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarColor: colorScheme.primary,
        statusBarBrightness: statusBarBrightness,
      ),
    );
  }

  static const ColorScheme _darkColorScheme = ColorScheme.dark(
    primary: AppColor.primaryDark,
    onPrimary: AppColor.onPrimaryDark,
    secondary: AppColor.secondaryDark,
    onSecondary: AppColor.onSecondaryDark,
    background: AppColor.backgroundDark,
    onBackground: AppColor.onBackgroundDark,
    surface: AppColor.surfaceDark,
    error: AppColor.errorDark,
    onError: AppColor.onErrorDark,
    onSurface: AppColor.surfaceVariantDark,
    onSurfaceVariant: AppColor.onSurfaceVariantDark,
    onErrorContainer: AppColor.onErrorContainerDark,
  );

  static const ColorScheme _lightColorScheme = ColorScheme.light(
    primary: AppColor.primaryLight,
    onPrimary: AppColor.onPrimaryLight,
    secondary: AppColor.secondaryLight,
    onSecondary: AppColor.onSecondaryLight,
    background: AppColor.backgroundLight,
    onBackground: AppColor.onBackgroundLight,
    surface: AppColor.surfaceLight,
    error: AppColor.errorLight,
    onError: AppColor.onErrorLight,
    onSurface: AppColor.surfaceVariantLight,
    onSurfaceVariant: AppColor.onSurfaceVariantLight,
    onErrorContainer: AppColor.onErrorContainerLight,
  );
}
