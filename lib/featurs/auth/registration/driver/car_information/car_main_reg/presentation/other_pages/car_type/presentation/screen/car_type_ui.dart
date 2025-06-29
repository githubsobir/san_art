import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:san_art/core/back_image/back_image1.dart';
import 'package:san_art/core/routes/routes.dart';
import 'package:san_art/core/theme/colors/colors_app.dart';
import 'package:san_art/core/widgets/loading.dart';
import 'package:san_art/featurs/auth/registration/driver/car_information/car_main_reg/presentation/other_pages/car_type/presentation/provider/car_type_state.dart';

@RoutePage()
class CarTypeUiPage extends ConsumerStatefulWidget {
  const CarTypeUiPage({super.key});

  @override
  ConsumerState<CarTypeUiPage> createState() => _CarTypeUiPageState();
}

class _CarTypeUiPageState extends ConsumerState<CarTypeUiPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: AppColors.transparent,
        iconTheme: IconThemeData(color: AppColors.textAppBarColor(context)),
        title: Text(
          "CarType",
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
                      ref.watch(controllerCarType).when(
                            data: (data) {
                              return Expanded(
                                child: Padding(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 10, vertical: 10),
                                  child: ListView.builder(
                                    itemCount: data.length,
                                    itemBuilder: (context, index) {
                                      return truckCategoryCard(
                                        title: data[index].name.toString(),
                                        imagePath: data[index].image.toString(),
                                        backgroundColor: Colors.grey[50]!,
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

  Widget truckCategoryCard(
      {required String title,
      required String imagePath,
      required Color backgroundColor}) {
    return InkWell(
      onTap: () {
        context.router.push(CarMarkUiRoute());
      },
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 19),
            ),
            Icon(
              Icons.arrow_forward_ios_rounded,
              size: 15,
            )
          ],
        ),
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              border: BoxBorder.all(
                color: Colors.grey[300]!,
              )),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: CachedNetworkImage(
              imageUrl: imagePath,
              height: 150,
              width: double.infinity,
              alignment: Alignment.center,
              fit: BoxFit.cover,
              errorWidget: (context, url, error) {
                return Center(
                  child: Text(error.toString()),
                );
              },
            ),
          ),
        )
      ]),
    );
  }
}
