import 'package:flutter/material.dart';

import 'theme_dark.dart';
import 'theme_light.dart';

enum AppTheme { light, dark }

class ThemeProvider extends ChangeNotifier {
  AppTheme _currentTheme = AppTheme.light;

  AppTheme get currentTheme => _currentTheme;

  ThemeData get themeData => _currentTheme == AppTheme.light
      ? Themelight.lightTheme
      : Themedark.darkTheme;

  void toggleTheme() {
    _currentTheme =
        _currentTheme == AppTheme.light ? AppTheme.dark : AppTheme.light;
    notifyListeners();
  }
}
