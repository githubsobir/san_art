import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:san_art/core/back_image/back_image1.dart';
import 'package:san_art/core/screen_size/get_size.dart';
import 'package:san_art/core/theme/colors/colors_app.dart';

final selectCalendarYearProvider = StateProvider.autoDispose((ref) => "");
int selectedYear = DateTime.now().year;
List<int> years = List.generate(100, (index) => DateTime.now().year - index);

void showYearPicker(BuildContext context, WidgetRef ref) {
  showCupertinoModalPopup(
      context: context,
      builder: (_) => SizedBox(
            height: 250,
            child: Scaffold(
              body: SizedBox(
                height: 250,
                child: backImage1(
                  ref: ref,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(height: 15),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "carMadeYear".tr(),
                            style: TextStyle(fontSize: 22),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 200,
                        child: CupertinoPicker(

                          selectionOverlay: Container(
                            margin: EdgeInsets.fromLTRB(
                                AppSize.getW(context) * 0.2,
                                0,
                                AppSize.getW(context) * 0.2,
                                0),
                            decoration: BoxDecoration(
                                color: AppColors.transparent,
                                borderRadius: BorderRadius.circular(10),
                                border: BoxBorder.all(
                                    color: Colors.grey.shade300, width: 1)),
                          ),
                          scrollController: FixedExtentScrollController(
                              initialItem: years.indexOf(selectedYear)),
                          itemExtent: 40.0,

                          onSelectedItemChanged: (index) {
                            selectedYear = years[index];
                            ref
                                .read(selectCalendarYearProvider.notifier)
                                .state = selectedYear.toString();


                          },
                          children: years
                              .map((year) => Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Text(year.toString()),
                                    ],
                                  ))
                              .toList(),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
  );
}
