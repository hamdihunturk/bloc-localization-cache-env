import 'package:flutter/material.dart';
import 'package:teamup/product/init/theme/custom_color_scheme.dart';
import 'package:teamup/product/init/theme/custom_theme.dart';

/// Custom light theme for project design
final class CustomLightTheme implements CustomTheme {
  @override
  ThemeData get themeData => ThemeData(
        useMaterial3: true,
        colorScheme: CustomColorScheme.lightColorScheme,
        floatingActionButtonTheme: floatingActionButtonThemeData,
      );

  @override
  FloatingActionButtonThemeData get floatingActionButtonThemeData =>
      const FloatingActionButtonThemeData();

  @override
  DialogTheme get dialogThmeData => const DialogTheme();

  @override
  TextButtonThemeData get textButtonThemeData => const TextButtonThemeData();
}
