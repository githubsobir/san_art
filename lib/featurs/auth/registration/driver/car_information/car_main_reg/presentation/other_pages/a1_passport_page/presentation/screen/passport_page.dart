import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:san_art/core/back_image/back_image1.dart';
import 'package:san_art/core/data/hive_passport/hive_passport.dart';
import 'package:san_art/core/routes/routes.dart';
import 'package:san_art/core/screen_size/get_size.dart';
import 'package:san_art/core/theme/colors/colors_app.dart';
import 'package:san_art/core/widgets/snacbars/widget_snackbars.dart';
import 'package:san_art/featurs/auth/registration/driver/car_information/car_main_reg/presentation/other_pages/a1_passport_page/presentation/provider/passport_page_provider.dart';
import 'package:san_art/featurs/auth/registration/driver/car_information/car_main_reg/presentation/other_pages/a1_passport_page/presentation/widgets/dialog_upload/passport_upload.dart';

@RoutePage()
class PassportPage extends ConsumerStatefulWidget {
  const PassportPage({super.key});

  @override
  ConsumerState<PassportPage> createState() => _PassportPageState();
}

class _PassportPageState extends ConsumerState<PassportPage> {
  late final PageController controller = PageController();
  TextEditingController txtPassport = TextEditingController();

  var box = HiveBoxDriverReg();
  DateTime now = DateTime.now();

  bool boolSelected = false;
  DateTime dateTime = DateTime.now();

  @override
  void initState() {
    txtPassport.text = box.passportSerNum;
    super.initState();
  }

  @override
  void dispose() {
    txtPassport.dispose();
    super.dispose();
  }

  onPressButton() {
    txtPassport.text.toString().length > 5
        ? {
            ref
                .read(controllerPassport.notifier)
                .setAllData(serNum: "", datePassport: ""),
            getDialog()
            // MyWidgets.nextStep(
            //     onPressed: () {
            //       ref
            //           .read(controllerPassport.notifier)
            //           .setAllData(serNum: txtPassport.text, datePassport: ref.watch(controllerPassportExpiration));
            //       // ref.read(controllerBoolPassport.notifier).update(
            //       //       (state) => true,
            //       // );
            //       // Navigator.push(
            //       //     context,
            //       //     CupertinoPageRoute(
            //       //       builder: (context) => const DriverLicense(),
            //       //     ));
            //     },
            //     context: context,
            //     text: "savedInfo".tr())
          }
        : {
            WidgetSnackBar.errorSnackBar(
                context: context, text: "enterPassportInfo".tr())
          };
  }

