import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:san_art/core/back_image/back_image1.dart';
import 'package:san_art/core/data/hive_san_art.dart';
import 'package:san_art/core/routes/routes.dart';
import 'package:san_art/core/theme/colors/colors_app.dart';
import 'package:san_art/core/theme/theme_switcher.dart';
import 'package:san_art/core/widgets/buttons/button_primary.dart';
import 'package:san_art/core/widgets/snacbars/widget_snackbars.dart';
import 'package:san_art/featurs/auth/login/domain/entities/region/get_region_entities.dart';
import 'package:san_art/featurs/auth/login/presentation/states/login_state.dart';
import 'package:san_art/featurs/auth/login/presentation/states/region_state.dart';

@RoutePage()
class LoginPage extends ConsumerStatefulWidget {
  const LoginPage({super.key});

  @override
  ConsumerState<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends ConsumerState<LoginPage> {
  final FocusNode _focusNode = FocusNode();
  TextEditingController textEditingController = TextEditingController();
  TextEditingController textSearchDropDown = TextEditingController();

  final _formKey = GlobalKey<FormState>();
  var box = HiveBoxes();
  var maskFormatter = MaskTextInputFormatter(
      mask: '(##) ###-##-##',
      filter: {"#": RegExp(r'[0-9]')},
      type: MaskAutoCompletionType.lazy);

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Future.delayed(Duration.zero);
      log("****ISHLADI*****");
      // endi ref tayyor bo‘lganidan keyin chaqiriladi
    });
    super.initState();
  }

  @override
  dispose() {
    textEditingController.dispose();
    super.dispose();
  }

  listenServer() {
    ref.listen(loginNotifierProvider, (previous, next) {
      log("previous.toString()");
      log(previous.toString());
      log("next.toString()");
      log(next.toString());
      if (next.value?.detail.toString() == "Sms is sent." &&
          ref.watch(nextPageProvider) == 1) {
        context.router.push(SmsRoute(
            windowId: "LOGIN",
            phoneNumber: ref.watch(selectPhoneCode) +
                textEditingController.text
                    .toString()
                    .replaceAll("-", "")
                    .replaceAll("(", "")
                    .replaceAll(")", "").replaceAll(" ", "")));
        ref.read(nextPageProvider.notifier).state = 0;
      } else if (previous?.error != next.error) {
        WidgetSnackBar.errorSnackBar(
            context: context, text: next.error.toString());
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final asyncEither = ref.watch(userNotifierProvider);
    listenServer();
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
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 30),
                Text(
                  "registrationText".tr(),
                  style: TextStyle(fontWeight: FontWeight.w400, fontSize: 16),
                ),
                SizedBox(height: 20),
                Text("choose".tr()),
                SizedBox(height: 4),
                SizedBox(
                    child: asyncEither.when(data: (data) {
                  return Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(
                          color: AppColors.textInputBorderColor(context),
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
                                hintText: "search".tr(),
                                hintStyle: TextStyle(fontSize: 12)),
                            controller: textSearchDropDown,
                          ),
                          searchController: textSearchDropDown),
                      alignment: Alignment.bottomCenter,
                      items: data
                          .map((e) => DropdownMenuItem<RegionEntity>(
                              value: e,
                              child: Text(
                                e.name,
                                textAlign: TextAlign.left,
                              )))
                          .toList(),
                      value: ref.watch(selectCountryValue)!,
                      onChanged: (RegionEntity? value) {
                        ///
                        ref.read(selectCountryValue.notifier).state = value!;
                        ref.read(selectPhoneCode.notifier).state =
                            value.code.toString();
                        FocusScope.of(context).requestFocus(_focusNode);
                        textEditingController.clear();
                        maskFormatter.updateMask(
                            mask: value.mask,
                            filter: {"#": RegExp(r'[0-9]')},
                            type: MaskAutoCompletionType.lazy);

                        ///
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
                  );
                }, error: (error, er) {
                  return Center(child: Text(er.toString()));
                }, loading: () {
                  return Center(child: CircularProgressIndicator());
                })),
                SizedBox(height: 30),
                Text(
                  "enterPhoneNum".tr(),
                  style: TextStyle(fontWeight: FontWeight.w400),
                ),
                SizedBox(height: 4),
                Form(
                    key: _formKey,
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    child: TextFormField(
                      controller: textEditingController,
                      focusNode: _focusNode,
                      inputFormatters: [maskFormatter],
                      maxLength: 17,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                          prefixText: ref.watch(selectPhoneCode),
                          suffixIcon: IconButton(
                            onPressed: () {
                              textEditingController.clear();
                            },
                            icon: Icon(Icons.highlight_remove_sharp),
                          ),
                          filled: true,
                          fillColor: AppColors.transparent,
                          counter: SizedBox.shrink(),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                              borderSide: BorderSide(
                                  width: 0.6,
                                  color:
                                      AppColors.textInputBorderColor(context))),
                          border: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color:
                                      AppColors.textInputBorderColor(context))),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                              borderSide: BorderSide(
                                  width: 0.6,
                                  color:
                                      AppColors.textInputBorderColor(context)),
                              gapPadding: 1)),
                    )),
                ThemeSwitcher(),
                const Spacer(),
                PrimaryButton(
                  isLoading: ref.watch(loginNotifierProvider).isLoading,
                  onPressed: () {
                    if (textEditingController.text.toString().length <= 8) {
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                          content: Text("checkInfo".tr()),
                          duration: const Duration(milliseconds: 2200)));
                    } else {
                      box.userPhone = textEditingController.text;

                      ref.read(loginNotifierProvider.notifier).sendMessage(
                          deviceName: "",
                          userName: ref.watch(selectPhoneCode) +
                              textEditingController.text
                                  .toString()
                                  .replaceAll("-", "")
                                  .replaceAll("(", "")
                                  .replaceAll(")", "").replaceAll(" ", ""));
                      ref.read(nextPageProvider.notifier).state = 1;
                    }
                  },
                  text: "continue".tr(),
                )
              ],
            ),
          ))),
    );
  }
}
