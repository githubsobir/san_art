import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'app_colors.dart';
import '../../../../../../core/widgets/back_circle_button.dart';

class AppBarSection extends StatelessWidget {
  final bool isDark;
  final WidgetRef ref;
  final AppColors colorScheme;
  const AppBarSection({
    required this.isDark,
    required this.ref,
    required this.colorScheme,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      child: Row(
        children: [
          BackCircleButton(onTap: () => Navigator.pop(context), ref: ref),
          const Spacer(),
          Text(
            "Создать заказ",
            style: TextStyle(
              color: colorScheme.text,
              fontWeight: FontWeight.bold,
              fontSize: 22,
              letterSpacing: 0.2,
            ),
          ),
          const Spacer(),
          Stack(
            clipBehavior: Clip.none,
            children: [
              IconButton(
                icon: Icon(Icons.notifications_none_rounded, color: colorScheme.icon, size: 28),
                onPressed: () {},
                splashRadius: 24,
              ),
              Positioned(
                top: 4,
                right: 4,
                child: Container(
                  padding: const EdgeInsets.all(2),
                  decoration: BoxDecoration(
                    color: Colors.amber,
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.white, width: 1),
                  ),
                  constraints: const BoxConstraints(minWidth: 18, minHeight: 18),
                  child: const Center(
                    child: Text(
                      '7',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
} 