  @override
  Widget build(BuildContext context) {
    ref.watch(controllerPassport);

    ref.listen(uploadPassportStateProvider, (previous, next) {
      if (next.error != null) {}
    });

    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          elevation: 0,
          toolbarHeight: 35,
          backgroundColor: AppColors.transparent,
          iconTheme: IconThemeData(color: AppColors.textAppBarColor(context)),
        ),
        body: backImage1(
            child: SafeArea(
              child: Column(
                children: [
                  Container(
                    height: 50,
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(8)),
                    margin: const EdgeInsets.only(right: 10, left: 10, top: 20),
                    child: Row(
                      children: [
                        Expanded(
                          child: MaterialButton(
                            onPressed: () {
                              box.passportType = "0";
                              // ref.read(controllerPassport.notifier).setDeafault();

                              controller.jumpToPage(0);
                              // curve: Curves.decelerate,
                              // duration: const Duration(milliseconds: 300));
                              ref.read(passportWindowID.notifier).state = 0;
                            },
                            height: 50,
                            color: ref.watch(passportWindowID).toString() == "0"
                                ? AppColors.primaryButtonColor(context)
                                : AppColors.iconDark,
                            shape: OutlineInputBorder(
                                borderSide:
                                    const BorderSide(color: Colors.transparent),
                                borderRadius: BorderRadius.circular(10)),
                            child: Text(
                              "passport".tr(),
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        const SizedBox(width: 10),
                        Expanded(
                          child: MaterialButton(
                            onPressed: () {
                              box.passportType = "1";

                              if (ref.watch(passportWindowID).toString() ==
                                  "0") {
                                ref.read(passportWindowID.notifier).state = 1;
                                controller.jumpToPage(2); // for regular jump
                                controller.animateToPage(2,
                                    curve: Curves.decelerate,
                                    duration: const Duration(
                                        milliseconds:
                                            300)); // for animated jump. Requires a curve and a duration
                              }

                              controller.jumpToPage(1);
                            },
                            height: 50,
                            color: ref.watch(passportWindowID).toString() == "1"
                                ? AppColors.primaryButtonColor(context)
                                : AppColors.iconDark,
                            shape: OutlineInputBorder(
                                borderSide:
                                    const BorderSide(color: Colors.transparent),
                                borderRadius: BorderRadius.circular(10)),
                            child: Text(
                              "idCart".tr(),
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: true
                        ? PageView(
                            controller: controller,
                            // physics: const NeverScrollableScrollPhysics(),
                            children: [
                              passport(),
                              idCard(),
                            ],
                          )
                        : const Center(
                            child: CupertinoActivityIndicator(
                            color: Colors.white,
                            radius: 20,
                          )),
                  ),
                ],
              ),
            ),
            ref: ref));
  }

  Widget passport() {
    return Container(
      margin: const EdgeInsets.all(15),
      height: AppSize.getW(context) * 0.9,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "passport".tr(),
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
            ),
            const SizedBox(height: 5),
            Text(
              "enterPassportInfo".tr(),
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Text("serNum".tr(), style: TextStyle(fontWeight: FontWeight.bold)),
            const SizedBox(height: 5),
            Form(
              autovalidateMode: AutovalidateMode.onUserInteraction,
              child: TextFormField(
                controller: txtPassport,
                maxLines: 1,
                maxLength: 30,
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    color: AppColors.textPrimaryLight),
                decoration: InputDecoration(
                    fillColor: Colors.grey.shade300,
                    filled: true,
                    errorBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                            color: Colors.transparent, width: 1),
                        borderRadius: BorderRadius.circular(10))),
                validator: (value) {
                  if (value.toString().isEmpty || value.toString().length < 5) {
                    return "enterInfo".tr();
                  } else {
                    return "";
                  }
                },
              ),
            ),
            const SizedBox(height: 5),
            Text("validityPeriod".tr(),
                style: TextStyle(fontWeight: FontWeight.bold)),
            const SizedBox(height: 5),
            GestureDetector(
              onTap: () {
                selectDateFunc(
                    context: context,
                    maximumDate: dateTime.year + 10,
                    minimumDate: dateTime.year,
                    currentYear: dateTime.year + 1,
                    currentMonth: dateTime.month + 1,
                    currentDay: dateTime.day + 10);
              },
              child: Container(
                  height: 55,
                  width: double.infinity,
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      color: Colors.grey.shade300,
                      borderRadius: BorderRadius.circular(10)),
                  child: Row(
                    children: [
                      Text(
                        ref.watch(controllerPassportExpiration).length > 6
                            ? ref.watch(controllerPassportExpiration)
                            : box.passportExpiration,
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: AppColors.textPrimaryLight),
                      )
                    ],
                  )),
            ),
            const SizedBox(height: 20),
            Text(
              "photoDoc".tr(),
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox.shrink(),
                GestureDetector(
                  onTap: () {
                    context.router.push(PhotoPassport1Route());
                  },
                  child: getImage(ref, 0) == "1"
                      ? Card(
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child: Image.file(
                                height: 104,
                                width: AppSize.getW(context) * 0.4,
                                fit: BoxFit.cover,
                                ref.watch(controllerPassport.notifier).file1!),
                          ),
                        )
                      : Container(
                          height: 104,
                          width: AppSize.getW(context) * 0.4,
                          padding: const EdgeInsets.all(4),
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: AppColors.textAppBarColor(context)),
                              borderRadius: BorderRadius.circular(10)),
                          child: getImage(ref, 0) == "1"
                              ? ClipRRect(
                                  borderRadius: BorderRadius.circular(8),
                                  child: Image.file(
                                    ref
                                        .watch(controllerPassport.notifier)
                                        .file1!,
                                    fit: BoxFit.cover,
                                    errorBuilder: (context, error, stackTrace) {
                                      return Icon(
                                        Icons.photo_camera_outlined,
                                      );
                                    },
                                  ),
                                )
                              : Center(
                                  child: box.passportImage1.isNotEmpty
                                      ? ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(8),
                                          child: Image.file(
                                            File(box.passportImage1),
                                            fit: BoxFit.cover,
                                            errorBuilder:
                                                (context, error, stackTrace) {
                                              return Icon(
                                                Icons.photo_camera_outlined,
                                              );
                                            },
                                          ),
                                        )
                                      : Column(
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
                    context.router.push(PhotoPassport2Route());
                  },
                  child: getImage(ref, 1) == "1"
                      ? ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: Image.file(
                            ref.watch(controllerPassport.notifier).file2!,
                            height: 104,
                            width: AppSize.getW(context) * 0.4,
                            fit: BoxFit.cover,
                            errorBuilder: (context, error, stackTrace) {
                              return Icon(
                                Icons.photo_camera_outlined,
                              );
                            },
                          ),
                        )
                      : Container(
                          height: 104,
                          width: AppSize.getW(context) * 0.4,
                          padding: const EdgeInsets.all(12),
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: AppColors.textAppBarColor(context)),
                              borderRadius: BorderRadius.circular(10)),
                          child: Center(
                            child: box.passportImage2.isNotEmpty
                                ? Image.file(
                                    File(box.passportImage2),
                                    fit: BoxFit.cover,
                                    errorBuilder: (context, error, stackTrace) {
                                      return Icon(Icons.photo_camera_outlined);
                                    },
                                  )
                                : Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      const Icon(Icons.photo_camera_outlined),
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
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 15, 15, 15),
              child: GestureDetector(
                onTap: () {
                  // ref.watch(controllerPassport).list.isEmpty
                  //     ? context.router.push(PhotoPassport1Route())
                  //     : ref.watch(controllerPassport).list.length == 1
                  //         ? context.router.push(PhotoPassport2Route())
                  //         :
                  context.router.push(PhotoPassport3Route());
                },
                child: getImage(ref, 2) == "1"
                    ? ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Image.file(
                            ref.watch(controllerPassport.notifier).file3!,
                            height: 104,
                            width: AppSize.getW(context) * 0.4,
                            errorBuilder: (context, error, stackTrace) {
                          return Icon(
                            Icons.photo_camera_outlined,
                          );
                        }, fit: BoxFit.cover),
                      )
                    : Container(
                        height: 104,
                        width: AppSize.getW(context) * 0.4,
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            border: Border.all(
                                color: AppColors.textAppBarColor(context)),
                            borderRadius: BorderRadius.circular(10)),
                        child: Center(
                          child: box.passportImage3.isNotEmpty
                              ? Image.file(
                                  File(box.passportImage3),
                                  fit: BoxFit.cover,
                                  errorBuilder: (context, error, stackTrace) {
                                    return Icon(
                                      Icons.photo_camera_outlined,
                                    );
                                  },
                                )
                              : Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    const Icon(Icons.photo_camera_outlined),
                                    const SizedBox(height: 10),
                                    Text(
                                      "photoFrontDoc".tr(),
                                      maxLines: 2,
                                      softWrap: true,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.center,
                                      style: const TextStyle(
                                          fontWeight: FontWeight.w600),
                                    )
                                  ],
                                ),
                        ),
                      ),
              ),
            ),
            const SizedBox(height: 55),
            MaterialButton(
              onPressed: () {
                onPressButton();
              },
              height: 55,
              minWidth: double.infinity,
              shape: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: const BorderSide(color: Colors.grey)),
              child: Text("confirmation".tr(),
                  style: const TextStyle(fontWeight: FontWeight.bold)),
            )
          ],
        ),
      ),
    );
  }

  Widget idCard() {
    return Container(
      margin: const EdgeInsets.all(15),
      height: AppSize.getW(context) * 0.9,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "idCart".tr(),
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
            ),
            const SizedBox(height: 5),
            Text(
              "enterInfo".tr(),
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Text("serNum".tr(), style: TextStyle(fontWeight: FontWeight.bold)),
            const SizedBox(height: 5),
            Form(
              autovalidateMode: AutovalidateMode.onUserInteraction,
              child: TextFormField(
                controller: txtPassport,
                maxLines: 1,
                maxLength: 30,
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    color: AppColors.textPrimaryLight),
                decoration: InputDecoration(
                    fillColor: Colors.grey.shade300,
                    filled: true,
                    errorBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                            color: Colors.transparent, width: 1),
                        borderRadius: BorderRadius.circular(10))),
                validator: (value) {
                  if (value.toString().isEmpty || value.toString().length < 5) {
                    return "enterInfo".tr();
                  } else {
                    return "";
                  }
                },
              ),
            ),
            const SizedBox(height: 5),
            Text("validityPeriod".tr(),
                style: TextStyle(fontWeight: FontWeight.bold)),
            const SizedBox(height: 5),
            GestureDetector(
              onTap: () {
                selectDateFunc(
                    context: context,
                    maximumDate: dateTime.year + 10,
                    minimumDate: dateTime.year,
                    currentYear: dateTime.year + 1,
                    currentMonth: dateTime.month + 1,
                    currentDay: dateTime.day + 10);
              },
              child: Container(
                  height: 55,
                  width: double.infinity,
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      color: Colors.grey.shade300,
                      borderRadius: BorderRadius.circular(10)),
                  child: Row(
                    children: [
                      Text(
                        ref.watch(controllerPassportExpiration).length > 6
                            ? ref.watch(controllerPassportExpiration)
                            : box.passportExpiration,
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: AppColors.textPrimaryLight),
                      )
                    ],
                  )),
            ),
            const SizedBox(height: 20),
            Text(
              "photoDoc".tr(),
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox.shrink(),
                GestureDetector(
                  onTap: () {
                    context.router.push(PhotoPassport1Route());
                  },
                  child: getImage(ref, 0) == "1"
                      ? Card(
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child: Image.file(
                                height: 104,
                                width: AppSize.getW(context) * 0.4,
                                fit: BoxFit.cover,
                                ref.watch(controllerPassport.notifier).file1!),
                          ),
                        )
                      : Container(
                          height: 104,
                          width: AppSize.getW(context) * 0.4,
                          padding: const EdgeInsets.all(4),
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: AppColors.textAppBarColor(context)),
                              borderRadius: BorderRadius.circular(10)),
                          child: getImage(ref, 0) == "1"
                              ? ClipRRect(
                                  borderRadius: BorderRadius.circular(8),
                                  child: Image.file(
                                    ref
                                        .watch(controllerPassport.notifier)
                                        .file1!,
                                    fit: BoxFit.cover,
                                    errorBuilder: (context, error, stackTrace) {
                                      return Icon(
                                        Icons.photo_camera_outlined,
                                      );
                                    },
                                  ),
                                )
                              : Center(
                                  child: box.passportImage1.isNotEmpty
                                      ? ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(8),
                                          child: Image.file(
                                            File(box.passportImage1),
                                            fit: BoxFit.cover,
                                            errorBuilder:
                                                (context, error, stackTrace) {
                                              return Icon(
                                                Icons.photo_camera_outlined,
                                              );
                                            },
                                          ),
                                        )
                                      : Column(
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
                    context.router.push(PhotoPassport2Route());
                  },
                  child: getImage(ref, 1) == "1"
                      ? ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: Image.file(
                            ref.watch(controllerPassport.notifier).file2!,
                            height: 104,
                            width: AppSize.getW(context) * 0.4,
                            fit: BoxFit.cover,
                            errorBuilder: (context, error, stackTrace) {
                              return Icon(
                                Icons.photo_camera_outlined,
                              );
                            },
                          ),
                        )
                      : Container(
                          height: 104,
                          width: AppSize.getW(context) * 0.4,
                          padding: const EdgeInsets.all(15),
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: AppColors.textAppBarColor(context)),
                              borderRadius: BorderRadius.circular(10)),
                          child: Center(
                            child: box.passportImage2.isNotEmpty
                                ? Image.file(
                                    File(box.passportImage2),
                                    fit: BoxFit.cover,
                                    errorBuilder: (context, error, stackTrace) {
                                      return Icon(Icons.photo_camera_outlined);
                                    },
                                  )
                                : Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      const Icon(Icons.photo_camera_outlined),
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
            Padding(
              padding: const EdgeInsets.all(15),
              child: GestureDetector(
                onTap: () {
                  // ref.watch(controllerPassport).list.isEmpty
                  //     ? context.router.push(PhotoPassport1Route())
                  //     : ref.watch(controllerPassport).list.length == 1
                  //         ? context.router.push(PhotoPassport2Route())
                  //         : context.router.push(PhotoPassport3Route());
                },
                child: getImage(ref, 2) == "1"
                    ? ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Image.file(
                          ref.watch(controllerPassport.notifier).file3!,
                          height: 104,
                          width: AppSize.getW(context) * 0.4,
                          errorBuilder: (context, error, stackTrace) {
                            return Icon(
                              Icons.photo_camera_outlined,
                            );
                          },
                          fit: BoxFit.cover,
                        ),
                      )
                    : Container(
                        height: 104,
                        width: AppSize.getW(context) * 0.4,
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            border: Border.all(
                                color: AppColors.textAppBarColor(context)),
                            borderRadius: BorderRadius.circular(10)),
                        child: Center(
                          child: box.passportImage3.isNotEmpty
                              ? Image.file(
                                  File(box.passportImage3),
                                  fit: BoxFit.cover,
                                  errorBuilder: (context, error, stackTrace) {
                                    return Icon(
                                      Icons.photo_camera_outlined,
                                    );
                                  },
                                )
                              : Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    const Icon(Icons.photo_camera_outlined),
                                    const SizedBox(height: 10),
                                    Text(
                                      "photoFrontDoc".tr(),
                                      maxLines: 2,
                                      softWrap: true,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.center,
                                      style: const TextStyle(
                                          fontWeight: FontWeight.w600),
                                    )
                                  ],
                                ),
                        ),
                      ),
              ),
            ),
            const SizedBox(height: 60),
            MaterialButton(
              onPressed: () {
                onPressButton();
              },
              height: 55,
              minWidth: double.infinity,
              shape: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: const BorderSide(color: Colors.grey)),
              child: Text("confirmation".tr(),
                  style: const TextStyle(fontWeight: FontWeight.bold)),
            )
          ],
        ),
      ),
    );
  }

  getDialog() async {
    await showDialog(
      context: context,
      builder: (context) => SizedBox(
        child: AlertDialog(
          backgroundColor: Colors.transparent,
          contentPadding: EdgeInsets.zero,
          content: SizedBox(height: 140, child: LoadingPassportDialog()),
        ),
      ),
    );
  }
}

