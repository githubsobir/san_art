import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:san_art/core/back_image/back_image1.dart';
import 'package:san_art/core/data/hive_passport/hive_passport.dart';
import 'package:san_art/core/theme/colors/colors_app.dart';
import 'package:san_art/core/theme/theme_switcher.dart';
import 'package:san_art/core/widgets/buttons/button_primary.dart';
import 'package:san_art/core/widgets/loading.dart';
import 'package:san_art/featurs/auth/registration/driver/car_information/car_main_reg/presentation/other_pages/a3_choose_payment_page/domain/entities/request/choose_payment_entities.dart';
import 'package:san_art/featurs/auth/registration/driver/car_information/car_main_reg/presentation/other_pages/a3_choose_payment_page/presentation/provider/choose_payment_provider.dart';

@RoutePage()
class ChoosePaymentPage extends ConsumerStatefulWidget {
  const ChoosePaymentPage({super.key});

  @override
  ConsumerState<ChoosePaymentPage> createState() => _ChoosePaymentPageState();
}

class _ChoosePaymentPageState extends ConsumerState<ChoosePaymentPage> {
  final box = HiveBoxDriverReg(); // Ensure Hive is initialized
  int? selectedIndex; // Track selected payment method index

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: backImage1(
        ref: ref,
        child: SafeArea(
          child: ref.watch(controllerPayment).when(
                data: (paymentMethods) =>
                    _buildContent(context, paymentMethods),
                loading: () => Center(child: appLoading1()),
                error: (error, stackTrace) =>
                    Center(child: Text('Error: $error')),
              ),
        ),
      ),
    );
  }

  Widget _buildContent(
      BuildContext context, List<PaymentMethod> paymentMethods) {
    log("paymentMethods.length.toString()");
    log(paymentMethods.length.toString());
    return Container(
      margin: const EdgeInsets.all(20),
      child: Column(
        children: [
          AppBar(
            backgroundColor: AppColors.transparent,
            iconTheme: IconThemeData(color: AppColors.textAppBarColor(context)),
            title: Text(
              'choosePaymentType'.tr(),
              maxLines: 2,
              style: TextStyle(fontWeight: FontWeight.bold, color: AppColors.textAppBarColor(context)),
            ),
          ),
          const SizedBox(height: 30),
          SizedBox(
            height: 250,
            child: ListView.builder(
              itemCount: paymentMethods.length,
              itemBuilder: (context, index) => Card(
                child: ListTile(
                  title: Text(
                    paymentMethods[index].name,
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                  trailing: Radio<String>(
                    value: paymentMethods[index].name,
                    focusColor: AppColors.primaryButtonColor(context),
                    groupValue: box.moneyWorkName.isEmpty
                        ? 'cash'.tr()
                        : box.moneyWorkName,
                    activeColor:  AppColors.primaryButtonColor(context),
                    onChanged: (value) {
                      setState(() {
                        selectedIndex = index;
                        box.moneyWorkName = paymentMethods[index].name;
                        // box.moneyWorkType = paymentMethods[index].id.toString();
                      });
                    },
                  ),
                  onTap: () {
                    setState(() {
                      selectedIndex = index;
                      box.moneyWorkName = paymentMethods[index].name;
                      // box.moneyWorkType = paymentMethods[index].id.toString();
                    });
                  },
                ),
              ),
            ),
          ),
          ThemeSwitcher(),
          const Spacer(),
          PrimaryButton(
            onPressed: () {
              if (selectedIndex != null && paymentMethods.isNotEmpty) {
                // Update any necessary state or provider
                // ref.read(controllerBoolMoneyType.notifier).update((state) => true);
                // Navigator.push(
                //   context,
                //   CupertinoPageRoute(builder: (context) =>  TextCarEnterInfo()),
                // );
              } else {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                      content: Text('Please select a payment method'.tr())),
                );
              }
            },
            text: 'continue'.tr(),
          ),
        ],
      ),
    );
  }
}
