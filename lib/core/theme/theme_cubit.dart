import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:unfold_ai_app/core/theme/theme_mode_type.dart';

/// A cubit that manages the theme mode.
class ThemeCubit extends Cubit<ThemeModeType> {
  /// Constructor for the ThemeCubit.
  ThemeCubit() : super(ThemeModeType.system) {
    unawaited(_loadTheme());
  }

  /// The key for the theme mode in SharedPreferences.
  static const String _themeKey = 'theme_mode';

  /// Get the current Flutter ThemeMode.
  ThemeMode get currentThemeMode => state.flutterThemeMode;

  /// Check if the current theme is dark
  bool get isDarkMode => state == ThemeModeType.dark;

  /// Check if the current theme is light
  bool get isLightMode => state == ThemeModeType.light;

  /// Check if the current theme is system
  bool get isSystemMode => state == ThemeModeType.system;

  /// Set the theme mode
  Future<void> setTheme(ThemeModeType theme) async {
    emit(theme);
    await _saveTheme(theme);
  }

  /// Toggle between light and dark mode (ignores system)
  Future<void> toggleTheme() async {
    final newTheme =
        state == ThemeModeType.light ? ThemeModeType.dark : ThemeModeType.light;
    await setTheme(newTheme);
  }

  /// Load the saved theme from SharedPreferences
  Future<void> _loadTheme() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final savedThemeIndex = prefs.getInt(_themeKey);
      if (savedThemeIndex != null &&
          savedThemeIndex < ThemeModeType.values.length) {
        emit(ThemeModeType.values[savedThemeIndex]);
      } else {
        emit(ThemeModeType.system);
      }
    } on Exception catch (_) {
      // If there's an error loading, default to system theme
      emit(ThemeModeType.system);
    }
  }

  /// Save the theme to SharedPreferences
  Future<void> _saveTheme(ThemeModeType theme) async {
    try {
      final prefs = await SharedPreferences.getInstance();
      await prefs.setInt(_themeKey, theme.index);
    } on Exception catch (_) {
      // Handle error silently
    }
  }
}
