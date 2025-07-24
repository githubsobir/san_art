import 'package:flutter/material.dart';
import 'app_colors.dart';

class MainButton extends StatelessWidget {
  final AppColors colorScheme;
  const MainButton({required this.colorScheme, super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: colorScheme.buttonBg,
          foregroundColor: colorScheme.buttonText,
          padding: const EdgeInsets.symmetric(vertical: 16),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          textStyle: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          elevation: 0,
        ),
        onPressed: () {},
        child: const Text("оформить Заказ"),
      ),
    );
  }
} 