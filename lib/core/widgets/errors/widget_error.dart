import 'package:flutter/material.dart';

Widget widgetError({required BuildContext context, required String errorText}) {
  return Center(
    child: Text(
      errorText,
      style: TextStyle(fontWeight: FontWeight.bold),
    ),
  );
}
