import 'dart:developer';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:san_art/core/back_image/back_image1.dart';
import 'package:san_art/core/data/hive_passport/hive_passport.dart';
import 'package:san_art/core/routes/routes.dart';
import 'package:san_art/core/theme/colors/colors_app.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:san_art/core/theme/theme_switcher.dart';
import 'package:san_art/core/widgets/buttons/button_primary.dart';
import 'package:san_art/core/widgets/snacbars/widget_snackbars.dart';
import 'package:san_art/core/widgets/widgets.dart';
import 'package:san_art/featurs/auth/registration/driver/car_information/car_main_reg/presentation/other_pages/a2_car_licence/presentation/provider/car_licence_provider.dart';

@RoutePage()
class CarLicencePage extends ConsumerStatefulWidget {
  const CarLicencePage({super.key});

  @override
  ConsumerState<CarLicencePage> createState() => _CarLicencePageState();
}

class _CarLicencePageState extends ConsumerState<CarLicencePage> {
  var box = HiveBoxDriverReg();
  MyWidgets myWidgets = MyWidgets();
  TextEditingController txt1 = TextEditingController();
  TextEditingController txt2 = TextEditingController();

  @override
  void initState() {

    txt1.text = box.carGosNumber;
    txt2.text = box.carGosNumTrailer;

    super.initState();
  }

  @override
  void dispose() {
    txt1.dispose();
    txt2.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        toolbarHeight: 50,
        iconTheme: IconThemeData(color: AppColors.textAppBarColor(context)),
        backgroundColor: AppColors.transparent,
        elevation: 0,
      ),
      body: backImage1(child:  SafeArea(
          child: Container(
            margin: const EdgeInsets.all(20),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  ThemeSwitcher(),
                  const SizedBox(height: 20),
                  Text(
                    "carGovNum".tr(),
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30),
                  ),
                  const SizedBox(height: 20),
                  Text(
                    "country".tr(),
                    style: TextStyle(
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 5),
                  GestureDetector(
                    onTap: () {
                      myWidgets.getCountryList(context);
                    },
                    child: Container(
                      height: 55,
                      width: double.infinity,
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: Colors.grey.shade300,
                          border: Border.all(width: 0.8,
                            color: Colors.grey.shade600,
                          ),
                          borderRadius: BorderRadius.circular(10)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            box.carGosRegionName.isEmpty?
                            ref.watch(selectCountryProvider):  box.carGosRegionName,
                            textAlign: TextAlign.start,
                            style: const TextStyle(
                                fontWeight: FontWeight.w500, fontSize: 16.5),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    "govNum".tr(),
                    style: TextStyle(
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 5),
                  TextFormField(
                    controller: txt1,
                    maxLines: 1,
                    maxLength: 20,
                    decoration: InputDecoration(
                        counter: const SizedBox.shrink(),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide:
                            const BorderSide(color: Colors.grey, width: 1)),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide:
                            const BorderSide(color: Colors.grey, width: 1)),
                        border: OutlineInputBorder(
                            borderSide: const BorderSide(
                                color: Colors.transparent, width: 1),
                            borderRadius: BorderRadius.circular(10))),
                  ),
                  const SizedBox(height: 20),
                  Text(
                    "govNumCar".tr(),
                    style: TextStyle(
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 5),
                  TextFormField(
                    controller: txt2,
                    maxLines: 1,
                    maxLength: 20,

                    onTapOutside: (event) =>  FocusScope.of(context).requestFocus(FocusNode()),
                    decoration: InputDecoration(

                        counter: const SizedBox.shrink(),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide:
                            const BorderSide(color: Colors.grey, width: 1)),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide:
                            const BorderSide(color: Colors.grey, width: 1)),
                        border: OutlineInputBorder(
                            borderSide: const BorderSide(
                                color: Colors.transparent, width: 1),
                            borderRadius: BorderRadius.circular(10))),
                  ),
                  const SizedBox(height: 40),
                  PrimaryButton(
                      onPressed: () {
                        ///
                        /// if ichinidan ! ni olishim kerak
                        ///
                        if (!(ref.watch(selectCountryProvider).isNotEmpty|| box.carGosRegionName.isNotEmpty) &&
                            txt1.text.isNotEmpty &&
                            txt2.text.isNotEmpty) {

                          // Navigator.push(
                          //     context,
                          //     CupertinoPageRoute(
                          //       builder: (context) => PhotoTexCar(
                          //         countryCode: box.carGosRegionId,
                          //         trailerGosNum: txt2.text.trim(),
                          //         carGosNum: txt1.text.trim(),
                          //       ),
                          //     ));

                          context.router.push(CarLicencePhotoRoute(countryCode: "countryCode", carGosNum: "carGosNum", trailerGosNum: "trailerGosNum"));
                        } else {
                          log(ref.watch(selectCountryProvider));
                          log(txt1.text);
                          log(txt2.text);
                          WidgetSnackBar.errorSnackBar(
                              context: context, text: "fillRow".tr());
                        }
                      },
                      text: "continue".tr()),
                ],
              ),
            ),
          )), ref: ref)
    );
  }
}
