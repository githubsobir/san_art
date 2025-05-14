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
          valueCategory: "driver",
          textCategory: "driver".tr(),
          imageAssetLink: 'assets/icons/ic_truck.svg',
          boolActive: false,
          note: "driverText".tr()),
      ModelChooseRole(
          id: 1,
          valueCategory: "exporter",
          textCategory: "shipper".tr(),
          imageAssetLink: 'assets/icons/ic_box.svg',
          boolActive: false,
          note: "shipperText".tr()),
      ModelChooseRole(
          id: 2,
          valueCategory: "logistic",
          textCategory: "logistic".tr(),
          imageAssetLink: 'assets/icons/ic_globus.svg',
          boolActive: false,
          note: "logisticsText".tr())
    ];
    return listModelUserCat;
  }
}
