import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:san_art/core/back_image/back_image1.dart';
import 'package:san_art/featurs/auth/registration/driver/car_information/car_main_reg/presentation/other_pages/a1_passport_page/presentation/screen/passport_page.dart';
import 'package:san_art/featurs/auth/registration/exporter/date_birth/presentation/provider/data_birth_provider.dart';

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
        builder: (context, ref, child) => Container(
          height: 230,
          color: Colors.white,
          child:backImage1(child:   Column(
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
                        Icons.check,
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
          ), ref: ref)
        ),
      );
    },
  );
}