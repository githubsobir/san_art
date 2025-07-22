import 'package:auto_route/annotations.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:san_art/core/back_image/back_image1.dart';
import 'package:san_art/core/widgets/buttons/button_primary.dart';
import 'package:san_art/core/widgets/widgets.dart';
import 'package:san_art/featurs/auth/registration/driver/car_information/car_main_reg/presentation/other_pages/a6_photo_car_page/presentation/provider/car_photo_state.dart';
import 'package:san_art/featurs/auth/registration/driver/car_information/car_main_reg/presentation/other_pages/a6_photo_car_page/presentation/screen/widgets/dialog_loading.dart';
import 'package:san_art/featurs/auth/registration/driver/car_information/car_main_reg/presentation/other_pages/a6_photo_car_page/presentation/screen/widgets/image_car1.dart';
import 'package:san_art/featurs/auth/registration/driver/car_information/car_main_reg/presentation/other_pages/a6_photo_car_page/presentation/screen/widgets/image_car2.dart';
import 'package:san_art/featurs/auth/registration/driver/car_information/car_main_reg/presentation/other_pages/a6_photo_car_page/presentation/screen/widgets/image_car3.dart';
import 'package:san_art/featurs/auth/registration/driver/car_information/car_main_reg/presentation/other_pages/a6_photo_car_page/presentation/screen/widgets/image_car4.dart';
import 'package:san_art/featurs/auth/registration/driver/car_information/car_main_reg/presentation/other_pages/a6_photo_car_page/presentation/screen/widgets/image_car5.dart';

@RoutePage()
class PhotoCarDriverPage extends ConsumerStatefulWidget {
  const PhotoCarDriverPage({super.key});

  @override
  ConsumerState<PhotoCarDriverPage> createState() => _PhotoCarDriverState();
}

