import 'package:dio/dio.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:injectable/injectable.dart';
import 'package:san_art/featurs/auth/choose_role/data/model/model_choose_role.dart';

abstract class ChoseRoleDataSource {
  Future<List<ModelChooseRole>> getData();
}

@Injectable(as: ChoseRoleDataSource)
class ChoseRoleDataSourceImpl implements ChoseRoleDataSource {
  Dio dio;

  ChoseRoleDataSourceImpl(this.dio);

  @override
  Future<List<ModelChooseRole>> getData() async {
    List<ModelChooseRole> listModelUserCat = [
      ModelChooseRole(
          id: 0,
          nameCategory: "driver".tr(),
          textCategory: "driverText".tr(),
          imageAssetLink: 'assets/icons/ic_truck.svg',
          boolActive: false,
          note: "note"),
      ModelChooseRole(
          id: 1,
          nameCategory: "shipper".tr(),
          textCategory: "shipperText".tr(),
          imageAssetLink: 'assets/icons/ic_box.svg',
          boolActive: false,
          note: "note"),
      ModelChooseRole(
          id: 2,
          nameCategory: "logistics".tr(),
          textCategory: "logisticsText".tr(),
          imageAssetLink: 'assets/icons/ic_globus.svg',
          boolActive: false,
          note: "note")
    ];
    return listModelUserCat;
  }
}
