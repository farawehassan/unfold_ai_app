import 'package:flutter/material.dart';

/// An enum that represents the theme mode.
enum ThemeModeType {
  /// The light theme mode.
  light,

  /// The dark theme mode.
  dark,

  /// The system theme mode.
  system,
}

/// Extension methods for the ThemeModeType enum.
extension ThemeModeTypeExtension on ThemeModeType {
  /// Get the display name of the theme mode.
  String get displayName {
    switch (this) {
      case ThemeModeType.light:
        return 'Light';
      case ThemeModeType.dark:
        return 'Dark';
      case ThemeModeType.system:
        return 'System';
    }
  }

  /// Get the Flutter ThemeMode of the theme mode.
  ThemeMode get flutterThemeMode {
    switch (this) {
      case ThemeModeType.light:
        return ThemeMode.light;
      case ThemeModeType.dark:
        return ThemeMode.dark;
      case ThemeModeType.system:
        return ThemeMode.system;
    }
  }

  /// Get the icon of the theme mode.
  IconData get icon {
    switch (this) {
      case ThemeModeType.light:
        return Icons.light_mode;
      case ThemeModeType.dark:
        return Icons.dark_mode;
      case ThemeModeType.system:
        return Icons.brightness_auto;
    }
  }
}
