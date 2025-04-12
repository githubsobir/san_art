import 'package:calendar_date_picker2/calendar_date_picker2.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:san_art/core/screen_size/get_size.dart';
import 'package:san_art/core/theme/colors/colors_app.dart';
import 'package:san_art/featurs/root_page/presentation/screens/main_page/presentation/provider/providers.dart';

class HeaderMain extends ConsumerStatefulWidget {
  const HeaderMain({super.key});

  @override
  ConsumerState<HeaderMain> createState() => _HeaderMainState();
}

class _HeaderMainState extends ConsumerState<HeaderMain> {
  late List<DateTime?> values = [
    DateTime(2021, 8, 10),
    DateTime(2024, 8, 13),
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(top: 10),
        child: Theme(
          data: Theme.of(context).copyWith(dividerColor: AppColors.transparent),
          child: ExpansionTile(
            expansionAnimationStyle: AnimationStyle(
                duration: const Duration(milliseconds: 400),
                curve: Curves.ease,
                reverseCurve: Curves.linear,
                reverseDuration: const Duration(milliseconds: 1500)),
            collapsedShape: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(width: 0.4)),
            onExpansionChanged: (val) {
              ref.read(controllerSearchOpen.notifier).state = val;
            },
            trailing: ref.watch(controllerSearchOpen)
                ? Icon(
                    Icons.close,
                    color: AppColors.primaryButtonColor(context),
                  )
                : SizedBox.shrink(),
            collapsedBackgroundColor: AppColors.primaryButtonColor(context),
            title: Center(
                child: Text(
                    ref.watch(controllerSearchOpen) ? "Yopish" : "search".tr(),
                    style: TextStyle(fontWeight: FontWeight.bold))),
            children: [
              SingleChildScrollView(
                child: Container(
                  height: 290,
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    children: [
                      ListTile(
                        onTap: () {
                          getCountryList(0);
                        },
                        leading: const Icon(Icons.my_location_outlined),
                        title: Text(
                          ref.read(controllerMainPageCity1Name).isEmpty
                              ? "Qayerdan"
                              : ref.watch(controllerMainPageCity1Name),
                        ),
                        trailing: const Icon(Icons.keyboard_arrow_down_rounded,
                            size: 32),
                      ),
                      Divider(color: Colors.grey.shade200),
                      ListTile(
                        onTap: () {
                          getCountryList(1);
                        },
                        leading: const Icon(CupertinoIcons.location_solid),
                        title: Text(
                            ref.read(controllerMainPageCity2Name).isEmpty
                                ? "Qayerga"
                                : ref.watch(controllerMainPageCity2Name)),
                        trailing: const Icon(Icons.keyboard_arrow_down_rounded,
                            size: 32),
                      ),
                      Divider(color: Colors.grey.shade200),
                      ListTile(
                        onTap: () {
                          getCalendar();
                        },
                        leading: const Icon(Icons.calendar_month),
                        title: const Text("Sesh, 16 yan-Chor, 17 yan"),
                      ),
                      MaterialButton(
                        onPressed: () {},
                        minWidth: double.infinity,
                        height: 50,
                        color: AppColors.primaryButtonColor(context),
                        shape: const OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.transparent),
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.zero,
                              topRight: Radius.zero,
                              bottomLeft: Radius.circular(15),
                              bottomRight: Radius.circular(15),
                            )),
                        child: const Text("Qidirish",
                            style: TextStyle(fontWeight: FontWeight.bold)),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  getCalendar() async {
    final value = await showCalendarDatePicker2Dialog(
      context: context,
      config: CalendarDatePicker2WithActionButtonsConfig(
          currentDate: DateTime.now(),
          calendarType: CalendarDatePicker2Type.range,
          dayTextStyle: TextStyle(color: Colors.white),
          disabledDayTextStyle: TextStyle(color: Colors.white),
          weekdayLabelTextStyle: TextStyle(color: Colors.white),
          yearTextStyle: TextStyle(color: Colors.white),
          controlsTextStyle: TextStyle(color: Colors.white),
          selectedRangeHighlightColor: Colors.blueAccent,
          selectedDayHighlightColor: Colors.red),
      dialogBackgroundColor: Colors.grey.shade900,
      dialogSize: Size(300, 400),
    );
  }

  // getLocation
  getCountryList(int index123) {
    showModalBottomSheet(
      context: context,
      builder: (context) => Consumer(
        builder: (context, ref, child) => Container(
          height: AppSize.getH(context) * 0.6,
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(20)),
          child:
              // ref.watch(controllerMainPage).boolGetData
              //     ? Column(
              //     mainAxisAlignment: MainAxisAlignment.start,
              //     crossAxisAlignment: CrossAxisAlignment.start,
              //     children: [
              //       Padding(
              //         padding: const EdgeInsets.only(top: 15, left: 15),
              //         child: Text("region".tr(),
              //             style: const TextStyle(
              //                 fontWeight: FontWeight.bold, fontSize: 20)),
              //       )
              //     ])
              //     :
              const Center(child: CupertinoActivityIndicator()),
        ),
      ),
    );
  }
}
