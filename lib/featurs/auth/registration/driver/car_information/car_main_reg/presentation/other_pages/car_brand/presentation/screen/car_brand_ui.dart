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
import 'package:san_art/featurs/auth/registration/driver/car_information/car_main_reg/presentation/other_pages/car_brand/presentation/provider/car_brand_state.dart';

@RoutePage()
class CarBrandUiPage extends ConsumerStatefulWidget {
  const CarBrandUiPage({super.key});

  @override
  ConsumerState<CarBrandUiPage> createState() => _CarBrandUiPageState();
}

class _CarBrandUiPageState extends ConsumerState<CarBrandUiPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: AppColors.transparent,
        iconTheme: IconThemeData(color: AppColors.textAppBarColor(context)),
        title: Text(
          "CarBrand",
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
                // Search container
                Container(

                  margin: EdgeInsets.symmetric(vertical: 10),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.grey[100],
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Поиск по типу кузова',
                          hintStyle: TextStyle(color: Colors.grey[500]),
                          prefixIcon: Icon(Icons.search, color: Colors.grey[500]),
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.symmetric(
                              horizontal: 20, vertical: 15),
                        ),
                      ),
                    ),
                  ),
                ),

                // Main content
                Expanded(
                  child: ref.watch(controllerCarBrand).when(
                    data: (data) {
                      return Column(
                        children: [
                          // Car brands list
                          Expanded(
                            child: ListView.builder(
                              itemCount: data.length,
                              itemBuilder: (context, index) {
                                return Card(
                                  margin: EdgeInsets.symmetric(
                                      horizontal: 10, vertical: 5),
                                  child: ListTile(
                                    shape: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(8)),
                                    onTap: () {
                                      context.router.push(CarTypeUiRoute());
                                    },
                                    title: Text(
                                      data[index].name,
                                      style: const TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                    trailing: Icon(Icons.arrow_forward_ios_rounded),
                                  ),
                                );
                              },
                            ),
                          ),


                        ThemeSwitcher()
                        ],
                      );
                    },
                    error: (error, stackTrace) {
                      return Center(child: Text(error.toString()));
                    },
                    loading: () => Center(child: appLoading1()),
                  ),
                ),
              ],
            ),
          ),
        ),
        ref: ref,
      ),
    );
  }
}