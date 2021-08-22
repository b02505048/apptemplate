import 'package:flutter/material.dart';
import '/configs/app_theme_config.dart';
import '/services/local_storage_service.dart';

// Export the object of Theme
// Theme theme = Theme();

class AppTheme with ChangeNotifier {
  // Private variable
  bool _isDarkTheme = false;

  // Default constructor
  AppTheme({bool? isDark}) {
    _isDarkTheme = isDark ?? false;
  }

  // Getters
  // ThemeMode get currentTheme => __isDarkTheme ? ThemeMode.dark : ThemeMode.light;
  ThemeData get lightTheme => AppThemeConfig.light;
  ThemeData get darkTheme => AppThemeConfig.dark;
  bool get isDark => _isDarkTheme;

  Future<void> _saveTheme() async {
    await store.set("isDark", _isDarkTheme);
  }

  // Theme change toggle function
  toggleTheme() {
    _isDarkTheme = !_isDarkTheme;
    _saveTheme();
    notifyListeners();
  }
}
