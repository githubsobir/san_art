import 'package:flutter/material.dart';
import 'app_colors.dart';

class AppTextField extends StatelessWidget {
  final String hint;
  final AppColors colorScheme;
  final int maxLines;
  final IconData? prefixIcon;
  const AppTextField({
    required this.hint,
    required this.colorScheme,
    this.maxLines = 1,
    this.prefixIcon,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
      ),
      child: TextField(
        maxLines: maxLines,
        style: TextStyle(color: colorScheme.text, fontSize: 16),
        decoration: InputDecoration(
          filled: true,
          fillColor: colorScheme.inputFill,
          hintText: hint,
          hintStyle: TextStyle(color: colorScheme.hint, fontSize: 16),
          prefixIcon: prefixIcon != null ? Icon(prefixIcon, color: colorScheme.hint) : null,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide.none,
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide.none,
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide.none,
          ),
          disabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide.none,
          ),
          contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
        ),
        autofillHints: null,
        autocorrect: false,
        enableSuggestions: false,
      ),
    );
  }
} 