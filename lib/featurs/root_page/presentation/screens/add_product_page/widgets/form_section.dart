import 'package:flutter/material.dart';
import 'app_colors.dart';
import 'app_text_field.dart';
import 'app_dropdown.dart';

class FormSection extends StatelessWidget {
  final AppColors colorScheme;
  const FormSection({required this.colorScheme, super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        AppTextField(hint: "Название/Услуги", colorScheme: colorScheme),
        const SizedBox(height: 12),
        AppTextField(hint: "Вес", colorScheme: colorScheme),
        const SizedBox(height: 12),
        AppDropdown(
          hint: "Направление",
          items: const ["Ташкент", "Москва"],
          colorScheme: colorScheme,
        ),
        const SizedBox(height: 12),
        AppDropdown(
          hint: "Тип транспорта",
          items: const ["Не указан", "Тентовaнный"],
          colorScheme: colorScheme,
        ),
        const SizedBox(height: 12),
        AppTextField(
          hint: "Срок",
          colorScheme: colorScheme,
          prefixIcon: Icons.calendar_today,
        ),
        const SizedBox(height: 12),
        AppTextField(hint: "Цена", colorScheme: colorScheme),
        const SizedBox(height: 12),
        AppDropdown(
          hint: "Тип оплаты",
          items: const ["Не указан", "Наличные, картой, перечисление"],
          colorScheme: colorScheme,
        ),
        const SizedBox(height: 12),
        AppTextField(hint: "Описание", colorScheme: colorScheme, maxLines: 3),
      ],
    );
  }
} 