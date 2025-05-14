import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import '../models/region/region_model.dart';

abstract class RegistrationPhoneRegionRemoteDataSource {
  Future<List<RegistrationPhoneRegionModel>> getRegions();
}

@Injectable(as: RegistrationPhoneRegionRemoteDataSource)
class RegistrationRegionRemoteDataSourceImpl implements RegistrationPhoneRegionRemoteDataSource {
  final Dio dio1;

  RegistrationRegionRemoteDataSourceImpl(this.dio1);

  @override
  Future<List<RegistrationPhoneRegionModel>> getRegions() async {
    try {

      List<RegistrationPhoneRegionModel> listRegions = [
        RegistrationPhoneRegionModel(
            id: "1",
            name: "Oʻzbekiston",
            code: "+998",
            mask: ' (##) ###-##-##'),
        RegistrationPhoneRegionModel(
            id: "2", name: "Qozogʻiston", code: "+7", mask: ' (###) ###-##-##'),
        RegistrationPhoneRegionModel(
            id: "3", name: "Tojikiston", code: "+992", mask: ' (##) ###-## ##'),
        RegistrationPhoneRegionModel(
            id: "4", name: "Türkiye", code: "+90", mask: ' (###) ###-##-##'),
        RegistrationPhoneRegionModel(
            id: "5", name: "Qirgʻiziston", code: "+996", mask: ' ### ###-###'),
        RegistrationPhoneRegionModel(
            id: "6", name: "Türkmenistan", code: "+993", mask: ' (#) ###-##-##'),
        RegistrationPhoneRegionModel(id: "1", name: "Rossiya", code: "+7", mask: ' (###) ###-##-##')
      ];

      return listRegions;
    } catch (e) {
      throw Exception('Failed to load regions: $e');
    }
  }
}
