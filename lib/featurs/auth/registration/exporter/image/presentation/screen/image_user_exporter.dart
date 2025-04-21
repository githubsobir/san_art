import 'dart:io';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:san_art/core/back_image/back_image1.dart';
import 'package:san_art/core/data/hive_san_art.dart';
import 'package:san_art/core/screen_size/get_size.dart';
import 'package:san_art/core/theme/colors/colors_app.dart';
import 'package:san_art/core/widgets/buttons/button_primary.dart';
import 'package:san_art/core/widgets/buttons/secondry.dart';
import 'package:san_art/generated/assets.dart';
import 'package:auto_route/auto_route.dart';


@RoutePage()
class ImageUserExporterPage extends ConsumerStatefulWidget {
  const ImageUserExporterPage({super.key});

  @override
  ConsumerState<ImageUserExporterPage> createState() => _ImageUserExporterState();
}

class _ImageUserExporterState extends ConsumerState<ImageUserExporterPage> {

  final _box = HiveBoxes();

  @override
  Widget build(BuildContext context1) {
    return Scaffold(
      backgroundColor: Colors.grey.shade900,
      body: backImage1(child:   Container(
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
                        // ref
                        //     .watch(
                        //     controllerAddPhotoDriver.notifier)
                        //     .imageList
                        //     .isEmpty
                        //     ? {
                        //   MyWidgets.snackBarMyWidgets(
                        //       context: context,
                        //       text: "Rasm tanlang")
                        // }
                        //     : {
                        //   ref
                        //       .read(controllerAddPhotoDriver
                        //       .notifier)
                        //       .setImageServer(context: context1)
                        // };
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
                      child:SvgPicture.asset(
                        Assets.iconsIcProfile,
                        width: 120,
                        height: 120,
                      )

                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 20),
                      child: Align(
                          alignment: Alignment.bottomRight,
                          child: IconButton(
                            onPressed: () {
                              // ref
                              //     .read(controllerAddPhotoDriver
                              //     .notifier)
                              //     .getImageFromGallery();
                            },
                            icon: Icon(
                              Icons.change_circle_outlined,
                            ),
                          )),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Text("Rasmingizni kiriting",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.w700,
                      fontSize: 30,
                      )),
              const Spacer(),
              PrimaryButton(
                text: "Rasm tanlash",
                onPressed: () {
                //   setState(() {
                //     ref
                //         .read(controllerAddPhotoDriver.notifier)
                //         .getImageFromGallery();
                //   });
                },
              ),
              const SizedBox(height: 12),
              SecondaryButton(
                text: "skip".tr(),
                onPressed: () {
                  if (_box.userType.toString() == "2") {
                    // Navigator.push(
                    //     context,
                    //     CupertinoDialogRoute(
                    //         builder: (context) => const RootPage(),
                    //         context: context));
                  } else {
                    // Navigator.push(
                    //     context,
                    //     CupertinoDialogRoute(
                    //         builder: (context) =>
                    //         const DrawerRegistration(),
                    //         context: context));
                  }
                },
              )
            ],
          ),
        ),
      ), ref: ref)

    );
  }

  String getImage() {
    try {
      // return ref
      //     .watch(controllerAddPhotoDriver.notifier)
      //     .imageList[0]
      //     .path
      //     .length >
      //     10
      //     ? "1"
      //     : "0";
      return "0";
    } catch (e) {
      return "0";
    }
  }}
