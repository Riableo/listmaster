import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter/material.dart';
import 'package:listmaster/presentation/screens/home_screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final savedThemeMode = await AdaptiveTheme.getThemeMode();
  runApp(MainApp(savedThemeMode: savedThemeMode));
}

class MainApp extends StatelessWidget {
  final AdaptiveThemeMode? savedThemeMode;
  const MainApp({super.key, this.savedThemeMode});

  @override
  Widget build(BuildContext context) {
    return AdaptiveTheme(
      light: ThemeData(
        useMaterial3: true,
        brightness: Brightness.light,
        colorSchemeSeed: Colors.blue,
      ),
      dark: ThemeData(
        useMaterial3: true,
        brightness: Brightness.dark,
        colorSchemeSeed: Colors.blue,
      ),
      initial: savedThemeMode ?? AdaptiveThemeMode.light,
      builder: (theme, darkTheme) => MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: theme,
        darkTheme: darkTheme,
        home: const HomeScreen(titulo: 'Animales'),
      ),
    );
    
  }
}
