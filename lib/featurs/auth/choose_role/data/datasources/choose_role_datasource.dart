import 'dart:convert';
import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:san_art/core/network/url_all.dart';
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
    try {
      log("role");
      var result = await dio.get(AllUrl.urlRole());
      log(jsonEncode(result.data));
      return (result.data as List)
          .map((e) => ModelChooseRole.fromJson(e))
          .toList();
    } catch (e) {
      log("Sobir 001");
      print(e);
      return [];
    }

    // List<ModelChooseRole> listModelUserCat = [
    //   ModelChooseRole(
    //       id: 0,
    //       valueCategory: "driver",
    //       textCategory: "driver".tr(),
    //       imageAssetLink: 'assets/icons/ic_truck.svg',
    //       boolActive: false,
    //       note: "driverText".tr()),
    //   ModelChooseRole(
    //       id: 1,
    //       valueCategory: "exporter",
    //       textCategory: "shipper".tr(),
    //       imageAssetLink: 'assets/icons/ic_box.svg',
    //       boolActive: false,
    //       note: "shipperText".tr()),
    //   ModelChooseRole(
    //       id: 2,
    //       valueCategory: "logistic",
    //       textCategory: "logistic".tr(),
    //       imageAssetLink: 'assets/icons/ic_globus.svg',
    //       boolActive: false,
    //       note: "logisticsText".tr())
    // ];
    // return listModelUserCat;
  }
}
