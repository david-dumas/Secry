import 'package:flutter/material.dart';
import 'package:theme_provider/theme_provider.dart';

class ThemeOptions implements AppThemeOptions {
  final Color backgroundColor;
  final Color iconColor;
  final LinearGradient headerGradient;

  ThemeOptions({
    required this.backgroundColor,
    required this.iconColor,
    required this.headerGradient,
  });
}
