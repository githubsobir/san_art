import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../widgets/app_colors.dart';
import '../widgets/app_bar_section.dart';
import '../widgets/media_upload_section.dart';
import '../widgets/form_section.dart';
import '../widgets/main_button.dart';
import 'package:san_art/core/back_image/back_image1.dart';
import 'package:san_art/core/theme/provider/theme_provider.dart';

class AddProductPage extends ConsumerWidget {
  const AddProductPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isDark = ref.watch(themeModeProvider) == ThemeMode.dark;
    final colorScheme = AppColors.of(isDark);

    return Scaffold(
      backgroundColor: Colors.black,
      body: backImage1(
        ref: ref,
        child: SafeArea(
          child: Column(
            children: [
              AppBarSection(isDark: isDark, ref: ref, colorScheme: colorScheme),
              Expanded(
                child: SingleChildScrollView(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      MediaUploadSection(colorScheme: colorScheme),
                      const SizedBox(height: 16),
                      FormSection(colorScheme: colorScheme),
                      const SizedBox(height: 24),
                      MainButton(colorScheme: colorScheme),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
} 