import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:san_art/featurs/auth/registration/driver/car_information/car_main_reg/domain/entities/respond/car_main_driver_entities.dart';





final listDriverModel = Provider<List<CarMainDriverEntity>>(
  (ref) {
    return [
      CarMainDriverEntity(name: "passportOrId".tr(), action: "1", note: ""),
      CarMainDriverEntity(name: "drawerLicense".tr(), action: "2", note: ""),
      // CarMainDriverEntity(name: "chooseCompany".tr(), action: "3", note: ""),
      CarMainDriverEntity(name: "chooseMoneyType".tr(), action: "4", note: ""),
    ];
  },
);

final listCarInfoList = Provider<List<String>>(
  (ref) {
    return ["carTexPass".tr(), "chooseTransport".tr(), "photoTransport".tr()];
  },
);

final controllerBoolPassport = StateProvider((ref) => false);
final controllerBoolDriverLicense = StateProvider((ref) => false);
final controllerBoolMoneyType = StateProvider((ref) => false);
final controllerBoolTexPassport = StateProvider((ref) => false);
final controllerBoolTransport = StateProvider((ref) => false);
final controllerBoolPhoto6 = StateProvider((ref) => false);