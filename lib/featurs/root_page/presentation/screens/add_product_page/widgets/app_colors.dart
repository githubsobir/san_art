import 'package:flutter/material.dart';

class AppColors {
  final Color card;
  final Color inputFill;
  final Color label;
  final Color text;
  final Color hint;
  final Color icon;
  final Color buttonBg;
  final Color buttonText;

  AppColors({
    required this.card,
    required this.inputFill,
    required this.label,
    required this.text,
    required this.hint,
    required this.icon,
    required this.buttonBg,
    required this.buttonText,
  });

  factory AppColors.of(bool isDark) => isDark
      ? AppColors(
          card: Colors.black.withOpacity(0.7),
          inputFill: Colors.black.withOpacity(0.7),
          label: Colors.white70,
          text: Colors.white,
          hint: Colors.white38,
          icon: Colors.white,
          buttonBg: Colors.amber,
          buttonText: Colors.black,
        )
      : AppColors(
          card: Colors.white,
          inputFill: Colors.white,
          label: Colors.black87,
          text: Colors.black87,
          hint: Colors.black26,
          icon: Colors.black,
          buttonBg: const Color(0xFF3B82F6),
          buttonText: Colors.white,
        );
} 