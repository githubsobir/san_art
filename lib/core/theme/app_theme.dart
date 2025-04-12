import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:san_art/core/theme/colors/colors_app.dart';

/// App theme configuration using AppColors
class AppTheme {
  /// Create a theme based on the provided brightness
  static ThemeData getTheme(Brightness brightness) {
    final bool isLight = brightness == Brightness.light;

    return ThemeData(
      useMaterial3: true,
      brightness: brightness,
      primaryColor: AppColors.primary(brightness),
      colorScheme: ColorScheme(
        brightness: brightness,
        primary: AppColors.primary(brightness),
        onPrimary: Colors.white,
        secondary: AppColors.secondary(brightness),
        onSecondary: Colors.white,
        error: AppColors.error(brightness),
        onError: isLight ? Colors.white : Colors.black,
        surface: AppColors.surface(brightness),
        onSurface: AppColors.textPrimary(brightness),
        surfaceVariant: AppColors.background(brightness),
        onSurfaceVariant: AppColors.textPrimary(brightness),
      ),
      scaffoldBackgroundColor: AppColors.background(brightness),
      appBarTheme: AppBarTheme(
        backgroundColor: isLight ? AppColors.primary(brightness) : AppColors.surface(brightness),
        foregroundColor: isLight ? Colors.white : AppColors.textPrimary(brightness),
        elevation: 0,
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,
          statusBarIconBrightness: Brightness.dark,
          statusBarBrightness: Brightness.light,
        ),
      ),
      cardTheme: CardTheme(
        color: AppColors.card(brightness),
        elevation: 2,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.primary(brightness),
          foregroundColor: Colors.white,
          elevation: 2,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
      ),
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          foregroundColor: AppColors.primary(brightness),
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          foregroundColor: AppColors.primary(brightness),
          side: BorderSide(color: AppColors.primary(brightness)),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
      ),
      textTheme: TextTheme(
        displayLarge: TextStyle(color: AppColors.textPrimary(brightness)),
        displayMedium: TextStyle(color: AppColors.textPrimary(brightness)),
        displaySmall: TextStyle(color: AppColors.textPrimary(brightness)),
        headlineLarge: TextStyle(color: AppColors.textPrimary(brightness)),
        headlineMedium: TextStyle(color: AppColors.textPrimary(brightness)),
        headlineSmall: TextStyle(color: AppColors.textPrimary(brightness)),
        titleLarge: TextStyle(color: AppColors.textPrimary(brightness)),
        titleMedium: TextStyle(color: AppColors.textPrimary(brightness)),
        titleSmall: TextStyle(color: AppColors.textPrimary(brightness)),
        bodyLarge: TextStyle(color: AppColors.textPrimary(brightness)),
        bodyMedium: TextStyle(color: AppColors.textPrimary(brightness)),
        bodySmall: TextStyle(color: AppColors.textSecondary(brightness)),
        labelLarge: TextStyle(color: AppColors.textPrimary(brightness)),
        labelMedium: TextStyle(color: AppColors.textPrimary(brightness)),
        labelSmall: TextStyle(color: AppColors.textSecondary(brightness)),
      ),
      iconTheme: IconThemeData(
        color: AppColors.icon(brightness),
      ),
      dividerTheme: DividerThemeData(
        color: AppColors.divider(brightness),
        thickness: 1,
      ),
      inputDecorationTheme: InputDecorationTheme(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(color: AppColors.border(brightness)),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(color: AppColors.border(brightness)),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(color: AppColors.primary(brightness), width: 2),
        ),
        fillColor: AppColors.surface(brightness),
        filled: true,
      ),
    );
  }

  /// Convenience getter for light theme
  static ThemeData get lightTheme => getTheme(Brightness.light);

  /// Convenience getter for dark theme
  static ThemeData get darkTheme => getTheme(Brightness.dark);
}