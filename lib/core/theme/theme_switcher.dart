import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:san_art/core/theme/colors/colors_app.dart';
import 'package:san_art/core/theme/provider/theme_provider.dart';


/// A widget that displays and controls the current theme
class ThemeSwitcher extends ConsumerWidget {
  const ThemeSwitcher({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // Get the current brightness directly from the provider
    final brightness = ref.watch(brightnessProvider);
    final isDarkMode = brightness == Brightness.dark;

    final themeMode = ref.watch(themeModeProvider);

    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            AppColors.primary(brightness),
            AppColors.primary(brightness).withAlpha(179), // ~70% opacity
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: AppColors.primary(brightness).withAlpha(77), // ~30% opacity
            blurRadius: 8,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(
                isDarkMode ? Icons.nightlight_round : Icons.wb_sunny,
                color: Colors.white,
                size: 24,
              ),
              const SizedBox(width: 8),
              Text(
                isDarkMode ? 'Dark Mode Active' : 'Light Mode Active',
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          const SizedBox(height: 12),
          const Text(
            'Change theme mode:',
            style: TextStyle(
              color: Colors.white,
              fontSize: 14,
            ),
          ),
          const SizedBox(height: 16),

          // Theme mode selection buttons
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _ThemeModeButton(
                icon: Icons.light_mode,
                label: 'Light',
                isSelected: themeMode == ThemeMode.light,
                onPressed: () => setThemeMode(ref, ThemeMode.light),
              ),
              _ThemeModeButton(
                icon: Icons.dark_mode,
                label: 'Dark',
                isSelected: themeMode == ThemeMode.dark,
                onPressed: () => setThemeMode(ref, ThemeMode.dark),
              ),
              _ThemeModeButton(
                icon: Icons.settings_suggest,
                label: 'System',
                isSelected: themeMode == ThemeMode.system,
                onPressed: () => setThemeMode(ref, ThemeMode.system),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

/// A custom button for theme mode selection
class _ThemeModeButton extends StatelessWidget {
  final IconData icon;
  final String label;
  final bool isSelected;
  final VoidCallback onPressed;

  const _ThemeModeButton({
    required this.icon,
    required this.label,
    required this.isSelected,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: isSelected ? Colors.white : Colors.white.withAlpha(77),
        foregroundColor: isSelected
            ? AppColors.primary(Theme.of(context).brightness)
            : Colors.white,
        elevation: isSelected ? 2 : 0,
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, size: 18),
          const SizedBox(width: 4),
          Text(label),
        ],
      ),
    );
  }
}