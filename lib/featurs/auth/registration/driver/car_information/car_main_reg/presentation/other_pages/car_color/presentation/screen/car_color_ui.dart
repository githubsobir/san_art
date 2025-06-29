import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:san_art/core/back_image/back_image1.dart';
import 'package:san_art/core/routes/routes.dart';
import 'package:san_art/core/theme/colors/colors_app.dart';
import 'package:san_art/core/theme/theme_switcher.dart';
import 'package:san_art/core/widgets/loading.dart';
import 'package:san_art/featurs/auth/registration/driver/car_information/car_main_reg/presentation/other_pages/car_color/presentation/provider/car_color_state.dart';

@RoutePage()
class CarColorUiPage extends ConsumerStatefulWidget {
  const CarColorUiPage({super.key});

  @override
  ConsumerState<CarColorUiPage> createState() => _CarColorUiPageState();
}

class _CarColorUiPageState extends ConsumerState<CarColorUiPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: AppColors.transparent,
        iconTheme: IconThemeData(color: AppColors.textAppBarColor(context)),
        title: Text(
          "Car Color",
          style: TextStyle(
              fontWeight: FontWeight.bold,
              color: AppColors.textAppBarColor(context)),
        ),
      ),
      body: backImage1(
          child: SafeArea(
              child: Container(
                  margin: EdgeInsets.all(10),
                  child: Column(
                    children: [
                      ThemeSwitcher(),
                      ref.watch(controllerCarColor).when(
                            data: (data) {
                              return Expanded(
                                child: Padding(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 10, vertical: 10),
                                  child: ListView.builder(
                                    itemCount: data.length,
                                    itemBuilder: (context, index) {
                                      return Card(
                                        elevation: 0,
                                        child: ListTile(
                                            shape: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Colors.grey, width: 1),
                                              borderRadius:
                                                  BorderRadius.circular(8),
                                            ),
                                            onTap: () {
                                              context.router
                                                  .push(CarYearInputRoute());
                                            },
                                            leading: Container(
                                              width: 45,
                                              decoration: BoxDecoration(
                                                border: Border.all(
                                                    color: Colors.grey,
                                                    width: 1),
                                                color: Color(int.parse(
                                                    "0xFF${data[index].rgm.substring(1)}")),
                                                shape: BoxShape.circle,
                                              ),
                                            ),
                                            title: Text(
                                              data[index].name,
                                              style: const TextStyle(
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            trailing: Icon(Icons
                                                .arrow_forward_ios_rounded)),
                                      );
                                    },
                                  ),
                                ),
                              );
                            },
                            error: (error, stackTrace) {
                              return Center(child: Text(error.toString()));
                            },
                            loading: () => Center(child: appLoading1()),
                          )
                    ],
                  ))),
          ref: ref),
    );
  }
}
