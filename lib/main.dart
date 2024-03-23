import 'package:flutter/material.dart';
import 'package:giphy_example/presentation/screens/home.dart';

void main() {
  runApp(const App());
}

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => AppState();
}

class AppState extends State<App> {
  ThemeMode _themeMode = ThemeMode.light;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      darkTheme: ThemeData.dark(useMaterial3: true),
      theme: ThemeData.light(useMaterial3: true),
      themeMode: _themeMode,
      home: HomeScreen(
        toggleTheme: toggleThemeMode,
      ),
    );
  }

  void toggleThemeMode() {
    if (_themeMode == ThemeMode.light) {
      setState(() {
        _themeMode = ThemeMode.dark;
      });
    } else {
      setState(() {
        _themeMode = ThemeMode.light;
      });
    }
  }
}
