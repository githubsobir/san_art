import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:san_art/core/back_image/back_image1.dart';
import 'package:san_art/core/routes/routes.dart';
import 'package:san_art/core/screen_size/get_size.dart';
import 'package:san_art/core/theme/colors/colors_app.dart';
import 'package:san_art/core/theme/theme_switcher.dart';
import 'package:san_art/core/widgets/buttons/button_primary.dart';
import 'package:san_art/core/widgets/loading.dart';
import 'package:san_art/core/widgets/widgets.dart';
import 'package:san_art/featurs/auth/registration/driver/car_information/car_main_reg/presentation/other_pages/a2_car_licence/presentation/provider/car_licence_provider.dart';
import 'package:san_art/featurs/auth/registration/driver/car_information/car_main_reg/presentation/provider/car_main_reg_provider.dart';

@RoutePage()
class CarLicencePhotoPage extends ConsumerStatefulWidget {
  final String countryCode;
  final String carGosNum;
  final String trailerGosNum;

  const CarLicencePhotoPage(
      {super.key,
      required this.countryCode,
      required this.carGosNum,
      required this.trailerGosNum});

  @override
  ConsumerState<CarLicencePhotoPage> createState() =>
      _CarLicencePhotoPageState();
}

class _CarLicencePhotoPageState extends ConsumerState<CarLicencePhotoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: AppColors.transparent,
        toolbarHeight: 50,
        iconTheme: IconThemeData(color: AppColors.textAppBarColor(context)),
        elevation: 0,
      ),
      body: backImage1(
          child: SafeArea(
              child: ref.watch(controllerTexCar).boolGetData
                  ? SafeArea(
                      child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 20),
                        Padding(
                          padding: const EdgeInsets.only(left: 25, bottom: 5),
                          child: Text(
                            "photoTexPass".tr(),
                            textAlign: TextAlign.start,
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 28),
                          ),
                        ),
                        const SizedBox(height: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const SizedBox.shrink(),
                            GestureDetector(
                              onTap: () {
                                // Navigator.push(
                                //     context,
                                //     CupertinoPageRoute(
                                //       builder: (context) => const PhotoTexCar1(
                                //         indexImage: 0,
                                //       ),
                                //     ));
                                context.router.push(PhotoTexCar1Route(indexImage: 0));
                              },
                              child: getDataFile(0, ref) == "1"
                                  ? ClipRRect(
                                borderRadius: BorderRadius.circular(8),
                                    child: Image.file(
                                        ref
                                            .watch(controllerTexCar.notifier)
                                            .file1,
                                        height: 104,
                                        width: AppSize.getW(context) * 0.4,
                                        fit: BoxFit.cover,
                                      ),
                                  )
                                  : Container(
                                      height: 104,
                                      width: AppSize.getW(context) * 0.4,
                                      padding: const EdgeInsets.all(15),
                                      decoration: BoxDecoration(
                                          border: Border.all(color: AppColors.textAppBarColor(context)),
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      child: Center(
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            const Icon(
                                                Icons.photo_camera_outlined),
                                            const SizedBox(height: 10),
                                            Text(
                                              "frontSide".tr(),
                                              textAlign: TextAlign.center,
                                              style: const TextStyle(
                                                  fontWeight: FontWeight.w600),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                            ),
                            GestureDetector(
                              onTap: () {
                                // Navigator.push(
                                //     context,
                                //     CupertinoPageRoute(
                                //       builder: (context) => const PhotoTexCar2(
                                //         indexImage: 1,
                                //       ),
                                //     ));
                                context.router.push(PhotoTexCar2Route(indexImage: 1));
                              },
                              child: getDataFile(1, ref) == "1"
                                  ?
                              ClipRRect(
                                borderRadius: BorderRadius.circular(8),
                                child: Image.file(
                                        ref
                                            .watch(controllerTexCar.notifier)
                                            .file2,
                                        height: 104,
                                        width: AppSize.getW(context) * 0.4,
                                        fit: BoxFit.cover,
                                      ),
                              )
                                  : Container(
                                      height: 104,
                                      width: AppSize.getW(context) * 0.4,
                                      padding: const EdgeInsets.all(15),
                                      decoration: BoxDecoration(
                                          border: Border.all(color: AppColors.textAppBarColor(context)),
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      child: Center(
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            const Icon(
                                                Icons.photo_camera_outlined),
                                            const SizedBox(height: 10),
                                            Text(
                                              "backSide".tr(),
                                              textAlign: TextAlign.center,
                                              style: const TextStyle(
                                                  fontWeight: FontWeight.w600),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                            ),
                            const SizedBox.shrink(),
                          ],
                        ),
                        const SizedBox(height: 20),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(25, 8, 8, 8),
                          child: Text(
                            "photoTexPass2".tr(),
                            textAlign: TextAlign.start,
                            style: TextStyle(
                                fontWeight: FontWeight.bold,

                                fontSize: 28),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const SizedBox.shrink(),
                            GestureDetector(
                              onTap: () {
                                // Navigator.push(
                                //     context,
                                //     CupertinoPageRoute(
                                //       builder: (context) => const PhotoTexCar1(
                                //         indexImage: 2,
                                //       ),
                                //     ));
                                context.router.push(PhotoTexCar1Route(indexImage: 2));
                              },
                              child: getDataFile(2, ref) == "1"
                                  ? ClipRRect(
                                borderRadius: BorderRadius.circular(8),
                                child: Image.file(
                                        ref
                                            .watch(controllerTexCar.notifier)
                                            .file3,
                                        height: 104,
                                        width: AppSize.getW(context) * 0.4,
                                        fit: BoxFit.cover,
                                      ),
                                  )
                                  : Container(
                                      height: 104,
                                      width: AppSize.getW(context) * 0.4,
                                      padding: const EdgeInsets.all(15),
                                      decoration: BoxDecoration(
                                          border: Border.all(color: AppColors.textAppBarColor(context)),
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      child: Center(
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            const Icon(
                                                Icons.photo_camera_outlined),
                                            const SizedBox(height: 10),
                                            Text(
                                              "frontSide".tr(),
                                              textAlign: TextAlign.center,
                                              style: const TextStyle(
                                                  fontWeight: FontWeight.w600),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                            ),
                            GestureDetector(
                              onTap: () {
                                // Navigator.push(
                                //     context,
                                //     CupertinoPageRoute(
                                //       builder: (context) => const PhotoTexCar2(
                                //         indexImage: 3,
                                //       ),
                                //     ));
                                context.router.push(PhotoTexCar2Route(indexImage: 3));
                              },
                              child: getDataFile(3, ref) == "1"
                                  ?

                              ClipRRect(
                                borderRadius: BorderRadius.circular(8),
                                child: Image.file(
                                        ref
                                            .watch(controllerTexCar.notifier)
                                            .file4,
                                        height: 104,
                                        width: AppSize.getW(context) * 0.4,
                                        fit: BoxFit.cover,
                                      ),
                              )
                                  : Container(
                                      height: 104,
                                      width: AppSize.getW(context) * 0.4,
                                      padding: const EdgeInsets.all(15),
                                      decoration: BoxDecoration(
                                          border: Border.all(color: AppColors.textAppBarColor(context)),
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      child: Center(
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            const Icon(
                                                Icons.photo_camera_outlined),
                                            const SizedBox(height: 10),
                                            Text(
                                              "backSide".tr(),
                                              textAlign: TextAlign.center,
                                              style: const TextStyle(
                                                  fontWeight: FontWeight.w600),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                            ),
                            const SizedBox.shrink(),
                          ],
                        ),
                        const Spacer(),
                        Padding(
                          padding: const EdgeInsets.only(left: 20, right: 20),
                          child: PrimaryButton(
                              onPressed: () async {
                                if (ref
                                    .read(controllerTexCar.notifier)
                                    .setTexCarServer(
                                        country1: widget.countryCode,
                                        txt1: widget.carGosNum,
                                        txt2: widget.trailerGosNum)) {
                                  ref
                                      .read(controllerBoolTexPassport.notifier)
                                      .update((state) => true);

                                  MyWidgets.nextStep(
                                      onPressed: () {
                                        // Navigator.push(
                                        //     context,
                                        //     CupertinoPageRoute(
                                        //         builder: (context) =>
                                        //             const CargoTransport()));
                                      },
                                      context: context,
                                      text: "savedInfo".tr());
                                } else {
                                  MyWidgets.snackBarMyWidgets(
                                      context: context, text: "fillRow".tr());
                                }
                              },
                              text: "continue".tr()),
                        ),
                        const SizedBox(height: 20),
                      ],
                    ))
                  :  Center(child: appLoading1())),
          ref: ref),
    );
  }
  String getDataFile(int index, WidgetRef ref) {
    try {
      switch (index) {
        case 0:
          return ref.watch(controllerTexCar.notifier).file1.path.length >= 10
              ? "1"
              : "0";
        case 1:
          return ref.watch(controllerTexCar.notifier).file2.path.length >= 10
              ? "1"
              : "0";
        case 2:
          return ref.watch(controllerTexCar.notifier).file3.path.length >= 10
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
