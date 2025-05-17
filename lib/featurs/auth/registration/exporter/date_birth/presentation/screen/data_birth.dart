import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:san_art/core/back_image/back_image1.dart';
import 'package:san_art/core/data/hive_san_art.dart';
import 'package:san_art/core/routes/routes.dart';
import 'package:san_art/core/theme/theme_switcher.dart';
import 'package:san_art/core/widgets/buttons/button_primary.dart';
import 'package:san_art/core/widgets/calendar_select.dart';
import 'package:san_art/core/widgets/snacbars/widget_snackbars.dart';
import 'package:san_art/featurs/auth/registration/exporter/date_birth/presentation/provider/data_birth_provider.dart';

@RoutePage()
class DataBirthPage extends ConsumerStatefulWidget {
  const DataBirthPage({super.key});

  @override
  ConsumerState<DataBirthPage> createState() => _DataBirthState();
}

class _DataBirthState extends ConsumerState<DataBirthPage> {
  DateTime dateTime = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: backImage1(child: buildBody(), ref: ref));
  }

  Widget buildBody() {
    // if (ref.watch(userBirthController)) {
    return user0BirthDay(context: context, ref: ref);
    // } else if (!ref.watch(userBirthController).success) {
    //   return appLoading1();
    // } else if (ref.watch(userBirthController).success &&
    //     ref.watch(userBirthController).errorMessage.length > 10) {
    //   return widgetError(context: context, errorText: "errorText");
    // } else {
    //   return const Center(
    //     child: Text("default"),
    //   );
    // }
  }

  var box = HiveBoxes();

  TextEditingController textEditingController = TextEditingController();

  Widget user0BirthDay(
      {required BuildContext context, required WidgetRef ref}) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 56,
          ),
          IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: Icon(
              Platform.isIOS ? Icons.arrow_back_ios : Icons.arrow_back,
            ),
          ),
          const SizedBox(height: 40),
          Text(
            "enterBirthday".tr(),
            style: TextStyle(
                fontFamily: "Poppins",
                fontWeight: FontWeight.w700,
                fontSize: 30),
          ),
          const SizedBox(height: 30),
          Text("date".tr(),
              style: TextStyle(
                  fontFamily: "Inter",
                  fontSize: 14,
                  fontWeight: FontWeight.w400)),
          const SizedBox(height: 6),
          GestureDetector(
            onTap: () async {
              await selectDateFunc(
                  context: context,
                  maximumDate: dateTime.year - 16,
                  minimumDate: dateTime.year - 77,
                  currentYear: dateTime.year - 17,
                  currentMonth: dateTime.month,
                  currentDay: dateTime.day);
            },
            child: Container(
                height: 60,
                width: double.infinity,
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                        color: (ref.watch(selectDateProvider).length > 5)
                            ? Colors.red
                            : Colors.white60)),
                child: Row(
                  children: [
                    ref.watch(selectDateProvider).toString().length > 5
                        ? Text(
                            ref.watch(selectDateProvider),
                            style: TextStyle(
                                fontSize: 16,
                                fontFamily: "Poppins",
                                fontWeight: FontWeight.w400),
                          )
                        : const SizedBox(),
                  ],
                )),
          ),
          const SizedBox(height: 42),
          PrimaryButton(
              text: "continue".tr(),
              onPressed: () {
                if (ref.watch(selectDateProvider).toString().length > 5) {
                  context.router.push(ImageUserExporterRoute());
                  ref
                      .read(userBirthController.notifier)
                      .setUserBirth(
                          date: ref.watch(selectDateProvider).toString())
                      .then((value) {
                    // Navigator.push(
                    //     context,
                    //     CupertinoPageRoute(
                    //       builder: (context) => const Registration(),
                    //     ));
                    return true;
                  });
                } else {
                  WidgetSnackBar.errorSnackBar(
                      context: context, text: "Tug'ulgan sanani tanlang");
                }
              }),
          ThemeSwitcher()
        ],
      ),
    );
  }
}
