import 'package:flutter/material.dart';

class AppTheme {
  AppTheme._();

  static ThemeData theme() {
    TextTheme basicTextTheme(TextTheme theme) {
      return theme;
    }

    final theme = ThemeData();
    return theme.copyWith(
      textTheme: basicTextTheme(theme.textTheme),
      colorScheme: theme.colorScheme.copyWith(
          primary: const Color.fromARGB(255, 25, 81, 236),
          secondary: const Color(0xFF7C818B),
          background: const Color(0xFFF9F9F9)),
      appBarTheme: const AppBarTheme(
        color: Color(0xFFF9F9F9),
        toolbarTextStyle: TextStyle(color: Colors.black),
        iconTheme: IconThemeData(color: Color(0xFF7C818B)),
      ),
      visualDensity: VisualDensity.adaptivePlatformDensity,
    );
  }
}
