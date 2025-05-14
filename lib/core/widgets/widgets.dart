import 'dart:developer';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:san_art/core/back_image/back_image1.dart';
import 'package:san_art/core/data/hive_passport/hive_passport.dart';
import 'package:san_art/core/widgets/buttons/button_primary.dart';
import 'package:san_art/featurs/auth/registration/exporter/date_birth/presentation/provider/data_birth_provider.dart';

class MyWidgets {
  static snackBarMyWidgets(
      {required BuildContext context, required String text}) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(text)));
  }

  DateTime now = DateTime.now();
  bool boolSelected = false;
  late DateTime selectedDate = DateTime(2006, 1, 1);
  var box = HiveBoxDriverReg();

  static Widget loader({required BuildContext context}){
    return const CupertinoActivityIndicator( radius: 10,);
  }

  static nextStep(
      {required VoidCallback onPressed, required BuildContext context, required String text}) async {
    await showDialog(
      context: context,
      builder: (context) =>  AlertDialog(
        content: Padding(
          padding: const EdgeInsets.fromLTRB(8, 20,8,15),
          child: Text(
            text,
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ),
        actions: [
          PrimaryButton(text:  'continue'.tr(), onPressed: (){
            onPressed();
          })
        ],
      ),
    );
  }

  Future selectDateFunc(
      {required BuildContext context,
        required int minimumDate,
        required int maximumDate,
        required int currentYear,
        required int currentMonth,
        required int currentDay}) async {
    await showCupertinoModalPopup(
      context: context,
      builder: (BuildContext context) {
        return Consumer(
          builder: (context, ref, child) => backImage1(
            ref: ref,
            child: Container(
              height: 230,
              color: Colors.white,
              child:   Column(
                children: [
                  GestureDetector(
                    onTap: () {
                      if (!boolSelected) {
                        boolSelected = true;
                        selectedDate =
                            DateTime(currentYear, currentMonth, currentDay);
                      }
                      Navigator.of(context).pop();
                      ref.read(selectDateProvider.notifier).state =
                          DateFormat('yyyy-MM-dd')
                              .format(selectedDate)
                              .toString();
                    },
                    child: Container(
                      padding: const EdgeInsets.only(right: 20, top: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Icon(
                            Icons.check
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                      height: 180,
                      child: CupertinoTheme(
                        data: CupertinoThemeData(
                            brightness: CupertinoTheme.of(context).brightness,
                            textTheme: CupertinoTextThemeData(
                              // textStyle: TextStyle(color: AppColors.white100),
                              // actionTextStyle:
                              //     TextStyle(color: AppColors.white100),
                              // navActionTextStyle:  TextStyle(color: AppColors.white100),
                              // navLargeTitleTextStyle:  TextStyle(color: AppColors.white100),
                              // navTitleTextStyle:  TextStyle(color: AppColors.white100),
                              // pickerTextStyle:  TextStyle(color: AppColors.white100),
                              // primaryColor:   AppColors.white100,
                              // tabLabelTextStyle:  TextStyle(color: AppColors.white100),

                              dateTimePickerTextStyle: TextStyle(
                                   fontSize: 20),
                            )),
                        child: CupertinoDatePicker(
                          initialDateTime: DateTime(currentYear, currentMonth, currentDay),
                          onDateTimeChanged: (DateTime newDate) {
                            selectedDate = newDate;
                            boolSelected = true;
                            ref.read(selectDateProvider.notifier).state =
                                DateFormat('yyyy-MM-dd')
                                    .format(newDate)
                                    .toString();
                          },
                          mode: CupertinoDatePickerMode.date,
                          minimumDate: DateTime(minimumDate, currentMonth),
                          maximumDate: DateTime(maximumDate, currentMonth),
                        ),
                      )),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  getCountryList(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (context) => Stack(
        children: [
          // const BackgroundWidget2(),
          Container(
            height: MyWidgets.getH(context) * 0.6,
            margin: const EdgeInsets.all(10),
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding:
                    const EdgeInsets.only(left: 10, right: 10, top: 15),
                    child: Text("region".tr(),
                        style: const TextStyle(
                            fontWeight: FontWeight.bold,

                            fontSize: 20)),
                  ),
                  // Expanded(
                  //   child: Consumer(
                  //     builder: (context, ref, child) {
                  //       return ref.watch(getCountryListProvider).when(
                  //           data: (data) {
                  //             return ListView.builder(
                  //               itemCount: data.length,
                  //               itemBuilder: (context, index) => Column(
                  //                 children: [
                  //                   const Divider(),
                  //                   ListTile(
                  //                     onTap: () {
                  //                       ref.read(selectCountryProvider.notifier).update((state) => data[index].name.toString());
                  //                       ref.read(selectCountryIdProvider.notifier).update((state) => data[index].id.toString());
                  //                       box.carGosRegionId = data[index].id.toString();
                  //                       box.carGosRegionName = data[index].name.toString();
                  //                       log(data[index].id.toString());
                  //                       Navigator.of(context).pop();
                  //                     },
                  //                     leading: CachedNetworkImage(
                  //                       imageUrl: data[index].flag.toString(),
                  //                       height: 36,
                  //                       width: 36,
                  //                       fit: BoxFit.cover,
                  //                       errorWidget: (context, url, error) {
                  //                         return const Icon(Icons.language);
                  //                       },
                  //                     ),
                  //                     title: Text(
                  //                       data[index].name.toString(),
                  //                       style: const TextStyle(
                  //                           color: Colors.white,
                  //                           fontWeight: FontWeight.bold),
                  //                     ),
                  //                   ),
                  //                 ],
                  //               ),
                  //             );
                  //           }, error: (error, er2) {
                  //         return Center(
                  //           child: Text(er2.toString()),
                  //         );
                  //       }, loading: () {
                  //         return const Center(child: Text("laoding"));
                  //       });
                  //     },
                  //   ),
                  // )
                ]),
          ),
        ],
      ),
    );
  }

  static double getH(BuildContext context) {
    return MediaQuery.of(context).size.height;
  }

  static double getW(BuildContext context) {
    log(MediaQuery.of(context).size.width.toString());
    return MediaQuery.of(context).size.width;
  }

  static double gridViewCrossAxis(BuildContext context) {
    if (getW(context) > 400 && getW(context) < 440) {
      return 200;
    } else if (getW(context) > 440) {
      return 190;
    } else {
      return 220;
    }

  }

  static IconData iconReturn(int index) {
    switch (index) {
      case 0:
        return Icons.people_alt_outlined;
      case 1:
        return Icons.fire_truck_rounded;
      case 2:
        return Icons.home;
      default:
        return Icons.people_alt_outlined;
    }
  }
}
