import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:san_art/core/theme/provider/theme_provider.dart';

Widget backImage1({required Widget child, required WidgetRef ref}) {
  final isDarkMode = ref.watch(themeModeProvider) == ThemeMode.dark;
  return Stack(
    children: [
      isDarkMode
          ? Image.asset(
              "assets/images/road2.png",
              fit: BoxFit.cover,
              width: double.infinity,
              height: double.infinity,
            )
          : Image.asset(
              "assets/images/ds.jpg",
              fit: BoxFit.cover,
              width: double.infinity,
              height: double.infinity,
            ),

      ///
      child
    ],
  );
}
