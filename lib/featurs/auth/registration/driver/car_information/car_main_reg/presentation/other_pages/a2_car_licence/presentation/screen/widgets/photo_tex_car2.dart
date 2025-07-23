import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:san_art/core/back_image/back_image1.dart';
import 'package:san_art/core/screen_size/get_size.dart';
import 'package:san_art/core/theme/colors/colors_app.dart';
import 'package:san_art/core/theme/theme_switcher.dart';
import 'package:san_art/core/widgets/buttons/button_primary.dart';
import 'package:san_art/core/widgets/loading.dart';
import 'package:san_art/featurs/auth/registration/driver/car_information/car_main_reg/presentation/other_pages/a2_car_licence/presentation/provider/car_licence_provider.dart';
import 'package:auto_route/auto_route.dart';

@RoutePage()
class PhotoTexCar2Page extends ConsumerStatefulWidget {
  final int indexImage;

  const PhotoTexCar2Page({super.key, required this.indexImage});

  @override
  ConsumerState<PhotoTexCar2Page> createState() => _PhotoTexCar2State();
}

class _PhotoTexCar2State extends ConsumerState<PhotoTexCar2Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColors.transparent,
        iconTheme:  IconThemeData(color: AppColors.textAppBarColor(context)),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: IconButton(
              icon: const Icon(Icons.check),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          )
        ],
      ),
      body: backImage1(child: SafeArea(child: !ref.watch(controllerTexCar).isLoading
          ? Container(
        margin: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  ref
                      .read(controllerTexCar.notifier)
                      .getImageCamera(widget.indexImage);
                },
                child: Container(
                  height: AppSize.getH(context) * 0.3,
                  width: AppSize.getW(context) * 0.9,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                      border: Border.all(
                        width: 1
                      )),
                  child: getDataFile(widget.indexImage) == "1"
                      ? Image.file(
                      widget.indexImage == 1?
                      ref
                          .watch(controllerTexCar.notifier)
                          .file2:ref
                          .watch(controllerTexCar.notifier)
                          .file4)
                      : const Icon(Icons.image,
                      size: 50, color: Colors.grey),
                ),
              ),
              const SizedBox(height: 40),
              Row(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("frontSide".tr(),
                          style: const TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold),
                          textAlign: TextAlign.start),
                      const SizedBox(height: 20),
                      Text("frontSideInfoLike".tr(),
                          style: const TextStyle(
                              fontWeight: FontWeight.normal),
                          textAlign: TextAlign.start),
                      const SizedBox(height: 20),
                      Text("passportDemand1".tr(),
                          style: const TextStyle(
                              fontWeight: FontWeight.normal),
                          textAlign: TextAlign.start),
                      Text("passportDemand2".tr(),
                          style: const TextStyle(
                              fontWeight: FontWeight.normal),
                          textAlign: TextAlign.start),
                      Text("passportDemand3".tr(),
                          style: const TextStyle(
                              fontWeight: FontWeight.normal),
                          textAlign: TextAlign.start),
                    ],
                  )
                ],
              ),
              const SizedBox(height: 30),
              PrimaryButton(text: "makePhoto".tr(), onPressed: () {
                ref
                    .read(controllerTexCar.notifier)
                    .getImageCamera(widget.indexImage);
              }),

              const SizedBox(height: 25),
              PrimaryButton(text: "galleryPhoto".tr(), onPressed: () {
                ref.read(controllerTexCar.notifier).getImage(widget.indexImage);
              }),

            ],
          ),
        ),
      )
          :  Center(child: appLoading1()),), ref: ref)
    );
  }

  String getDataFile(int index) {
    try {
      switch (index) {
        case 1:
          return ref.watch(controllerTexCar.notifier).file2.path.length >= 10
              ? "1"
              : "0";
        case 3:
          return ref.watch(controllerTexCar.notifier).file4.path.length >= 10
              ? "1"
              : "0";
        default:
          return "0";
      }
    } catch (e) {
      return "0";
    }
  }
}