String getImage(WidgetRef ref, int index) {
  try {
    if (index == 0) {
      return ref.watch(controllerPassport.notifier).file1!.path.length > 12
          ? "1"
          : "0";
    } else if (index == 1) {
      return ref.watch(controllerPassport.notifier).file2!.path.length > 12
          ? "1"
          : "0";
    } else {
      return ref.watch(controllerPassport.notifier).file3!.path.length > 12
          ? "1"
          : "0";
    }
  } catch (e) {
    return "0";
  }
}

DateTime selectedDate = DateTime(2007, 1, 1);
DateTime now = DateTime.now();
bool boolSelected = false;

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
        builder: (context, ref, child) => SizedBox(
          height: 230,
          child: backImage1(
            ref: ref,
            child: Column(
              children: [
                GestureDetector(
                  onTap: () {
                    if (!boolSelected) {
                      boolSelected = true;
                      selectedDate =
                          DateTime(currentYear, currentMonth, currentDay);
                    }
                    Navigator.of(context).pop();
                    ref.read(controllerPassportExpiration.notifier).update(
                        (state) => DateFormat('yyyy-MM')
                            .format(selectedDate)
                            .toString());
                  },
                  child: Container(
                    padding: const EdgeInsets.only(right: 20, top: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [Icon(Icons.check)],
                    ),
                  ),
                ),
                SizedBox(
                    height: 180,
                    child: CupertinoTheme(
                      data: CupertinoThemeData(
                          brightness: CupertinoTheme.of(context).brightness,
                          textTheme: CupertinoTextThemeData(
                            dateTimePickerTextStyle: TextStyle(fontSize: 20),
                          )),
                      child: CupertinoDatePicker(
                        initialDateTime: DateTime(currentYear),
                        onDateTimeChanged: (DateTime newDate) {
                          selectedDate = newDate;
                          boolSelected = true;
                          ref
                              .read(controllerPassportExpiration.notifier)
                              .update((state) => DateFormat('yyyy-MM')
                                  .format(selectedDate)
                                  .toString());
                        },
                        mode: CupertinoDatePickerMode.monthYear,
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
