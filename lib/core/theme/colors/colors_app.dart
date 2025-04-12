import 'package:flutter/material.dart';

/// Static color class for the app with light and dark variants
class AppColors {
  // Primary colors - Used for app bars, primary buttons, and main interactive elements
  static const Color transparent = Color.fromRGBO(0, 0, 0, 0);

  static Color primaryButtonColor(BuildContext context) =>
      getColor(Colors.blueAccent, Colors.orange, Theme.of(context).brightness);



  static Color textAppBarColor(BuildContext context) =>
      getColor(Colors.black, Colors.white, Theme.of(context).brightness);

  static Color textInputBorderColor(BuildContext context) =>
      getColor(Colors.grey.shade700, Colors.grey.shade300, Theme.of(context).brightness);

  ///
  ///
  ///
  static const Color primaryLight = Color.fromRGBO(63, 81, 181, 1.0);
  static const Color primaryDark = Color.fromRGBO(48, 63, 159, 1.0);

  // Secondary colors - Used for floating action buttons, accent elements, and highlighting
  static const Color secondaryLight = Color.fromRGBO(255, 64, 129, 1.0);
  static const Color secondaryDark = Color.fromRGBO(245, 0, 87, 1.0);

  // Background colors - Used for scaffold backgrounds and main app background
  static const Color backgroundLight = Color.fromRGBO(245, 245, 245, 1.0);
  static const Color backgroundDark = Color.fromRGBO(18, 18, 18, 1.0);

  // Surface colors - Used for cards, dialogs, bottom sheets, and other surface components
  static const Color surfaceLight = Color.fromRGBO(255, 255, 255, 1.0);
  static const Color surfaceDark = Color.fromRGBO(30, 30, 30, 1.0);

  // Error colors - Used for error states, error messages, and validation errors
  static const Color errorLight = Color.fromRGBO(176, 0, 32, 1.0);
  static const Color errorDark = Color.fromRGBO(207, 102, 121, 1.0);

  // Text colors - Used for various text styles throughout the app
  static const Color textPrimaryLight = Color.fromRGBO(33, 33, 33, 1.0); // Main text
  static const Color textSecondaryLight = Color.fromRGBO(117, 117, 117, 1.0); // Secondary text
  static const Color textPrimaryDark = Color.fromRGBO(255, 255, 255, 1.0); // Main text in dark mode
  static const Color textSecondaryDark = Color.fromRGBO(179, 179, 179, 1.0); // Secondary text in dark mode

  // Border colors - Used for input fields, outlined buttons, and dividers
  static const Color borderLight = Color.fromRGBO(221, 221, 221, 1.0);
  static const Color borderDark = Color.fromRGBO(51, 51, 51, 1.0);

  // Card colors - Used for Card widgets, list items, and tiles
  static const Color cardLight = Color.fromRGBO(255, 255, 255, 1.0);
  static const Color cardDark = Color.fromRGBO(44, 44, 44, 1.0);

  // Icon colors - Used for standard icons and interactive icon buttons
  static const Color iconLight = Color.fromRGBO(97, 97, 97, 1.0);
  static const Color iconDark = Color.fromRGBO(170, 170, 170, 1.0);

  // Divider colors - Used for Divider widgets, list separators, and subtle borders
  static const Color dividerLight = Color.fromRGBO(189, 189, 189, 1.0);
  static const Color dividerDark = Color.fromRGBO(66, 66, 66, 1.0);

  /// Get the appropriate color based on the current brightness
  static Color getColor(Color lightColor, Color darkColor, Brightness brightness) {
    return brightness == Brightness.light ? lightColor : darkColor;
  }

  /// Get primary color for the current brightness
  static Color primary(Brightness brightness) =>
      getColor(primaryLight, primaryDark, brightness);

  /// Get secondary color for the current brightness
  static Color secondary(Brightness brightness) =>
      getColor(secondaryLight, secondaryDark, brightness);

  /// Get background color for the current brightness
  static Color background(Brightness brightness) =>
      getColor(backgroundLight, backgroundDark, brightness);

  /// Get surface color for the current brightness
  static Color surface(Brightness brightness) =>
      getColor(surfaceLight, surfaceDark, brightness);

  /// Get error color for the current brightness
  static Color error(Brightness brightness) =>
      getColor(errorLight, errorDark, brightness);

  /// Get primary text color for the current brightness
  static Color textPrimary(Brightness brightness) =>
      getColor(textPrimaryLight, textPrimaryDark, brightness);

  /// Get secondary text color for the current brightness
  static Color textSecondary(Brightness brightness) =>
      getColor(textSecondaryLight, textSecondaryDark, brightness);

  /// Get border color for the current brightness
  static Color border(Brightness brightness) =>
      getColor(borderLight, borderDark, brightness);

  /// Get card color for the current brightness
  static Color card(Brightness brightness) =>
      getColor(cardLight, cardDark, brightness);

  /// Get icon color for the current brightness
  static Color icon(Brightness brightness) =>
      getColor(iconLight, iconDark, brightness);

  /// Get divider color for the current brightness
  static Color divider(Brightness brightness) =>
      getColor(dividerLight, dividerDark, brightness);

  /// Context-aware helpers
  static Color primaryOf(BuildContext context) =>
      primary(Theme.of(context).brightness);

  static Color secondaryOf(BuildContext context) =>
      secondary(Theme.of(context).brightness);

  static Color backgroundOf(BuildContext context) =>
      background(Theme.of(context).brightness);

  static Color surfaceOf(BuildContext context) =>
      surface(Theme.of(context).brightness);

  static Color errorOf(BuildContext context) =>
      error(Theme.of(context).brightness);

  static Color textPrimaryOf(BuildContext context) =>
      textPrimary(Theme.of(context).brightness);

  static Color textSecondaryOf(BuildContext context) =>
      textSecondary(Theme.of(context).brightness);

  static Color borderOf(BuildContext context) =>
      border(Theme.of(context).brightness);

  static Color cardOf(BuildContext context) =>
      card(Theme.of(context).brightness);

  static Color iconOf(BuildContext context) =>
      icon(Theme.of(context).brightness);

  static Color dividerOf(BuildContext context) =>
      divider(Theme.of(context).brightness);
}