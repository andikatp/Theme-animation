import 'package:flutter/material.dart';

class ThemeService with ChangeNotifier {
  bool _isDarkModeOn = false;

  bool get isDarkModeOn => _isDarkModeOn;

  void toggleTheme() {
    _isDarkModeOn = !_isDarkModeOn;
    notifyListeners();
  }
}
