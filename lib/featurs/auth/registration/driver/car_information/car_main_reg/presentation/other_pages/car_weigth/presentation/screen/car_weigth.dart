import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:san_art/core/back_image/back_image1.dart';
import 'package:san_art/core/data/hive_passport/hive_passport.dart';
import 'package:san_art/core/routes/routes.dart';
import 'package:san_art/core/theme/colors/colors_app.dart';
import 'package:san_art/core/theme/theme_switcher.dart';
import 'package:san_art/core/widgets/buttons/button_primary.dart';
import 'package:san_art/core/widgets/loading.dart';
import 'package:san_art/featurs/auth/registration/driver/car_information/car_main_reg/presentation/other_pages/car_weigth/domain/entities/respond/car_weigth.dart';
import 'package:san_art/featurs/auth/registration/driver/car_information/car_main_reg/presentation/other_pages/car_weigth/presentation/provider/car_weiht_state.dart';

@RoutePage()
class CarWeightPage extends ConsumerStatefulWidget {
  const CarWeightPage({super.key});

  @override
  ConsumerState<CarWeightPage> createState() => _CarWeightPageState();
}

class _CarWeightPageState extends ConsumerState<CarWeightPage> {
  final box = HiveBoxDriverReg(); // Ensure Hive is initialized
  int? selectedIndex; // Track selected payment method index

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar:  AppBar(
        backgroundColor: AppColors.transparent,
        iconTheme: IconThemeData(color: AppColors.textAppBarColor(context)),
        title: Text(
          'choosePaymentType'.tr(),
          maxLines: 2,
          style: TextStyle(
              fontWeight: FontWeight.bold,
              color: AppColors.textAppBarColor(context)),
        ),
      ),
      body: backImage1(
        ref: ref,
        child: SafeArea(
          child: ref.watch(controllerWeight).when(
                data: (controllerWeight) =>
                    _buildContent(context, controllerWeight),
                loading: () => Center(child: appLoading1()),
                error: (error, stackTrace) =>
                    Center(child: Text('Error: $error')),
              ),
        ),
      ),
    );
  }

  Widget _buildContent(
      BuildContext context, List<CarWeightEntity> carWeightEntities) {
    log("paymentMethods.length.toString()");
    log(carWeightEntities.length.toString());
    return Container(
      margin: const EdgeInsets.all(20),
      child: Column(
        children: [

          const SizedBox(height: 30),
          Expanded(
            child: ListView.builder(
              itemCount: carWeightEntities.length,
              itemBuilder: (context, index) => Card(
                child: ListTile(
                    shape: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
                  onTap: (){

                    context.router.push(CarTypeUiRoute());
                  },
                    title: Text(
                      carWeightEntities[index].name,
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                    trailing: Icon(Icons.arrow_forward_ios_rounded)),
              ),
            ),
          ),
          ThemeSwitcher(),

        ],
      ),
    );
  }
}
