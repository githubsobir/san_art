import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'app_colors.dart';
import 'package:san_art/core/theme/provider/theme_provider.dart';

class MediaUploadSection extends ConsumerWidget {
  final AppColors colorScheme;
  const MediaUploadSection({required this.colorScheme, super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isDark = ref.watch(themeModeProvider) == ThemeMode.dark;
    final buttonColor = isDark ? Colors.grey[800] : Colors.grey[200];
    
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: colorScheme.card,
        borderRadius: BorderRadius.circular(8),
        boxShadow: colorScheme.card == Colors.white
            ? [
                BoxShadow(
                  color: Colors.black.withOpacity(0.04),
                  blurRadius: 8,
                  offset: const Offset(0, 2),
                ),
              ]
            : [],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Загрузить фото или видео", style: TextStyle(color: colorScheme.label)),
          const SizedBox(height: 8),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton.icon(
              style: ElevatedButton.styleFrom(
                backgroundColor: buttonColor,
                foregroundColor: colorScheme.text,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                elevation: 0,
              ),
              onPressed: () {},
              icon: Icon(Icons.add, color: colorScheme.icon),
              label: const Text("Загрузить"),
            ),
          ),
          const SizedBox(height: 8),
          GridView.count(
            crossAxisCount: 3,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            mainAxisSpacing: 8,
            crossAxisSpacing: 8,
            children: List.generate(5, (index) => Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: colorScheme.inputFill,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Center(
                    child: Icon(
                      Icons.add_photo_alternate_outlined,
                      color: colorScheme.hint,
                      size: 32,
                    ),
                  ),
                ),
                Positioned(
                  top: 4,
                  right: 4,
                  child: CircleAvatar(
                    radius: 12,
                    backgroundColor: colorScheme.inputFill,
                    child: Icon(Icons.close, size: 16, color: colorScheme.icon),
                  ),
                ),
              ],
            )),
          ),
        ],
      ),
    );
  }
} 