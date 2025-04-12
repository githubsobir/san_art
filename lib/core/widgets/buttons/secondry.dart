import 'package:flutter/material.dart';

class SecondaryButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  const SecondaryButton(
      {super.key, required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: () {
        onPressed();
      },
      height: 56,
      minWidth: double.infinity,
      shape: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(
            width: 1,
          )),
      child: Text(text,
          style: const TextStyle(
              fontSize: 16, fontFamily: "Inter", fontWeight: FontWeight.w600)),
    );
  }
}
