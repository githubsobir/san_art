import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:san_art/core/back_image/back_image1.dart';
import 'package:san_art/core/screen_size/get_size.dart';
import 'package:san_art/core/theme/colors/colors_app.dart';
import 'package:san_art/core/widgets/buttons/button_primary.dart';
import 'package:san_art/featurs/auth/registration/driver/car_information/car_main_reg/presentation/other_pages/a1_passport_page/presentation/provider/passport_page_provider.dart';

@RoutePage()
class PhotoPassport1Page extends ConsumerStatefulWidget {
  const PhotoPassport1Page({super.key});

  @override
  ConsumerState<PhotoPassport1Page> createState() => _PhotoPassport1State();
}

class _PhotoPassport1State extends ConsumerState<PhotoPassport1Page> {
  @override
  Widget build(BuildContext context) {
    ref.watch(controllerPassport);
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColors.transparent,
        actions: [
          GestureDetector(
            onTap: () {
              try {
                ref.read(controllerPassport.notifier).file1!.path.length > 10
                    ? {
                        Navigator.of(context).pop(),
                        ref.read(controllerPassport.notifier).updateState()
                      }
                    : {};
              } catch (e) {
                log(e.toString());
              }
            },
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Icon(Icons.check),
            ),
          )
        ],
        iconTheme: IconThemeData(color: AppColors.textAppBarColor(context)),
      ),
      body: backImage1(
          child: SingleChildScrollView(
            child: Column(children: [
              SafeArea(
                child: Container(
                  margin: const EdgeInsets.all(20),
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        GestureDetector(
                          onTap: () {
                            ref
                                .read(controllerPassport.notifier)
                                .getImageCamera(0);
                          },
                          child: Container(
                            height: AppSize.getH(context) * 0.3,
                            width: AppSize.getW(context) * 0.9,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(width: 1)),
                            child: hasFile1()
                                ? Image.file(ref.watch(controllerPassport.notifier).file1!)
                                : Icon(Icons.image, size: 50),
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
                                    style: TextStyle(
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
                        PrimaryButton(
                            text: "makePhoto".tr(),
                            onPressed: () {
                              ref
                                  .read(controllerPassport.notifier)
                                  .getImageCamera(0);
                            }),
                        const SizedBox(height: 25),
                        PrimaryButton(
                            text: "galleryPhoto".tr(),
                            onPressed: () {
                              ref.read(controllerPassport.notifier).getImage(0);
                            }),
                      ],
                    ),
                  ),
                ),
              )
            ]),
          ),
          ref: ref),
    );
  }

  bool hasFile1() {
    try {
      final file = ref.watch(controllerPassport.notifier).file1;
      return file != null && file.path.isNotEmpty;
    } catch (e) {
      return false;
    }
  }

}
