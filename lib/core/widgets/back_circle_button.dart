// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:san_art/core/theme/provider/theme_provider.dart';

class BackCircleButton extends StatefulWidget {
  final VoidCallback onTap;
  final WidgetRef ref;
  const BackCircleButton({
    super.key,
    required this.onTap,
    required this.ref,
  });

  @override
  State<BackCircleButton> createState() => _BackCircleButtonState();
}

class _BackCircleButtonState extends State<BackCircleButton> {
  bool _pressed = false;

  @override
  Widget build(BuildContext context) {
    final isDark = widget.ref.watch(themeModeProvider) == ThemeMode.dark;
    final iconColor = isDark ? Colors.white : Colors.black;
    final borderColor = isDark ? Colors.white38 : Colors.black26;
    final bgColor = isDark ? Colors.black.withOpacity(0.12) : Colors.white.withOpacity(0.12);
    return AnimatedScale(
      scale: _pressed ? 0.92 : 1.0,
      duration: const Duration(milliseconds: 90),
      curve: Curves.easeOut,
      child: Material(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(7),
        child: InkWell(
          borderRadius: BorderRadius.circular(7),
          splashColor: isDark ? Colors.white10 : Colors.black12,
          highlightColor: isDark ? Colors.white10 : Colors.black12,
          onTap: widget.onTap,
          onHighlightChanged: (v) => setState(() => _pressed = v),
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 120),
            curve: Curves.easeOut,
            decoration: BoxDecoration(
              border: Border.all(color: borderColor, width: 1.0),
              borderRadius: BorderRadius.circular(7),
              color: bgColor,
              boxShadow: _pressed
                  ? [
                      BoxShadow(
                        color: isDark ? Colors.black54 : Colors.black26,
                        blurRadius: 8,
                        offset: const Offset(0, 2),
                        spreadRadius: 0.5,
                      ),
                    ]
                  : [],
            ),
            padding: const EdgeInsets.all(4),
            child: Icon(Icons.arrow_back, color: iconColor, size: 22),
          ),
        ),
      ),
    );
  }
} 