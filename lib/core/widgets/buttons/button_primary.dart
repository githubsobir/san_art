import 'package:flutter/material.dart';
import 'package:san_art/core/theme/colors/colors_app.dart';

class PrimaryButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  const PrimaryButton({super.key, required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: () {
        onPressed();
      },
      height: 56,
      color: AppColors.primaryButtonColor(context),
      minWidth: double.infinity,
      shape: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10), borderSide: BorderSide.none),
      child: Text(text,
          style: TextStyle(
              fontSize: 16,
              fontFamily: "Inter",
              fontWeight: FontWeight.w600)),
    );
  }
}