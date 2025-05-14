import 'dart:developer';
import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:san_art/core/back_image/back_image1.dart';
import 'package:san_art/core/data/hive_san_art.dart';
import 'package:san_art/core/routes/routes.dart';
import 'package:san_art/core/screen_size/get_size.dart';
import 'package:san_art/core/theme/colors/colors_app.dart';
import 'package:san_art/core/theme/theme_switcher.dart';
import 'package:san_art/core/widgets/buttons/button_primary.dart';
import 'package:san_art/featurs/auth/sms_page/domain/entities/request/sms_page_req_entites.dart';
import 'package:san_art/featurs/auth/sms_page/presentation/provider/sms_page_provider.dart';
import 'package:timer_count_down/timer_controller.dart';
import 'package:timer_count_down/timer_count_down.dart';

@RoutePage()
class SmsPage extends ConsumerStatefulWidget {
  final String windowId;
  final String phoneNumber;

  const SmsPage({super.key, required this.windowId, required this.phoneNumber});

  @override
  ConsumerState<SmsPage> createState() => _SmsPageState();
}

class _SmsPageState extends ConsumerState<SmsPage> {
  String currentText = "";
  var box = HiveBoxes();
  late CountdownController countdownController =
      CountdownController(autoStart: true);
  TextEditingController textEditingController = TextEditingController();

  @override
  void dispose() {
    textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    ref.listen(smsNotifierProvider, (previous, next) {
      log("!!!!!!!");
      log(next.toString());
      log("######");
      if (next.value != null) {}
    });
    return Scaffold(
      body: backImage1(
          child: Container(
            margin: EdgeInsets.all(15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 56),
                IconButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    icon: Icon(
                      Platform.isIOS ? Icons.arrow_back_ios : Icons.arrow_back,
                    )),
                const SizedBox(height: 40),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  child: Text("passCode".tr(),
                      style: TextStyle(
                          fontFamily: "Inter",
                          fontWeight: FontWeight.w700,
                          fontSize: 30)),
                ),
                const SizedBox(height: 12),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    'verificationCode'.tr(args: [box.userPhone]),
                    textAlign: TextAlign.start,
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontFamily: "Inter",
                        fontSize: 18),
                  ),
                ),
                const SizedBox(height: 36),
                Align(
                  alignment: Alignment.center,
                  child: SizedBox(
                    height: 70,
                    width: AppSize.getW(context) * 0.9,
                    child: PinCodeTextField(
                      controller: textEditingController,
                      appContext: context,
                      animationType: AnimationType.fade,
                      keyboardType: TextInputType.number,
                      cursorColor: AppColors.transparent,
                      backgroundColor: AppColors.transparent,
                      enableActiveFill: true,
                      length: 5,
                      onCompleted: (val) {
                        // ref.read(textSmsCode.notifier).state = val;
                      },
                      textStyle: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontFamily: "Inter",
                          fontSize: 28),
                      pinTheme: PinTheme(
                          shape: PinCodeFieldShape.box,
                          borderRadius: BorderRadius.circular(10),
                          fieldHeight: 70,
                          fieldWidth: 65,
                          borderWidth: 0.4,
                          activeBorderWidth: 1,
                          selectedBorderWidth: 1,
                          inactiveBorderWidth: 0.4,
                          activeColor: Colors.red,
                          inactiveColor: Colors.blue.shade500,
                          activeFillColor: AppColors.transparent,
                          selectedColor: Colors.red,
                          selectedFillColor: AppColors.transparent,
                          inactiveFillColor: AppColors.transparent),
                      animationDuration: const Duration(milliseconds: 300),
                      onChanged: (value) {},
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  child: Visibility(
                      visible: true,
                      //ref.watch(smsMainController).txtSmsNote == "999",
                      child: Column(
                        children: [
                          const SizedBox(height: 20),
                          Text(
                            "smsError".tr(),
                            style: TextStyle(
                                fontFamily: "Inter",
                                color: Colors.red,
                                fontSize: 16,
                                fontWeight: FontWeight.w400),
                          )
                        ],
                      )),
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () {
                        try {
                          if (strData == "00:00") {
                            context.router.pop();
                          }
                          ref.read(smsTimeEnd.notifier).state = true;
                          countdownController.restart();
                        } catch (e) {
                          log(e.toString());
                        }
                      },
                      child: SizedBox(
                          child: Text(
                        "sendAgain".tr(),
                        style: TextStyle(
                            fontFamily: "Inter",
                            fontSize: 16,
                            fontWeight: FontWeight.w400),
                      )),
                    ),
                    const SizedBox(width: 12),
                    Countdown(
                      seconds: ref.watch(smsTimer),
                      controller: countdownController,
                      build: (BuildContext context, double time) => Text(
                        getTimerString(time.toInt()),
                        style: TextStyle(
                            fontFamily: "Inter",
                            fontSize: 16,
                            fontWeight: FontWeight.w400),
                      ),
                      interval: const Duration(seconds: 1),
                      onFinished: () {
                        ref.read(smsTimeEnd.notifier).state = false;
                      },
                    ),
                  ],
                ),
                const Spacer(),
                Visibility(
                  visible: strData != "00:00" ? true : false,
                  //ref.watch(smsTimeEnd),
                  child: PrimaryButton(
                    text: "check".tr(),
                    isLoading: ref.watch(smsNotifierProvider).isLoading,
                    onPressed: () {
                      if (textEditingController.text.toString().trim().length ==
                          5) {
                        box.userPhone = widget.phoneNumber;
                        ref.read(smsNotifierProvider.notifier).sendMessage(
                            userName: widget.phoneNumber,
                            loginSmsRequestEntities: LoginSmsRequestEntities(
                                username: widget.phoneNumber,
                                deviceName: "deviceName",
                                code: textEditingController.text
                                    .toString()
                                    .trim()));

                        try {
                          if (ref
                                  .watch(smsNotifierProvider)
                                  .value!
                                  .token
                                  .toString()
                                  .length >
                              10) {
                            if (widget.windowId.toString() == "LOGIN") {
                              context.router
                                  .push(RootRoute(val1: "val1", val2: "val2"));
                            } else if (widget.windowId.toString() ==
                                "REGISTRATION") {
                              context.router.push(FullNameRoute());
                            }
                          }
                        } catch (e) {
                          log(e.toString());
                        }
                      }
                    },
                  ),
                ),
                ThemeSwitcher(),
                const SizedBox(height: 20)
              ],
            ),
          ),
          ref: ref),
    );
  }

  String strData = "";

  String getTimerString(int seconds) {
    int min = seconds ~/ 60;
    int sec = seconds % 60;
    strData =
        '${min.toString().padLeft(2, '0')}:${sec.toString().padLeft(2, '0')}';
    return strData;
  }
}
