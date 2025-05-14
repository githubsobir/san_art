import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:san_art/core/back_image/back_image1.dart';
import 'package:san_art/core/routes/routes.dart';
import 'package:san_art/core/theme/colors/colors_app.dart';
import 'package:san_art/core/widgets/buttons/button_primary.dart';
import 'package:san_art/core/widgets/buttons/secondry.dart';
import 'package:san_art/generated/assets.dart';

@RoutePage()
class ChooseLogRegPage extends StatelessWidget {
  const ChooseLogRegPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Consumer(
      builder: (context, ref, child) => backImage1(
          child: Column(children: [
            const SizedBox(
              height: 10,
            ),
            Expanded(
              child: Stack(
                children: [
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 10),
                    width: double.infinity,
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(32),
                        ),
                        image: DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage(
                            Assets.imagesTruck,
                          ),
                        ),
                        color: Colors.transparent),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                          margin: const EdgeInsets.fromLTRB(0, 55, 22, 0),
                          padding: const EdgeInsets.symmetric(horizontal: 12),
                          child: IconButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              icon: Icon(
                                Platform.isIOS
                                    ? Icons.arrow_back_ios
                                    : Icons.arrow_back,
                              ))),
                      Align(
                          alignment: Alignment.topRight,
                          child: GestureDetector(
                            onTap: () {
                              // Navigator.pushAndRemoveUntil(
                              //     context,
                              //     CupertinoPageRoute(
                              //       builder: (context) => const RootPage(),
                              //     ),
                              //         (route) => false);
                            },
                            child: Container(
                              margin: const EdgeInsets.fromLTRB(0, 60, 22, 0),
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 12, vertical: 6),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(6),
                                  color: AppColors.primaryButtonColor(context)),
                              child: Text("skip".tr(),
                                  style: TextStyle(
                                      fontFamily: "Inter",
                                      fontSize: 12,
                                      fontWeight: FontWeight.w600)),
                            ),
                          )),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(right: 25, left: 25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    "explore".tr(),
                    style: TextStyle(
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.w700,
                        fontSize: 32),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 36),
                    child: Text(
                      "exploreText".tr(),
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontFamily: "Inter",
                          fontWeight: FontWeight.w400,
                          fontSize: 17),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  PrimaryButton(
                    text: "enter".tr(),
                    onPressed: () {
                      context.router.push(LoginRoute());
                    },
                  ),
                  const SizedBox(height: 12),
                  SecondaryButton(
                    text: "registration".tr(),
                    onPressed: () {
                      context.router.push(UserCategoryRoute());
                    },
                  ),
                  const SizedBox(
                    height: 20,
                  )
                ],
              ),
            ),
          ]),
          ref: ref),
    ));
  }
}
