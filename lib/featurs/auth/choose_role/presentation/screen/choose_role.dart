import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:san_art/core/back_image/back_image1.dart';
import 'package:san_art/core/data/hive_san_art.dart';
import 'package:san_art/core/routes/routes.dart';
import 'package:san_art/core/screen_size/get_size.dart';
import 'package:san_art/core/theme/theme_switcher.dart';
import 'package:san_art/core/widgets/buttons/button_primary.dart';
import 'package:san_art/core/widgets/buttons/secondry.dart';
import 'package:san_art/core/widgets/loading.dart';
import 'package:san_art/featurs/auth/choose_role/presentation/provider/provider.dart';

@RoutePage()
class UserCategoryPage extends ConsumerStatefulWidget {
  const UserCategoryPage({super.key});

  @override
  ConsumerState<UserCategoryPage> createState() => _UserCategoryState();
}

class _UserCategoryState extends ConsumerState<UserCategoryPage> {
  var box = HiveBoxes();

  @override
  Widget build(BuildContext context) {
    final gerListRole = ref.watch(listRole);

    return Scaffold(
      body: SizedBox(
          child: backImage1(
              child: Column(
                children: [
                  Container(
                    margin: const EdgeInsets.only(right: 20, left: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: 140,
                        ),
                        Text(
                          "chooseRoll".tr(),
                          style: TextStyle(
                              fontFamily: "Poppins",
                              fontWeight: FontWeight.w700,
                              fontSize: 30),
                        ),

                        SizedBox(
                          height: AppSize.getH(context) * 0.4,
                          child: gerListRole.when(data: (data) {
                            return data.when(
                              (success) => ListView.builder(
                                itemCount: success.length,
                                itemBuilder: (context, index) => Container(
                                  margin:
                                      const EdgeInsets.only(top: 4, bottom: 4),
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                        width: (ref.watch(
                                                    userCategoryControllerIndex) ==
                                                index + 1)
                                            ? 2
                                            : 0.5,
                                      ),
                                      borderRadius:
                                          BorderRadius.circular(20.0)),
                                  child: ListTile(
                                    // focusColor: AppColors.transparent,
                                    leading: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        SvgPicture.asset(
                                          success[index].imageAssetLink,
                                          height: 32,
                                          width: 32,
                                          alignment: Alignment.topRight,
                                        ),
                                      ],
                                    ),
                                    title: Text(success[index].textCategory,
                                        textAlign: TextAlign.justify,
                                        style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontSize: 15,
                                            fontFamily: "Inter")),
                                    subtitle: Text(success[index].note,
                                        textAlign: TextAlign.justify,
                                        style: TextStyle(
                                            fontWeight: FontWeight.w400,
                                            fontSize: 12,
                                            fontFamily: "Inter")),
                                    trailing: GestureDetector(
                                      child: Radio(
                                          value: ref.watch(
                                              userCategoryControllerCheckBoxValue),
                                          autofocus: false,
                                          activeColor: Colors.orange.shade800,
                                          groupValue:
                                              success[index].textCategory,
                                          onChanged: (val) {}),
                                    ),
                                    onTap: () {
                                      onEventRadio(
                                          textCategory:
                                              success[index].textCategory,
                                          valCategory:
                                              success[index].valueCategory,
                                          index: index);
                                    },
                                  ),
                                ),
                              ),
                              (error) => Center(child: Text(error.toString())),
                            );
                          }, error: (error, errorT) {
                            return Center(child: Text(error.toString()));
                          }, loading: () {
                            return appLoading1();
                          }),
                        ),

                        //
                        PrimaryButton(
                            text: "continue".tr(),
                            onPressed: () {
                              actionButtonContinue(ref: ref);
                            }),
                        const SizedBox(height: 12),
                        Visibility(
                          visible: true,
                          child: SecondaryButton(
                            text: "skip".tr(),
                            onPressed: () {
                              box.userType = "2";

                              // Navigator.pushAndRemoveUntil(
                              //   context,
                              //   CupertinoPageRoute(
                              //     builder: (context) => const RootPage(),
                              //   ),
                              //       (route) => false,
                              // );
                            },
                          ),
                        ),
                        ThemeSwitcher(),
                        const SizedBox(height: 20),
                      ],
                    ),
                  ),
                ],
              ),
              ref: ref)),
    );
  }

  void onEventRadio(
      {required String valCategory,
      required String textCategory,
      required int index}) {
    ref.read(userCategoryControllerCheckBoxValue.notifier).state = textCategory;

    ref.read(userCategoryControllerIndex.notifier).state = index + 1;

    box.userType = valCategory;

    log(box.userType);
    log(ref.watch(userCategoryControllerCheckBoxValue));
    log(ref.watch(userCategoryControllerIndex).toString());
  }

  actionButtonContinue({required WidgetRef ref}) {
    if (ref.watch(userCategoryControllerCheckBoxValue).length > 4) {
      switch(box.userType){
        case "driver": context.router.push(RegistrationPhoneRoute( ));
        case "exporter": context.router.push(RegistrationPhoneRoute());
        case "logistic": context.router.push(RegistrationPhoneRoute());
      }
    } else {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text(
          "chooseRoll".tr(),
          style:
              const TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
        duration: const Duration(milliseconds: 2500),
      ));
    }
  }
}
