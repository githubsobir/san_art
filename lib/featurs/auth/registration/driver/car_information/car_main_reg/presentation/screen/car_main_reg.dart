import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:san_art/core/back_image/back_image1.dart';
import 'package:san_art/core/routes/routes.dart';
import 'package:san_art/core/theme/colors/colors_app.dart';
import 'package:san_art/core/theme/theme_switcher.dart';
import 'package:san_art/core/widgets/buttons/button_primary.dart';
import 'package:san_art/featurs/auth/registration/driver/car_information/car_main_reg/presentation/provider/car_main_reg_provider.dart';
import 'package:san_art/generated/assets.dart';

import '../../../../../../../../core/theme/provider/theme_provider.dart';

@RoutePage()
class CarMainRegistrationPage extends ConsumerStatefulWidget {
  const CarMainRegistrationPage({super.key});

  @override
  ConsumerState<CarMainRegistrationPage> createState() =>
      _CarMainRegistrationPageState();
}

class _CarMainRegistrationPageState
    extends ConsumerState<CarMainRegistrationPage> {
  bool getData(int index) {
    // switch (index) {
    // case 0:
    //   return ref.watch(controllerBoolPassport);
    //   case 1:
    //     return ref.watch(controllerBoolDriverLicense);
    //   case 2:
    //     return ref.watch(controllerBoolMoneyType);
    //   case 3:
    //     return ref.watch(controllerBoolTexPassport);
    //   case 4:
    //     return ref.watch(controllerBoolTransport);
    //   case 5:
    //     return ref.watch(controllerBoolPhoto6);
    //   default:
    //     return false;
    // }
    return false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          backgroundColor: Colors.orange,
          elevation: 0,
        ),
        body: SafeArea(
          child: backImage1(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    // IconButton(onPressed: (){}, icon:Icon(Platform.isIOS? Icons.arrow_back_ios:Icons.arrow_back)),
                    Container(
                      height: 100,
                      padding: const EdgeInsets.all(10),
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(30),
                            bottomRight: Radius.circular(30)),
                      ),
                      child: Align(
                        alignment: Alignment.bottomCenter,
                        child: ListTile(
                          title: Text("onlineRegistration".tr(),
                              style: const TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 30)),
                          subtitle: Text("forRegHaveInfo".tr(),
                              style: const TextStyle(
                                  fontWeight: FontWeight.normal)),
                        ),
                      ),
                    ),
                    const SizedBox(height: 15),
                    Container(
                      margin: const EdgeInsets.all(20),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              const Icon(
                                Icons.account_box_outlined,
                              ),
                              const SizedBox(width: 10),
                              Text(
                                "infoPersonality".tr(),
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          const SizedBox(height: 10),
                          SizedBox(
                            height: 200,
                            child: ListView.builder(
                              physics: const NeverScrollableScrollPhysics(),
                              itemCount: ref.read(listDriverModel).length,
                              itemBuilder: (context, index) {
                                return Container(
                                  margin: const EdgeInsets.all(1),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      image: DecorationImage(
                                          image: ref.watch(themeModeProvider) ==
                                                  ThemeMode.dark
                                              ? AssetImage(Assets.imagesRoad3)
                                              : AssetImage(
                                                  "assets/images/ds.jpg"),
                                          fit: BoxFit.cover)),
                                  child: ListTile(
                                    onTap: () {
                                      log(ref.read(listDriverModel)[index].action.toString());
                                      switch (ref.read(listDriverModel)[index].action) {
                                        case "1":
                                          context.router.push(PassportRoute());
                                        case "2":
                                          context.router
                                              .push(CarLicenceRoute());
                                          case "3":
                                            context.router
                                                .push(ChoosePaymentRoute());
                                        //   case "4":
                                        //     Navigator.push(
                                        //         context,
                                        //         CupertinoPageRoute(
                                        //           builder: (context) =>
                                        //           const ChooseRate(),
                                        //         ));
                                      }
                                    },
                                    title: Text(
                                      ref.read(listDriverModel)[index].name,
                                      style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    trailing: SizedBox(
                                        width: 50,
                                        child: Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [
                                            getData(index)
                                                ? const Icon(
                                                    Icons.check_circle_outline,
                                                  )
                                                : const SizedBox.shrink(),
                                            Icon(
                                              Icons.arrow_forward_ios,
                                            ),
                                          ],
                                        )),
                                  ),
                                );
                              },
                            ),
                          ),
                          const SizedBox(height: 14),
                          Row(
                            children: [
                              Icon(
                                Icons.local_shipping_outlined,
                                color: AppColors.primaryButtonColor(context),
                              ),
                              const SizedBox(width: 10),
                              Text(
                                "infoAboutCar".tr(),
                                style: TextStyle(
                                  color: AppColors.primaryButtonColor(context),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 5),
                          SizedBox(
                            height: 200,
                            child: ListView.builder(
                              physics: const NeverScrollableScrollPhysics(),
                              itemCount: ref.read(listCarInfoList).length,
                              itemBuilder: (context, index) {
                                return Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      image: DecorationImage(
                                          image: ref.watch(themeModeProvider) ==
                                                  ThemeMode.dark
                                              ? AssetImage(Assets.imagesRoad3)
                                              : AssetImage(
                                                  "assets/images/ds.jpg"),
                                          fit: BoxFit.cover)),
                                  child: ListTile(
                                    onTap: () {
                                      //

                                      switch(index){
                                        case 0:
                                          context.router.push(CarWeightRoute());
                                          break;
                                        case 1:
                                          context.router.push(PhotoCarDriverRoute());
                                      }
                                      // if (index == 0) {
                                      //   Navigator.push(
                                      //       context,
                                      //       CupertinoPageRoute(
                                      //         builder: (context) =>
                                      //         const TextCarEnterInfo(),
                                      //       ));w
                                      // } else if (index == 1) {
                                      //   Navigator.push(
                                      //       context,
                                      //       CupertinoPageRoute(
                                      //         builder: (context) =>
                                      //         const CargoTransport(),
                                      //       ));
                                      // } else if (index == 2) {
                                      //   Navigator.push(
                                      //       context,
                                      //       CupertinoPageRoute(
                                      //         builder: (context) =>
                                      //         const PhotoCarDriver(),
                                      //       ));
                                      // }
                                    },
                                    title: Text(
                                      ref.read(listCarInfoList)[index],
                                      maxLines: 2,
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500),
                                    ),
                                    trailing: SizedBox(
                                        width: 60,
                                        child: Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [
                                            getData(index + 3)
                                                ? Icon(
                                                    Icons.check_circle_outline,
                                                    color: AppColors
                                                        .primaryButtonColor(
                                                            context))
                                                : const SizedBox.shrink(),
                                            Icon(
                                              Icons.arrow_forward_ios,
                                            ),
                                          ],
                                        )),
                                  ),
                                );
                              },
                            ),
                          ),
                          ThemeSwitcher(),
                          PrimaryButton(
                              onPressed: () async {
                                // ModelNewRegCar m = ModelNewRegCar(
                                //     passportType: box.passportType,
                                //     passportSeriaNumber: box.passportSerNum,
                                //     passport: box.passportImage1,
                                //     passportBack: box.passportImage2,
                                //     passportWithFace: box.passportImage3,
                                //     passportExpiration: box.passportExpiration+"-01",
                                //     driverLicense: box.licenseImage1,
                                //     driverLicenseBack: box.licenseImage2,
                                //     driverLicenseWithFace: box.licenseImage3,
                                //     driverLicenseSeriaNumber: box.licenseSerNum,
                                //     driverLicenseExpiration: box.licenseDate,
                                //     carGosNumber: box.carGosNumber,
                                //     trailerGosNumber: box.carGosNumTrailer,
                                //     texPassport: box.carGosFile1,
                                //     texPassportBack: box.carGosFile2,
                                //     trailerPassport: box.carGosFile3,
                                //     trailerPassportBack: box.carGosFile4,
                                //     paymentTypeId: box.moneyWorkType,
                                //     carWeightTypeId: box.catWeightType,
                                //     carMarkId: box.carModelId,
                                //     carTypeId: box.bodyTypeMain,
                                //     colorId: box.carColorId);
                                // log(jsonEncode(m));
                                // ref.read(controllerDriverReg.notifier).sentDate(m: m);
                              },
                              text: "sentForCheck".tr())
                        ],
                      ),
                    )
                  ],
                ),
              ),
              ref: ref),
        ));
  }
}