class _PhotoCarDriverState extends ConsumerState<PhotoCarDriverPage> {
  @override
  Widget build(BuildContext context) {
    final uploadState = ref.watch(uploadStateProvider);

    ref.listen(uploadStateProvider, (previous, next) {
      if (next.error != null) {}
    });

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      body: backImage1(child: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 20, bottom: 5),
              child: Text(
                "Фотография транспорта",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30),
              ),
            ),
            const SizedBox(height: 20),

            // Birinchi qator rasmlar
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox.shrink(),
                _buildImageCard(
                  context: context,
                  ref: ref,
                  index: 0,
                  title: "Автомобиль спереди",
                  onTap: () {
                    if (!uploadState.isUploading) {
                      Navigator.push(
                          context,
                          CupertinoPageRoute(
                            builder: (context) => PhotoCarPhoto1(),
                          ));
                    }
                  },
                ),
                _buildImageCard(
                  context: context,
                  ref: ref,
                  index: 1,
                  title: "Автомобиль слева",
                  onTap: () {
                    if (!uploadState.isUploading) {
                      Navigator.push(
                          context,
                          CupertinoPageRoute(
                            builder: (context) => PhotoCarPhoto2(),
                          ));
                    }
                  },
                ),
                const SizedBox.shrink(),
              ],
            ),
            const SizedBox(height: 20),

            // Ikkinchi qator rasmlar
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox.shrink(),
                _buildImageCard(
                  context: context,
                  ref: ref,
                  index: 2,
                  title: "Автомобиль сзади",
                  onTap: () {
                    if (!uploadState.isUploading) {
                      Navigator.push(
                          context,
                          CupertinoPageRoute(
                            builder: (context) => PhotoCarPhoto3(),
                          ));
                    }
                  },
                ),
                _buildImageCard(
                  context: context,
                  ref: ref,
                  index: 3,
                  title: "Автомобиль справа",
                  onTap: () {
                    if (!uploadState.isUploading) {
                      Navigator.push(
                          context,
                          CupertinoPageRoute(
                            builder: (context) => PhotoCarPhoto4(),
                          ));
                    }
                  },
                ),
                const SizedBox.shrink(),
              ],
            ),
            const SizedBox(height: 20),

            // Beshinchi rasm
            GestureDetector(
              onTap: () {
                if (!uploadState.isUploading) {
                  Navigator.push(
                      context,
                      CupertinoPageRoute(
                        builder: (context) => PhotoCarPhoto5(),
                      ));
                }
              },
              child: _buildImageCard(
                context: context,
                ref: ref,
                index: 4,
                title: "Внутри прицеп",
                onTap: () {
                  if (!uploadState.isUploading) {
                    Navigator.push(
                        context,
                        CupertinoPageRoute(
                          builder: (context) => PhotoCarPhoto5(),
                        ));
                  }
                },
                isFullWidth: false,
                margin: const EdgeInsets.only(left: 30),
              ),
            ),

            // Loading progress UI

            // Tugma va bo'sh joy
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: PrimaryButton(
                      onPressed: () {
                        // uploadState.isUploading ? null :
                        if (checkAllFile()) {
                          ref.read(controllerCarPhoto6.notifier).setData();
                          getDialog();
                        } else {
                          MyWidgets.snackBarMyWidgets(
                            context: context,
                            text: "Barcha rasmlarni kiriting",
                          );
                        }
                      },
                      text:
                      uploadState.isUploading ? "Yuklanmoqda..." : "Готово",
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ), ref: ref)
    );
  }

  // Helper method to build image cards
  Widget _buildImageCard({
    required BuildContext context,
    required WidgetRef ref,
    required int index,
    required String title,
    required VoidCallback onTap,
    bool isFullWidth = false,
    EdgeInsets? margin,
  }) {
    final uploadState = ref.watch(uploadStateProvider);
    final hasImage = getImage(ref, index) == "1";

    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 104,
        width: isFullWidth
            ? double.infinity
            : MediaQuery.of(context).size.width * 0.4,
        padding: const EdgeInsets.all(1),
        margin: margin,
        decoration: BoxDecoration(
          color: uploadState.isUploading
              ? Colors.grey.shade200
              : Colors.grey.shade300,
          borderRadius: BorderRadius.circular(10),
          border: uploadState.isUploading
              ? Border.all(color: Colors.grey.shade400)
              : null,
        ),
        child: hasImage
            ? ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.file(
                  _getImageFile(ref, index)!,
                  fit: BoxFit.cover,
                ),
              )
            : Opacity(
                opacity: uploadState.isUploading ? 0.5 : 1.0,
                child: Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.photo_camera_outlined,
                        color: uploadState.isUploading
                            ? Colors.grey.shade500
                            : Colors.black,
                      ),
                      const SizedBox(height: 10),
                      Text(
                        title,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          color: uploadState.isUploading
                              ? Colors.grey.shade500
                              : Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
      ),
    );
  }

  // Helper method to get image file
  dynamic _getImageFile(WidgetRef ref, int index) {
    switch (index) {
      case 0:
        return ref.watch(controllerCarPhoto6.notifier).file1;
      case 1:
        return ref.watch(controllerCarPhoto6.notifier).file2;
      case 2:
        return ref.watch(controllerCarPhoto6.notifier).file3;
      case 3:
        return ref.watch(controllerCarPhoto6.notifier).file4;
      case 4:
        return ref.watch(controllerCarPhoto6.notifier).file5;
      default:
        return null;
    }
  }

  bool checkAllFile() {
    bool checker = true;
    for (int i = 0; i < 5; i++) {
      if (getImage(ref, i) != "1") {
        checker = false;
      }
    }
    return checker;
  }

  String getImage(WidgetRef ref, int index) {
    try {
      if (index == 0) {
        return ref.watch(controllerCarPhoto6.notifier).file1!.path.length > 12
            ? "1"
            : "0";
      } else if (index == 1) {
        return ref.watch(controllerCarPhoto6.notifier).file2!.path.length > 12
            ? "1"
            : "0";
      } else if (index == 2) {
        return ref.watch(controllerCarPhoto6.notifier).file3!.path.length > 12
            ? "1"
            : "0";
      } else if (index == 3) {
        return ref.watch(controllerCarPhoto6.notifier).file4!.path.length > 12
            ? "1"
            : "0";
      } else {
        return ref.watch(controllerCarPhoto6.notifier).file5!.path.length > 12
            ? "1"
            : "0";
      }
    } catch (e) {
      return "0";
    }
  }

  getDialog() async {
    await showDialog(
      context: context,

      builder: (context) => SizedBox(
        child: AlertDialog(
          backgroundColor: Colors.transparent,
          contentPadding: EdgeInsets.zero,
          content: SizedBox(height: 140, child: LoadingDialog()),
        ),
      ),
    );
  }
}
