import 'package:flutter/material.dart';

class AppTheme {
  ThemeData getTheme() => ThemeData(
    useMaterial3: true,
    colorSchemeSeed: Colors.amber.shade300,
    appBarTheme: const AppBarTheme(
      elevation: 10
    )
  );
}