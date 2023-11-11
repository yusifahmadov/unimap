import 'package:flutter/material.dart';
import 'package:unimap/core/theme/app_theme.dart';
import 'package:unimap/splash.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeManager.craeteTheme(AppThemeLight()),
        home: const SplashScreen());
  }
}
