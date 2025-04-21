import 'dart:developer';

import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:san_art/core/back_image/back_image1.dart';
import 'package:san_art/core/data/hive_san_art.dart';
import 'package:san_art/core/theme/colors/colors_app.dart';
import 'package:san_art/core/theme/theme_switcher.dart';
import 'package:san_art/core/widgets/buttons/button_primary.dart';
import 'package:san_art/featurs/auth/login/domain/entities/get_region_entities.dart';
import 'package:san_art/featurs/auth/login/presentation/states/region_state.dart';
import 'package:auto_route/auto_route.dart';

@RoutePage()
class LoginPage extends ConsumerStatefulWidget {
  const LoginPage({super.key});

  @override
  ConsumerState<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends ConsumerState<LoginPage> {
  TextEditingController textEditingController = TextEditingController();
  TextEditingController textSearchDropDown = TextEditingController();

  final _formKey = GlobalKey<FormState>();
  var box = HiveBoxes();
  var maskFormatter = MaskTextInputFormatter(
      mask: '+### ## ###-##-##',
      filter: {"#": RegExp(r'[0-9]')},
      type: MaskAutoCompletionType.lazy);
  RegionEntity? selectedValue;

  @override
  Widget build(BuildContext context) {
    final asyncEither = ref.watch(userNotifierProvider);
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        iconTheme: IconThemeData(),
        elevation: 0,
        backgroundColor: AppColors.transparent,
        title: Text(
          "login".tr(),
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 30,
              color: AppColors.textAppBarColor(context)),
        ),
      ),
      body: backImage1(
          ref: ref,
          child: SafeArea(
              child: Container(
            margin: const EdgeInsets.only(left: 20, right: 20),
            child: Column(
              children: [
                const SizedBox(height: 30),
                Text(
                  "registrationText".tr(),
                  style: TextStyle(fontWeight: FontWeight.w400, fontSize: 16),
                ),
                SizedBox(height: 20),
                SizedBox(
                    child: asyncEither.when(data: (data) {
                  return data.when(
                      (success) => Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              border: Border.all(
                                  color:
                                      AppColors.textInputBorderColor(context),
                                  width: 0.6),
                            ),
                            height: 50,
                            width: double.infinity,
                            padding: EdgeInsets.fromLTRB(0, 0, 15, 0),
                            child: DropdownButtonHideUnderline(
                                child: DropdownButton2<RegionEntity>(
                              isExpanded: true,
                              dropdownSearchData: DropdownSearchData(
                                  searchInnerWidgetHeight: 50,
                                  searchInnerWidget: TextFormField(
                                    decoration: InputDecoration(
                                      hintText: "Qidiruv",
                                      hintStyle: TextStyle(fontSize: 12),
                                    ),
                                    controller: textSearchDropDown,
                                  ),
                                  searchController: textSearchDropDown),
                              alignment: Alignment.bottomCenter,
                              items: success
                                  .map((e) => DropdownMenuItem<RegionEntity>(
                                      value: e,
                                      child: Text(
                                        "${e.name} +998 ",
                                        textAlign: TextAlign.left,
                                      )))
                                  .toList(),
                              value: selectedValue,
                              onChanged: (RegionEntity? value) {
                                setState(() {
                                  selectedValue = value!;
                                });
                              },
                              dropdownStyleData: DropdownStyleData(
                                maxHeight: 400,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(14),
                                ),
                                offset: const Offset(0, -10),
                                scrollbarTheme: ScrollbarThemeData(
                                  radius: const Radius.circular(40),
                                ),
                              ),
                              menuItemStyleData: const MenuItemStyleData(
                                height: 40,
                                padding: EdgeInsets.only(left: 14, right: 14),
                              ),
                            )),
                          ),
                      (error) => Text(error.toString()));
                }, error: (error, er) {
                  return Center(child: Text(er.toString()));
                }, loading: () {
                  return Center(child: CircularProgressIndicator());
                })),
                SizedBox(height: 30),
                Form(
                    key: _formKey,
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    child: TextFormField(
                        inputFormatters: [maskFormatter],
                        maxLength: 17,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                                borderSide: BorderSide(
                                    width: 0.6,
                                    color: AppColors.textInputBorderColor(
                                        context))),
                            border: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: AppColors.textInputBorderColor(
                                        context))),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                                borderSide: BorderSide(
                                    width: 0.6,
                                    color: AppColors.textInputBorderColor(
                                        context)),
                                gapPadding: 1),
                            filled: true,
                            fillColor: AppColors.transparent,
                            hintText: "enterPhoneNum".tr(),
                            hintStyle: TextStyle(fontStyle: FontStyle.normal)),
                        controller: textEditingController,
                        onChanged: (String value) {
                          log(value.replaceAll("-", ""));
                          if (value.isNotEmpty) {
                            // ref
                            //     .read(controllerLogin.notifier)
                            //     .getPhoneCodeByTypeUser(
                            //     valPhone: value.replaceAll("-",""));
                          }
                        })),
                ThemeSwitcher(),
                const Spacer(),
                PrimaryButton(
                  onPressed: () {
                    if (textEditingController.text.toString().length <= 8) {
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                          content: Text("checkInfo".tr()),
                          duration: const Duration(milliseconds: 2200)));
                    } else {
                      box.userPhone = textEditingController.text;
                      // ref
                      //     .read(controllerLogin.notifier)
                      //     .sentForLogin(context: context);
                    }
                  },
                  text: "continue".tr(),
                ),
              ],
            ),
          ))),
    );
  }
}
