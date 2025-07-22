// import 'dart:developer';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:san_art/core/theme/colors/colors_app.dart';
// import 'package:san_art/featurs/auth/registration/driver/car_information/car_main_reg/presentation/other_pages/a6_photo_car_page/presentation/provider/car_photo_state.dart';
//
// class PhotoCarPhoto4 extends ConsumerStatefulWidget {
//   PhotoCarPhoto4({super.key});
//
//   @override
//   ConsumerState<PhotoCarPhoto4> createState() => _PhotoCarPhoto4State();
// }
//
// class _PhotoCarPhoto4State extends ConsumerState<PhotoCarPhoto4> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.black,
//       appBar: AppBar(
//         elevation: 0,
//         backgroundColor: Colors.black,
//         actions: [
//           GestureDetector(
//             onTap: () {
//               try {
//                 ref.read(controllerCarPhoto6.notifier).file4!.path.length > 10
//                     ? {Navigator.of(context).pop(),
//                   ref.read(controllerCarPhoto6.notifier).setDefault()
//                 }
//                     : {};
//               } catch (e) {
//                 log(e.toString());
//               }
//             },
//             child:const Padding(
//               padding: EdgeInsets.symmetric(horizontal: 20),
//               child: Icon(
//                 Icons.check,
//                 color: Colors.white,
//               ),
//             ),
//           )
//         ],
//         iconTheme: const IconThemeData(color: Colors.white),
//       ),
//       body:
//       ref.watch(controllerCarPhoto6).isLoading?
//       SafeArea(
//         child: Container(
//           margin: const EdgeInsets.all(20),
//           child: Center(
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.start,
//               crossAxisAlignment: CrossAxisAlignment.center,
//               children: [
//                 GestureDetector(
//                   onTap: () {
//                     ref.read(controllerCarPhoto6.notifier).getImageCamera(3);
//                   },
//                   child: Container(
//                     height: MediaQuery.of(context).size.height * 0.3,
//                     width: MediaQuery.of(context).size.width * 0.9,
//                     decoration: BoxDecoration(
//                         border: Border.all(
//                           color: Colors.white,
//                         )),
//                     child: getDataFile()  == "1"
//                         ? Image.file(ref.watch(controllerCarPhoto6.notifier).file4!)
//                         : const Icon(Icons.image,
//                         size: 50, color: Colors.white),
//                   ),
//                 ),
//                 const SizedBox(height: 40),
//                 const Row(
//                   children: [
//                     Column(
//                       mainAxisAlignment: MainAxisAlignment.start,
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Text("Лицевая сторона",
//                             style: TextStyle(
//                                 color: Colors.white,
//                                 fontSize: 30,
//                                 fontWeight: FontWeight.bold),
//                             textAlign: TextAlign.start),
//                         SizedBox(height: 20),
//                         Text(
//                             "Добейтес совпадения ИД карты с рамкой.\nУбедитес что:",
//                             style: TextStyle(
//                                 color: Colors.grey,
//                                 fontWeight: FontWeight.normal),
//                             textAlign: TextAlign.start),
//                         SizedBox(height: 20),
//                         Text("-ИД карта хорошо освещена",
//                             style: TextStyle(
//                                 color: Colors.grey,
//                                 fontWeight: FontWeight.normal),
//                             textAlign: TextAlign.start),
//                         Text("ИД карта не перекрывается пальцем",
//                             style: TextStyle(
//                                 color: Colors.grey,
//                                 fontWeight: FontWeight.normal),
//                             textAlign: TextAlign.start),
//                         Text("-Отсутствуют блики",
//                             style: TextStyle(
//                                 color: Colors.grey,
//                                 fontWeight: FontWeight.normal),
//                             textAlign: TextAlign.start),
//                       ],
//                     )
//                   ],
//                 ),
//                 const SizedBox(height: 30),
//                 MaterialButton(
//                   onPressed: () {
//                     ref.read(controllerCarPhoto6.notifier).getImageCamera(3);
//                   },
//                   height: 55,
//                   minWidth: double.infinity,
//                   // color: AppColors.colorBackground,
//                   elevation: 10,
//                   shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(10)),
//                   child: const Text(
//                     "Сделать фото",
//                   ),
//                 ),
//                 const SizedBox(height: 25),
//                 MaterialButton(
//                   onPressed: () {
//                     ref.read(controllerCarPhoto6.notifier).getImage(3);
//                   },
//                   height: 55,
//                   minWidth: double.infinity,
//                   // color: AppColors.colorBackground,
//                   elevation: 10,
//                   shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(10)),
//                   child: const Text(
//                     "Галерея фото",
//                   ),
//                 )
//               ],
//             ),
//           ),
//         ),
//       ):const Center(child: CupertinoActivityIndicator()),
//     );
//   }
//   String getDataFile(){
//     try{
//       return ref.watch(controllerCarPhoto6.notifier).file4!.path.length >= 10?"1":"0";
//     }catch(e){
//       return "0";
//     }
//   }
// }


import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:san_art/core/theme/colors/colors_app.dart';
import 'package:san_art/core/widgets/buttons/button_primary.dart';
import 'package:san_art/featurs/auth/registration/driver/car_information/car_main_reg/presentation/other_pages/a6_photo_car_page/presentation/provider/car_photo_state.dart';

class PhotoCarPhoto4 extends ConsumerStatefulWidget {
  const PhotoCarPhoto4({super.key});

  @override
  ConsumerState<PhotoCarPhoto4> createState() => _PhotoCarPhoto4State();
}

class _PhotoCarPhoto4State extends ConsumerState<PhotoCarPhoto4> {
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
                if (carPhotoNotifier.file4?.path.isNotEmpty == true) {
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
                    carPhotoNotifier.getImage(3);
                  },
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.3,
                    width: MediaQuery.of(context).size.width * 0.9,
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.white,
                        )),
                    child: hasFile4()
                        ? Image.file(
                      carPhotoNotifier.file4!,
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
                    carPhotoNotifier.getImageCamera(3);
                  },
                  text: "Сделать фото",
                ),
                const SizedBox(height: 25),
                PrimaryButton(
                  onPressed: () {
                    carPhotoNotifier.getImage(3);
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

  bool hasFile4() {
    try {
      final file = ref.read(controllerCarPhoto6.notifier).file4;
      return file != null && file.path.isNotEmpty;
    } catch (e) {
      return false;
    }
  }
}
