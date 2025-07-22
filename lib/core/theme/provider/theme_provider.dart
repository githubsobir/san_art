import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:san_art/core/data/hive_san_art.dart';

/// StateProvider to control the theme mode (light/dark/system)
final themeModeProvider = StateProvider<ThemeMode>((ref) {
  return ref.watch(themeHive.notifier).state.theme.toString() == "1"
      ? ThemeMode.light
      : ThemeMode.dark;
});

final themeHive = StateProvider<HiveBoxes>((ref) {
  return HiveBoxes();
});

/// Provider to expose the current brightness based on theme mode and platform
final brightnessProvider = Provider<Brightness>((ref) {
  final themeMode = ref.watch(themeModeProvider);

// Get the platform brightness for system theme determination
  final platformBrightness =
      WidgetsBinding.instance.platformDispatcher.platformBrightness;

  switch (themeMode) {
    case ThemeMode.light:
      ref.read(themeHive.notifier).state.theme = "1";
      return Brightness.light;
    case ThemeMode.dark:
      ref.read(themeHive.notifier).state.theme = "0";
      return Brightness.dark;
    case ThemeMode.system:
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
