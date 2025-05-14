import 'dart:developer';
import 'dart:io';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:image_picker/image_picker.dart';
import 'package:san_art/core/data/hive_passport/hive_passport.dart';
import 'package:san_art/featurs/auth/registration/driver/car_information/car_main_reg/presentation/other_pages/a2_car_licence/domain/entities/request/car_licence_entities.dart';

final selectCountryProvider = StateProvider((ref) => "");
final selectCountryIdProvider = StateProvider((ref) => "");

final controllerTexCar =
    StateNotifierProvider.autoDispose<ControllerTexCar, CarLicenceEntities>(
        (ref) => ControllerTexCar());

class ControllerTexCar extends StateNotifier<CarLicenceEntities> {
  ControllerTexCar()
      : super(CarLicenceEntities(boolGetData: true, txtError: "")) {
    // getRegion();
  }

  var box = HiveBoxDriverReg();

  late File file1;
  late File file2;
  late File file3;
  late File file4;

  Future getImage(int index) async {
    try{
      state = state.copyWith(boolGetData: false, txtError: "");
      final imagePicker = ImagePicker();

      final pickedFile =
          await imagePicker.pickImage(source: ImageSource.gallery);

      if (index == 0) {
        file1 = File(pickedFile!.path);
      }

      if (index == 1) {
        file2 = File(pickedFile!.path);
      }
      if (index == 2) {
        file3 = File(pickedFile!.path);
      }

      if (index == 3) {
        file4 = File(pickedFile!.path);
      }

      state = state.copyWith(boolGetData: true, txtError: "");
    }catch(e){
      state = state.copyWith(boolGetData: true, txtError: e.toString());
    }
  }

  Future getImageCamera(int index) async {
   try {
      state = state.copyWith(boolGetData: false, txtError: "");
      final imagePicker = ImagePicker();

      final pickedFile =
          await imagePicker.pickImage(source: ImageSource.camera);

      if (index == 0) {
        file1 = File(pickedFile!.path);
      }

      if (index == 1) {
        file2 = File(pickedFile!.path);
      }

      if (index == 2) {
        file3 = File(pickedFile!.path);
      }

      if (index == 3) {
        file4 = File(pickedFile!.path);
      }
      state = state.copyWith(boolGetData: true, txtError: "");
    }catch(e){
     state = state.copyWith(boolGetData: true, txtError: "");
   }
  }

  setTexCarServer(
      {required String country1, required String txt1, required String txt2}) {
    try {
      box.carGosRegionId = country1;
      box.carGosNumber = txt1;
      box.carGosNumTrailer = txt2;
      box.carGosFile1 = file1.path;
      box.carGosFile2 = file2.path;
      box.carGosFile3 = file3.path;
      box.carGosFile4 = file4.path;
      log(country1);
      log(box.carGosNumber);
      log(box.carGosNumTrailer);
      log(box.carGosFile1);
      log(box.carGosFile2);
      return true;
    } catch (e) {
      log(e.toString());
      state = state.copyWith(boolGetData: true, txtError: e.toString());
      return false;
    }
  }
}
