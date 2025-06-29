import 'dart:developer';
import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:san_art/core/back_image/back_image1.dart';
import 'package:san_art/core/data/hive_san_art.dart';
import 'package:san_art/core/role/role_users.dart';
import 'package:san_art/core/routes/routes.dart';
import 'package:san_art/core/screen_size/get_size.dart';
import 'package:san_art/core/theme/colors/colors_app.dart';
import 'package:san_art/core/widgets/buttons/button_primary.dart';
import 'package:san_art/core/widgets/buttons/secondry.dart';
import 'package:san_art/featurs/auth/registration/exporter/image/presentation/provider/image_exporter_state.dart';
import 'package:san_art/generated/assets.dart';

@RoutePage()
class ImageUserExporterPage extends ConsumerStatefulWidget {
  const ImageUserExporterPage({super.key});

  @override
  ConsumerState<ImageUserExporterPage> createState() =>
      _ImageUserExporterState();
}

class _ImageUserExporterState extends ConsumerState<ImageUserExporterPage> {
  final _box = HiveBoxes();

  @override
  void initState() {
    log("Exporter Image");
    super.initState();
  }

  @override
  Widget build(BuildContext context1) {
    // Get the image picker state from the provider
    final imagePickerState = ref.watch(imagePickerControllerProvider);

    return Scaffold(
        backgroundColor: Colors.grey.shade900,
        body: backImage1(
            child: Container(
              margin: const EdgeInsets.all(20),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(
                      height: 36,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                            onPressed: () {
                              Navigator.of(context1).pop();
                            },
                            icon: Icon(
                              Platform.isIOS
                                  ? Icons.arrow_back_ios
                                  : Icons.arrow_back,
                            )),
                        IconButton(
                            onPressed: () {
                              // Upload image to server when check icon is pressed
                              if (imagePickerState.imageList.isEmpty) {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(
                                      content:
                                          Text('Iltimos, avval rasm tanlang')),
                                );
                              } else {
                                ref
                                    .read(
                                        imagePickerControllerProvider.notifier)
                                    .uploadImageToServer(context: context1);
                              }
                            },
                            icon: Icon(
                              Icons.check_box_outlined,
                              size: 32,
                              color: AppColors.textAppBarColor(context),
                            )),
                      ],
                    ),
                    SizedBox(
                      height: 250,
                      width: AppSize.getW(context),
                      child: Stack(
                        children: [
                          Container(
                              margin: const EdgeInsets.all(30),
                              padding: const EdgeInsets.all(10),
                              alignment: Alignment.center,
                              child: imagePickerState.imageList.isNotEmpty
                                  ? ClipRRect(
                                      borderRadius: BorderRadius.circular(60),
                                      child: Image.file(
                                        imagePickerState.imageList[0],
                                        width: 120,
                                        height: 120,
                                        fit: BoxFit.cover,
                                      ),
                                    )
                                  : SvgPicture.asset(
                                      Assets.iconsIcProfile,
                                      width: 120,
                                      height: 120,
                                    )),
                          Padding(
                            padding: const EdgeInsets.only(right: 20),
                            child: Align(
                                alignment: Alignment.bottomRight,
                                child: IconButton(
                                  onPressed: () {
                                    // Show image picker dialog when change icon is pressed
                                    ref
                                        .read(imagePickerControllerProvider
                                            .notifier)
                                        .showImagePickerDialog(context);
                                  },
                                  icon: const Icon(
                                    Icons.change_circle_outlined,
                                  ),
                                )),
                          ),
                          if (imagePickerState.isLoading)
                            const Center(
                              child: CircularProgressIndicator(),
                            ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 20),
                    const Text("Rasmingizni kiriting",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w700,
                          fontSize: 30,
                        )),
                    if (imagePickerState.errorMessage != null)
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          imagePickerState.errorMessage!,
                          style: const TextStyle(color: Colors.red),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    const Spacer(),
                    PrimaryButton(
                      text: "Rasm tanlash",
                      onPressed: () {
                        // Show image picker dialog when button is pressed

                        ref
                            .read(imagePickerControllerProvider.notifier)
                            .showImagePickerDialog(context);
                      },
                    ),
                    const SizedBox(height: 12),
                    SecondaryButton(
                      text: "skip".tr(),
                      onPressed: () {
                        log(_box.userRole);
                        log(_box.userType);
                        if (RoleUser.driver == _box.userType) {
                          context.router.push(CarMainRegistrationRoute());
                        } else if (RoleUser.exporter == _box.userType) {
                          context.router.push(RootRoute(val1: "val1", val2: "val2"));
                        }
                      },
                    )
                  ],
                ),
              ),
            ),
            ref: ref));
  }
}
