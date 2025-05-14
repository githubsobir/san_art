import 'dart:developer';
import 'dart:io';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:image_picker/image_picker.dart';
import 'package:san_art/featurs/auth/registration/driver/car_information/car_main_reg/presentation/other_pages/a1_passport_page/domain/entities/request/passport_entities.dart';

final passportWindowID = StateProvider<int>((ref) => 0);
final controllerPassportExpiration = StateProvider<String>((ref) => "");


final controllerPassport =
StateNotifierProvider<ControllerPassport, PassportEntities>(
        (ref) => ControllerPassport());

class ControllerPassport extends StateNotifier<PassportEntities> {
  ControllerPassport()
      : super(PassportEntities(
      boolGetData: true, message: "", errorMessage: "", list: []));

  // late Dio dio = Dio();
  // var box = HiveBoxDriverReg();

  List<File> imageList = [];
  late File file1;
  late File file2;
  late File file3;

  Future getImage(int index) async {
    state = state.copyWith(
        boolGetData: false, message: "", errorMessage: "", list: []);
    final imagePicker = ImagePicker();

    final pickedFile = await imagePicker.pickImage(source: ImageSource.gallery);

    if (pickedFile != null) {
      if (index == 0) {
        file1 = File(pickedFile.path);
      } else if (index == 1) {
        file2 = File(pickedFile.path);
      } else if (index == 2) {
        file3 = File(pickedFile.path);
      }
    }

    state = state.copyWith(
        boolGetData: true, list: imageList, message: "", errorMessage: "");
  }

  Future getImageCamera(int index) async {
    state = state.copyWith(
        boolGetData: false, list: imageList, message: "", errorMessage: "");
    final imagePicker = ImagePicker();

    final pickedFile = await imagePicker.pickImage(source: ImageSource.camera);

    try {
      if (index == 0) {
        file1 = File(pickedFile!.path);
      } else if (index == 1) {
        file2 = File(pickedFile!.path);
      } else if (index == 2) {
        file3 = File(pickedFile!.path);
      }
    } catch (e) {
      log(e.toString());
    }
    state = state.copyWith(
        boolGetData: true, list: imageList, message: "", errorMessage: "");
  }




  setDefault() async {
    state = state.copyWith(
        boolGetData: false, message: '', list: [], errorMessage: "");
    await Future.delayed(const Duration(milliseconds: 100));
    state = state.copyWith(
        boolGetData: true, message: '', list: [], errorMessage: "");
  }

  setAllData({required String serNum, required String datePassport}) {
    // try{
    //   box.passportSerNum = serNum;
    //   box.passportExpiration = datePassport;
    //   box.passportImage1 = file1.path;
    //   box.passportImage2 = file2.path;
    //   box.passportImage3 = file3.path;
    // }catch(e){
    //   box.passportSerNum = serNum;
    //   box.passportImage1 = box.passportImage1;
    //   box.passportImage2 = box.passportImage2;
    //   box.passportImage3 = box.passportImage3;
    // }
    //
    // log( box.passportSerNum);
    // log( box.passportImage1);
    // log( box.passportImage2);
    // log( box.passportImage3);
  }
}