import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:san_art/core/back_image/back_image1.dart';
import 'package:san_art/core/data/hive_san_art.dart';
import 'package:san_art/core/routes/routes.dart';
import 'package:san_art/core/screen_size/get_size.dart';
import 'package:san_art/core/theme/colors/colors_app.dart';
import 'package:san_art/core/theme/theme_switcher.dart';
import 'package:san_art/core/widgets/buttons/button_primary.dart';
import 'package:san_art/core/widgets/buttons/secondry.dart';
import 'package:san_art/core/widgets/loading.dart';
import 'package:san_art/featurs/auth/choose_role/domain/entities/user_role_entities.dart';
import 'package:san_art/featurs/auth/choose_role/presentation/provider/provider.dart';

@RoutePage()
class UserCategoryPage extends ConsumerStatefulWidget {
  const UserCategoryPage({super.key});

  @override
  ConsumerState<UserCategoryPage> createState() => _UserCategoryState();
}

class _UserCategoryState extends ConsumerState<UserCategoryPage> {
  late final HiveBoxes box;

  @override
  void initState() {
    super.initState();
    box = HiveBoxes();
  }

  @override
  Widget build(BuildContext context) {
    final gerListRole = ref.watch(listRole);

    return Scaffold(
      body: SafeArea(
        child: backImage1(
          child: _buildBody(gerListRole),
          ref: ref,
        ),
      ),
    );
  }

  Widget _buildBody(AsyncValue gerListRole) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 60),
            _buildTitle(),
            const SizedBox(height: 20),
            _buildRoleList(gerListRole),
            const SizedBox(height: 20),
            _buildActionButtons(),
            const SizedBox(height: 20),
            const ThemeSwitcher(),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  Widget _buildTitle() {
    return Text(
      "chooseRoll".tr(),
      style: const TextStyle(
        fontFamily: "Poppins",
        fontWeight: FontWeight.w700,
        fontSize: 30,
      ),
    );
  }

  Widget _buildRoleList(AsyncValue gerListRole) {
    return SizedBox(
      height: AppSize.getH(context) * 0.4,
      child: gerListRole.when(
        data: (data) {
          log("Data loaded successfully");
          return data.when(
            (success) => _buildRoleListView(success),
            (error) => _buildErrorWidget(error.toString()),
          );
        },
        error: (error, stackTrace) {
          log("Error loading data: $error");
          return _buildErrorWidget(error.toString());
        },
        loading: () {
          log("Loading data...");
          return appLoading1();
        },
      ),
    );
  }

  Widget _buildRoleListView(List success) {
    if (success.isEmpty) {
      return Center(
        child: Text(
          "noRolesAvailable".tr(),
          style: const TextStyle(
            fontFamily: "Inter",
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
      );
    }

    return ListView.separated(
      itemCount: success.length,
      separatorBuilder: (context, index) => const SizedBox(height: 8),
      itemBuilder: (context, index) => _buildRoleItem(success[index], index),
    );
  }

  Widget _buildRoleItem(dynamic roleData, int index) {
    final isSelected = ref.watch(userCategoryControllerIndex) == index + 1;
    return AnimatedContainer(
      duration: const Duration(milliseconds: 200),
      decoration: BoxDecoration(
        border: Border.all(
          width: isSelected ? 1 : 0.5,
          color:
              isSelected ? AppColors.primaryButtonColor(context) : Colors.grey,
        ),
        borderRadius: BorderRadius.circular(20.0),
        color:
            isSelected ? Theme.of(context).primaryColor.withOpacity(0.1) : null,
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          borderRadius: BorderRadius.circular(20.0),
          onTap: () => _onRoleSelected(roleData, index),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: [
                // Icon yoki rasm uchun joy
                Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    color: Theme.of(context).primaryColor.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Icon(
                    _getRoleIcon(roleData),
                    color: AppColors.primaryButtonColor(context),
                  ),
                ),
                const SizedBox(width: 16),
                // Matn qismi
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        _getRoleDescription(roleData),
                        style: const TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                          fontFamily: "Inter",
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        _getRoleDescription(roleData),
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 12,
                          fontFamily: "Inter",
                          color: Colors.grey[600],
                        ),
                      ),
                    ],
                  ),
                ),
                // Tanlash indikatori
                AnimatedContainer(
                  duration: const Duration(milliseconds: 200),
                  width: 16,
                  height: 16,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color:
                          isSelected ? Colors.transparent : Colors.transparent,
                      width: 1,
                    ),
                  ),
                  child: isSelected
                      ? Icon(
                          Icons.radio_button_checked,
                          // size: 16,
                          color: AppColors.primaryButtonColor(context),
                        )
                      : null,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildErrorWidget(String error) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.error_outline,
            size: 48,
            color: Colors.red[400],
          ),
          const SizedBox(height: 16),
          Text(
            "errorLoadingRoles".tr(),
            style: const TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 16,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            error,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.grey[600],
              fontSize: 14,
            ),
          ),
          const SizedBox(height: 16),
          ElevatedButton(
            onPressed: () => ref.refresh(listRole),
            child: Text("retry".tr()),
          ),
        ],
      ),
    );
  }

  Widget _buildActionButtons() {
    ref.watch(userCategoryControllerCheckBoxValue);
    return Column(
      children: [
        PrimaryButton(
          text: "continue".tr(),
          onPressed: _onContinuePressed,
        ),
        const SizedBox(height: 12),
        Visibility(
          // visible: selectedRole.isEmpty,
          child: SecondaryButton(
            text: "skip".tr(),
            onPressed: _onSkipPressed,
          ),
        ),
      ],
    );
  }

  // Helper metodlar
  IconData _getRoleIcon(UserRoleEntities roleData) {
    // roleData asosida mos ikonani qaytarish
    final roleName = _getRoleName(roleData).toLowerCase();
    switch (roleName) {
      case 'driver':
        return Icons.local_shipping;
      case 'sender':
        return Icons.business;
      case 'logistics':
        return Icons.inventory;
      default:
        return Icons.person;
    }
  }

  String _getRoleName(UserRoleEntities roleData) {
    // roleData dan nom olish
    return roleData.icon.toString();
  }

  String _getRoleDescription(UserRoleEntities roleData) {
    return roleData.name.toString();
  }

  void _onRoleSelected(dynamic roleData, int index) {
    final roleName = _getRoleName(roleData);

    ref.read(userCategoryControllerCheckBoxValue.notifier).state = roleName;
    ref.read(userCategoryControllerIndex.notifier).state = index + 1;

    box.userType = roleName.toLowerCase();

    log("Selected role: ${box.userType}");
    log("Selected index: ${index + 1}");
  }

  void _onContinuePressed() {
    final selectedRole = ref.watch(userCategoryControllerCheckBoxValue);

    if (selectedRole.isEmpty) {
      _showErrorSnackBar("pleaseSelectRole".tr());
      return;
    }

    final userType = box.userType;

    switch (userType) {
      case "user":
      case "logistics":
      case "sender":
      case "driver":
        context.router.push(RegistrationPhoneRoute());
        break;
      default:
        _showErrorSnackBar("invalidRoleSelected".tr());
    }
  }

  void _onSkipPressed() {
    box.userType = "-";
    context.router.push(RootRoute(val1: "", val2: ""));
  }

  void _showErrorSnackBar(String message) {
    if (!mounted) return;

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          message,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        duration: const Duration(milliseconds: 2500),
        behavior: SnackBarBehavior.floating,
      ),
    );
  }
}
