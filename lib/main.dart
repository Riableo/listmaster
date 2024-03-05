import 'package:flutter/material.dart';
import 'package:listmaster/config/theme/app_theme.dart';
import 'package:listmaster/presentation/screens/home_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme().getTheme(),
      home: const HomeScreen(titulo: 'Animales'),
    );
  }
}
