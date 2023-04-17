import 'package:flutter/material.dart';
import 'package:flutter_application_2/application/theme_service.dart';
import 'package:flutter_application_2/presentation/theme_animation/theme_animation_screen.dart';
import 'package:flutter_application_2/theme.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider<ThemeService>(
      create: (context) => ThemeService(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeService>(
      builder: (context, themeService, child) => MaterialApp(
        theme: themeService.isDarkModeOn
            ? AppTheme.darkTheme
            : AppTheme.lightTheme,
        home: const ThemeAnimationScreen(),
      ),
    );
  }
}
