import 'package:flutter/material.dart';
import 'app_colors.dart';

class AppDropdown extends StatelessWidget {
  final String hint;
  final List<String> items;
  final AppColors colorScheme;
  const AppDropdown({
    required this.hint,
    required this.items,
    required this.colorScheme,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48,
      decoration: BoxDecoration(
        color: colorScheme.inputFill,
        borderRadius: BorderRadius.circular(8),
      ),
      child: DropdownButtonHideUnderline(
        child: DropdownButton<String>(
          value: null,
          isExpanded: true,
          icon: Icon(Icons.keyboard_arrow_down_rounded, color: Colors.orange, size: 20),
          dropdownColor: colorScheme.inputFill,
          style: TextStyle(color: colorScheme.text, fontSize: 16),
          hint: Text(hint, style: TextStyle(color: colorScheme.hint, fontSize: 16)),
          items: items
              .map((e) => DropdownMenuItem(value: e, child: Text(e, style: TextStyle(color: colorScheme.text, fontSize: 16))))
              .toList(),
          onChanged: (_) {},
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
        ),
      ),
    );
  }
} 