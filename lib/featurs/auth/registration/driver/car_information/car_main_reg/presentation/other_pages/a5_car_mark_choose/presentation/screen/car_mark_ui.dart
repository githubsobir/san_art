import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:san_art/core/back_image/back_image1.dart';
import 'package:san_art/core/routes/routes.dart';
import 'package:san_art/core/theme/colors/colors_app.dart';
import 'package:san_art/core/theme/theme_switcher.dart';
import 'package:san_art/core/widgets/buttons/button_primary.dart';
import 'package:san_art/core/widgets/loading.dart';
import 'package:san_art/featurs/auth/registration/driver/car_information/car_main_reg/presentation/other_pages/a5_car_mark_choose/presentation/provider/car_mark_state.dart';

@RoutePage()
class CarMarkUiPage extends ConsumerStatefulWidget {
  const CarMarkUiPage({super.key});

  @override
  ConsumerState<CarMarkUiPage> createState() => _CarMarkUiPageState();
}

class _CarMarkUiPageState extends ConsumerState<CarMarkUiPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: AppColors.transparent,
        iconTheme: IconThemeData(color: AppColors.textAppBarColor(context)),
        title: Text(
          'typeTranport'.tr(),
          maxLines: 2,
          style: TextStyle(
              fontWeight: FontWeight.bold,
              color: AppColors.textAppBarColor(context)),
        ),
      ),
      body: backImage1(
          ref: ref,
          child: SafeArea(
              child: Container(
            margin: EdgeInsets.all(15),
            child: ref.watch(controllerCarMark).when(
                  data: (data) => Column(
                    children: [
                      Expanded(
                        child: ListView.builder(
                          itemCount: data.length,
                          itemBuilder: (context, index) => Card(
                            child: ListTile(
                                shape: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(8)),
                                onTap: () {
                                  context.router.push(CarColorUiRoute());
                                },
                                title: Text(
                                  data[index].name,
                                  style: const TextStyle(
                                      fontWeight: FontWeight.bold),
                                ),
                                trailing:
                                    Icon(Icons.arrow_forward_ios_rounded)),
                          ),
                        ),
                      ),
                   ThemeSwitcher()
                    ],
                  ),
                  error: (error, stackTrace) {
                    return Center(child: Text(error.toString()));
                  },
                  loading: () => Center(child: appLoading1()),
                ),
          ))),
    );
  }
}
