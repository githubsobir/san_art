// import 'dart:developer';
//
// import 'package:auto_route/auto_route.dart';
// import 'package:dropdown_button2/dropdown_button2.dart';
// import 'package:easy_localization/easy_localization.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
// import 'package:san_art/core/back_image/back_image1.dart';
// import 'package:san_art/core/data/hive_san_art.dart';
// import 'package:san_art/core/routes/routes.dart';
// import 'package:san_art/core/theme/colors/colors_app.dart';
// import 'package:san_art/core/theme/theme_switcher.dart';
// import 'package:san_art/core/widgets/buttons/button_primary.dart';
// import 'package:san_art/featurs/auth/login/presentation/states/region_state.dart';
// import 'package:san_art/featurs/auth/registration/phone_registration/domain/entities/region/get_region_entities.dart';
// import 'package:san_art/featurs/auth/registration/phone_registration/presentation/states/region_state.dart';
// import 'package:san_art/featurs/auth/registration/phone_registration/presentation/states/registration_state.dart';
//
// @RoutePage()
// class RegistrationPhonePage extends ConsumerStatefulWidget {
//   const RegistrationPhonePage({super.key});
//
//   @override
//   ConsumerState<RegistrationPhonePage> createState() =>
//       _RegistrationPhonePageState();
// }
//
// class _RegistrationPhonePageState extends ConsumerState<RegistrationPhonePage> {
//   final FocusNode _focusNode = FocusNode();
//   TextEditingController textEditingController = TextEditingController();
//   TextEditingController textSearchDropDown = TextEditingController();
//
//   int click = 1;
//   final _formKey = GlobalKey<FormState>();
//   var box = HiveBoxes();
//   var maskFormatter = MaskTextInputFormatter(
//       mask: '(##) ###-##-##',
//       filter: {"#": RegExp(r'[0-9]')},
//       type: MaskAutoCompletionType.lazy);
//
//   @override
//   dispose() {
//     textEditingController.dispose();
//     textSearchDropDown.dispose();
//     _focusNode.dispose();
//     super.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     final asyncEither = ref.watch(userRegistrationNotifierProvider);
//
//     ref.listen(registrationNotifierProvider, (previous, next) {
//       try {
//         if (!previous!.isLoading &&
//             ref
//                 .watch(registrationNotifierProvider)
//                 .value!
//                 .detail
//                 .toString()
//                 .contains("Sms is sent.") &&
//             click == 1) {
//           ///
//           context.router.push(SmsRoute(
//               windowId: "REGISTRATION",
//               phoneNumber: ref.watch(selectPhoneCode) +
//                   textEditingController.text
//                       .replaceAll("-", "")
//                       .replaceAll("(", "")
//                       .replaceAll(")", "")
//                       .replaceAll(" ", "")
//                       .toString()));
//
//           click = 2;
//         }
//       } catch (e) {
//         log(e.toString());
//       }
//     });
//
//     return Scaffold(
//       extendBodyBehindAppBar: true,
//       appBar: AppBar(
//         iconTheme: IconThemeData(),
//         elevation: 0,
//         backgroundColor: AppColors.transparent,
//         title: Text(
//           "registration".tr(),
//           style: TextStyle(
//               fontWeight: FontWeight.bold,
//               fontSize: 30,
//               color: AppColors.textAppBarColor(context)),
//         ),
//       ),
//       body: backImage1(
//           ref: ref,
//           child: SafeArea(
//               child: Container(
//             margin: const EdgeInsets.only(left: 20, right: 20),
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.start,
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 const SizedBox(height: 30),
//                 Text(
//                   "registrationText".tr(),
//                   style: TextStyle(fontWeight: FontWeight.w400, fontSize: 16),
//                 ),
//                 SizedBox(height: 20),
//                 Text("choose".tr()),
//                 SizedBox(height: 4),
//                 SizedBox(
//                     child: asyncEither.when(data: (data) {
//                   return Container(
//                     decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(8),
//                       border: Border.all(
//                           color: AppColors.textInputBorderColor(context),
//                           width: 0.6),
//                     ),
//                     height: 50,
//                     width: double.infinity,
//                     padding: EdgeInsets.fromLTRB(0, 0, 15, 0),
//                     child: DropdownButtonHideUnderline(
//                         child: DropdownButton2<RegistrationPhoneRegionEntity>(
//                       isExpanded: true,
//                       dropdownSearchData: DropdownSearchData(
//                           searchInnerWidgetHeight: 50,
//                           searchInnerWidget: TextFormField(
//                             decoration: InputDecoration(
//                               hintText: "search".tr(),
//                               hintStyle: TextStyle(fontSize: 12),
//                             ),
//                             controller: textSearchDropDown,
//                           ),
//                           searchController: textSearchDropDown),
//                       alignment: Alignment.bottomCenter,
//                       items: data
//                           .map((e) =>
//                               DropdownMenuItem<RegistrationPhoneRegionEntity>(
//                                   value: e,
//                                   child: Text(
//                                     e.name,
//                                     textAlign: TextAlign.left,
//                                   )))
//                           .toList(),
//                       value: ref.watch(selectCountryValueRegistrationPhone)!,
//                       onChanged: (RegistrationPhoneRegionEntity? value) {
//                         ///
//                         ref
//                             .read(selectCountryValueRegistrationPhone.notifier)
//                             .state = value!;
//                         ref.read(selectPhoneCodeRegistration.notifier).state =
//                             value.code.toString();
//                         FocusScope.of(context).requestFocus(_focusNode);
//                         textEditingController.clear();
//                         maskFormatter.updateMask(
//                             mask: value.mask,
//                             filter: {"#": RegExp(r'[0-9]')},
//                             type: MaskAutoCompletionType.lazy);
//
//                         ///
//                       },
//                       dropdownStyleData: DropdownStyleData(
//                         maxHeight: 400,
//                         decoration: BoxDecoration(
//                           borderRadius: BorderRadius.circular(14),
//                         ),
//                         offset: const Offset(0, -10),
//                         scrollbarTheme: ScrollbarThemeData(
//                           radius: const Radius.circular(40),
//                         ),
//                       ),
//                       menuItemStyleData: const MenuItemStyleData(
//                         height: 40,
//                         padding: EdgeInsets.only(left: 14, right: 14),
//                       ),
//                     )),
//                   );
//                 }, error: (error, er) {
//                   return Center(child: Text(er.toString()));
//                 }, loading: () {
//                   return Center(child: CircularProgressIndicator());
//                 })),
//                 SizedBox(height: 30),
//                 Text(
//                   "enterPhoneNum".tr(),
//                   style: TextStyle(fontWeight: FontWeight.w400),
//                 ),
//                 SizedBox(height: 4),
//                 Form(
//                     key: _formKey,
//                     autovalidateMode: AutovalidateMode.onUserInteraction,
//                     child: TextFormField(
//                         controller: textEditingController,
//                         focusNode: _focusNode,
//                         inputFormatters: [maskFormatter],
//                         maxLength: 17,
//                         keyboardType: TextInputType.number,
//                         decoration: InputDecoration(
//                             prefixText: ref.watch(selectPhoneCode),
//                             suffixIcon: IconButton(
//                               onPressed: () {
//                                 textEditingController.clear();
//                               },
//                               icon: Icon(Icons.highlight_remove_sharp),
//                             ),
//                             filled: true,
//                             fillColor: AppColors.transparent,
//                             counter: SizedBox.shrink(),
//                             enabledBorder: OutlineInputBorder(
//                                 borderRadius: BorderRadius.circular(8),
//                                 borderSide: BorderSide(
//                                     width: 0.6,
//                                     color: AppColors.textInputBorderColor(
//                                         context))),
//                             border: OutlineInputBorder(
//                                 borderSide: BorderSide(
//                                     color: AppColors.textInputBorderColor(
//                                         context))),
//                             focusedBorder: OutlineInputBorder(
//                                 borderRadius: BorderRadius.circular(8),
//                                 borderSide: BorderSide(
//                                     width: 0.6,
//                                     color: AppColors.textInputBorderColor(
//                                         context)),
//                                 gapPadding: 1)),
//                         onChanged: (String value) {
//                           if (value.isNotEmpty) {
//                             // ref
//                             //     .read(controllerLogin.notifier)
//                             //     .getPhoneCodeByTypeUser(
//                             //     valPhone: value.replaceAll("-",""));
//                           }
//                         })),
//                 ThemeSwitcher(),
//                 const Spacer(),
//                 PrimaryButton(
//                   isLoading: ref.watch(registrationNotifierProvider).isLoading,
//                   onPressed: () {
//                     log("click = 1");
//                     click = 1;
//
//                     if (textEditingController.text.toString().length <= 8) {
//                       ScaffoldMessenger.of(context).showSnackBar(SnackBar(
//                           content: Text("checkInfo".tr()),
//                           duration: const Duration(milliseconds: 2200)));
//                     } else {
//                       box.userPhone = textEditingController.text;
//
//                       ///
//                       ref
//                           .read(registrationNotifierProvider.notifier)
//                           .sendMessage(
//                               userName: ref.watch(selectPhoneCode) +
//                                   textEditingController.text
//                                       .replaceAll("-", "")
//                                       .replaceAll("(", "")
//                                       .replaceAll(")", "")
//                                       .replaceAll(" ", "")
//                                       .toString(),
//                               deviceName: "deviceName");
//
//                       ///
//                     }
//                   },
//                   text: "continue".tr(),
//                 ),
//               ],
//             ),
//           ))),
//     );
//   }
// }
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
import 'package:san_art/featurs/auth/login/presentation/states/region_state.dart';
import 'package:san_art/featurs/auth/registration/phone_registration/domain/entities/region/get_region_entities.dart';
import 'package:san_art/featurs/auth/registration/phone_registration/presentation/states/region_state.dart';
import 'package:san_art/featurs/auth/registration/phone_registration/presentation/states/registration_state.dart';

