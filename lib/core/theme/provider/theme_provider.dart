import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// StateProvider to control the theme mode (light/dark/system)
final themeModeProvider = StateProvider<ThemeMode>((ref) {
  // Default theme is system theme
  return ThemeMode.system;
});

/// Provider to expose the current brightness based on theme mode and platform
final brightnessProvider = Provider<Brightness>((ref) {
  final themeMode = ref.watch(themeModeProvider);

  // Get the platform brightness for system theme determination
  final platformBrightness = WidgetsBinding.instance.platformDispatcher.platformBrightness;

  switch (themeMode) {
    case ThemeMode.light:
      return Brightness.light;
    case ThemeMode.dark:
      return Brightness.dark;
    case ThemeMode.system:
    default:
      return platformBrightness;
  }
});

/// A provider that exposes whether the current theme is dark mode
final isDarkModeProvider = Provider<bool>((ref) {
  final brightness = ref.watch(brightnessProvider);
  return brightness == Brightness.dark;
});

/// Helper method to toggle between light and dark themes
void toggleTheme(WidgetRef ref) {
  final currentThemeMode = ref.read(themeModeProvider);

  if (currentThemeMode == ThemeMode.light) {
    ref.read(themeModeProvider.notifier).state = ThemeMode.dark;
  } else {
    ref.read(themeModeProvider.notifier).state = ThemeMode.light;
  }
}

/// Helper method to set a specific theme mode
void setThemeMode(WidgetRef ref, ThemeMode themeMode) {
  ref.read(themeModeProvider.notifier).state = themeMode;
}