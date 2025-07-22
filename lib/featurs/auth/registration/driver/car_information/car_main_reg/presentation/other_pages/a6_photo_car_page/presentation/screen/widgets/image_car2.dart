import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:san_art/core/theme/colors/colors_app.dart';
import 'package:san_art/core/widgets/buttons/button_primary.dart';
import 'package:san_art/featurs/auth/registration/driver/car_information/car_main_reg/presentation/other_pages/a6_photo_car_page/presentation/provider/car_photo_state.dart';

class PhotoCarPhoto2 extends ConsumerStatefulWidget {
  const PhotoCarPhoto2({super.key});

  @override
  ConsumerState<PhotoCarPhoto2> createState() => _PhotoCarPhoto2State();
}

class _PhotoCarPhoto2State extends ConsumerState<PhotoCarPhoto2> {
  @override
  Widget build(BuildContext context) {
    // State'ni kuzatish
    final carPhotoState = ref.watch(controllerCarPhoto6);
    final carPhotoNotifier = ref.read(controllerCarPhoto6.notifier);

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        actions: [
          GestureDetector(
            onTap: () {
              try {
                if (carPhotoNotifier.file1?.path.isNotEmpty == true) {
                  Navigator.of(context).pop();
                  carPhotoNotifier.setDefault();
                }
              } catch (e) {
                log(e.toString());
              }
            },
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child:
                  Icon(Icons.check, color: AppColors.textAppBarColor(context)),
            ),
          )
        ],
        iconTheme: IconThemeData(color: AppColors.textAppBarColor(context)),
      ),
      body: SafeArea(
        child: Container(
          margin: const EdgeInsets.all(20),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    carPhotoNotifier.getImage(1);
                  },
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.3,
                    width: MediaQuery.of(context).size.width * 0.9,
                    decoration: BoxDecoration(
                        border: Border.all(
                      color: Colors.white,
                    )),
                    child: hasFile2()
                        ? Image.file(
                            carPhotoNotifier.file2!,
                            fit: BoxFit.cover,
                          )
                        : const Icon(Icons.image,
                            size: 50, color: Colors.white),
                  ),
                ),
                const SizedBox(height: 40),
                const Row(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Лицевая сторона",
                            style: TextStyle(
                                fontSize: 30, fontWeight: FontWeight.bold),
                            textAlign: TextAlign.start),
                        SizedBox(height: 20),
                        Text(
                            "Добейтес совпадения ИД карты с рамкой.\nУбедитес что:",
                            style: TextStyle(fontWeight: FontWeight.normal),
                            textAlign: TextAlign.start),
                        SizedBox(height: 20),
                        Text("-ИД карта хорошо освещена",
                            style: TextStyle(fontWeight: FontWeight.normal),
                            textAlign: TextAlign.start),
                        Text("ИД карта не перекрывается пальцем",
                            style: TextStyle(fontWeight: FontWeight.normal),
                            textAlign: TextAlign.start),
                        Text("-Отсутствуют блики",
                            style: TextStyle(fontWeight: FontWeight.normal),
                            textAlign: TextAlign.start),
                      ],
                    )
                  ],
                ),
                const SizedBox(height: 30),
                PrimaryButton(
                  onPressed: () {
                    carPhotoNotifier.getImageCamera(1);
                  },
                  text: "Сделать фото",
                ),
                const SizedBox(height: 25),
                PrimaryButton(
                  onPressed: () {
                    carPhotoNotifier.getImage(1);
                  },
                  text: "Галерея фото",
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  bool hasFile2() {
    try {
      final file = ref.read(controllerCarPhoto6.notifier).file2;
      return file != null && file.path.isNotEmpty;
    } catch (e) {
      return false;
    }
  }
}
