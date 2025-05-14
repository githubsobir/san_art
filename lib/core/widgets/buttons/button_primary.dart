import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:san_art/core/theme/colors/colors_app.dart';

class PrimaryButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String text;
  final bool isLoading;

  const PrimaryButton({
    super.key,
    required this.onPressed,
    required this.text,
    this.isLoading = false,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      height: 56,
      color: AppColors.primaryButtonColor(context),
      minWidth: double.infinity,
      shape: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10), borderSide: BorderSide.none),
      onPressed: isLoading ? () {} : onPressed,
      child: isLoading
          ? CupertinoActivityIndicator()
          : Text(
              text,
              style: TextStyle(color: Colors.white),
            ),
    );
  }
}