@RoutePage()
class RegistrationPhonePage extends ConsumerStatefulWidget {
  const RegistrationPhonePage({super.key});

  @override
  ConsumerState<RegistrationPhonePage> createState() => _RegistrationPhonePageState();
}

class _RegistrationPhonePageState extends ConsumerState<RegistrationPhonePage> {
  final _focusNode = FocusNode();
  final _phoneController = TextEditingController();
  final _searchController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  final _hiveBox = HiveBoxes();
  bool _isFirstClick = true;

  // Mask formatter for phone input
  final _maskFormatter = MaskTextInputFormatter(
    mask: '(##) ###-##-##',
    filter: {'#': RegExp(r'[0-9]')},
    type: MaskAutoCompletionType.lazy,
  );

  @override
  void dispose() {
    _phoneController.dispose();
    _searchController.dispose();
    _focusNode.dispose();
    super.dispose();
  }

  // Helper method to format phone number
  String _formatPhoneNumber(String phoneCode) {
    return phoneCode + _phoneController.text.replaceAll(RegExp(r'[-()\s]'), '');
  }

  // Handle registration submission
  void _handleRegistration() {
    if (_phoneController.text.length <= 8) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('checkInfo'.tr()),
          duration: const Duration(milliseconds: 2200),
        ),
      );
      return;
    }

    _hiveBox.userPhone = _phoneController.text;
    final phoneNumber = _formatPhoneNumber(ref.watch(selectPhoneCode));
    ref.read(registrationNotifierProvider.notifier).sendMessage(
      userName: phoneNumber,
      deviceName: 'deviceName',
    );
  }

  @override
  Widget build(BuildContext context) {
    final asyncEither = ref.watch(userRegistrationNotifierProvider);

    // Listen for registration state changes
    ref.listen(registrationNotifierProvider, (previous, next) {
      if (previous?.isLoading == false &&
          next.value?.detail.contains('Sms is sent.') == true &&
          _isFirstClick) {
        _isFirstClick = false;
        context.router.push(SmsRoute(
          windowId: 'REGISTRATION',
          phoneNumber: _formatPhoneNumber(ref.watch(selectPhoneCode)),
        ));
      }
    });

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColors.transparent,
        title: Text(
          'registration'.tr(),
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 30,
            color: AppColors.textAppBarColor(context),
          ),
        ),
      ),
      body: backImage1(
        ref: ref,
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 30),
                Text(
                  'registrationText'.tr(),
                  style: const TextStyle(fontWeight: FontWeight.w400, fontSize: 16),
                ),
                const SizedBox(height: 20),
                Text('choose'.tr()),
                const SizedBox(height: 4),
                _buildCountryDropdown(asyncEither, context),
                const SizedBox(height: 30),
                Text(
                  'enterPhoneNum'.tr(),
                  style: const TextStyle(fontWeight: FontWeight.w400),
                ),
                const SizedBox(height: 4),
                _buildPhoneInput(context),
                ThemeSwitcher(),
                const Spacer(),
                PrimaryButton(
                  isLoading: ref.watch(registrationNotifierProvider).isLoading,
                  onPressed: () {
                    log('Registration button pressed');
                    _isFirstClick = true;
                    _handleRegistration();
                  },
                  text: 'continue'.tr(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildCountryDropdown(AsyncValue<List<RegistrationPhoneRegionEntity>> asyncEither, BuildContext context) {
    return asyncEither.when(
      data: (data) => Container(
        height: 50,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          border: Border.all(
            color: AppColors.textInputBorderColor(context),
            width: 0.6,
          ),
        ),
        child: DropdownButtonHideUnderline(
          child: DropdownButton2<RegistrationPhoneRegionEntity>(
            isExpanded: true,
            dropdownSearchData: DropdownSearchData(
              searchInnerWidgetHeight: 50,
              searchInnerWidget: TextFormField(
                decoration: InputDecoration(
                  hintText: 'search'.tr(),
                  hintStyle: const TextStyle(fontSize: 12),
                ),
                controller: _searchController,
              ),
              searchController: _searchController,
            ),
            alignment: Alignment.bottomCenter,
            items: data
                .map((e) => DropdownMenuItem<RegistrationPhoneRegionEntity>(
              value: e,
              child: Text(e.name, textAlign: TextAlign.left),
            ))
                .toList(),
            value: ref.watch(selectCountryValueRegistrationPhone),
            onChanged: (value) {
              if (value != null) {
                ref.read(selectCountryValueRegistrationPhone.notifier).state = value;
                ref.read(selectPhoneCodeRegistration.notifier).state = value.code;
                _focusNode.requestFocus();
                _phoneController.clear();
                _maskFormatter.updateMask(
                  mask: value.mask,
                  filter: {'#': RegExp(r'[0-9]')},
                  type: MaskAutoCompletionType.lazy,
                );
              }
            },
            dropdownStyleData: DropdownStyleData(
              maxHeight: 400,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(14)),
              offset: const Offset(0, -10),
              scrollbarTheme: const ScrollbarThemeData(radius: Radius.circular(40)),
            ),
            menuItemStyleData: const MenuItemStyleData(
              height: 40,
              padding: EdgeInsets.symmetric(horizontal: 14),
            ),
          ),
        ),
      ),
      error: (error, _) => Center(child: Text(error.toString())),
      loading: () => const Center(child: CircularProgressIndicator()),
    );
  }

  Widget _buildPhoneInput(BuildContext context) {
    return Form(
      key: _formKey,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      child: TextFormField(
        controller: _phoneController,
        focusNode: _focusNode,
        inputFormatters: [_maskFormatter],
        maxLength: 17,
        keyboardType: TextInputType.number,
        decoration: InputDecoration(
          prefixText: ref.watch(selectPhoneCode),
          suffixIcon: IconButton(
            onPressed: _phoneController.clear,
            icon: const Icon(Icons.highlight_remove_sharp),
          ),
          filled: true,
          fillColor: AppColors.transparent,
          counter: const SizedBox.shrink(),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide(
              width: 0.6,
              color: AppColors.textInputBorderColor(context),
            ),
          ),
          border: OutlineInputBorder(
            borderSide: BorderSide(color: AppColors.textInputBorderColor(context)),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide(
              width: 0.6,
              color: AppColors.textInputBorderColor(context),
            ),
          ),
        ),
      ),
    );
  }
}