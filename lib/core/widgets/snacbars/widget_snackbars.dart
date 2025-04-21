import 'package:flutter/material.dart';

class WidgetSnackBar {
  static errorSnackBar({required BuildContext context, required String text}) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(text)));
  }
}
