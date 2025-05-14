import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import '../models/region_model.dart';

abstract class RegionRemoteDataSource {
  Future<List<RegionModel>> getRegions();
}

@Injectable(as: RegionRemoteDataSource)
class RegionRemoteDataSourceImpl implements RegionRemoteDataSource {
  final Dio dio1;

  RegionRemoteDataSourceImpl(this.dio1);

  @override
  Future<List<RegionModel>> getRegions() async {
    try {

      List<RegionModel> listRegions = [
        RegionModel(
            id: "1",
            name: "Oʻzbekiston",
            code: "+998",
            mask: ' (##) ###-##-##'),
        RegionModel(
            id: "2", name: "Qozogʻiston", code: "+7", mask: ' (###) ###-##-##'),
        RegionModel(
            id: "3", name: "Tojikiston", code: "+992", mask: ' (##) ###-## ##'),
        RegionModel(
            id: "4", name: "Türkiye", code: "+90", mask: ' (###) ###-##-##'),
        RegionModel(
            id: "5", name: "Qirgʻiziston", code: "+996", mask: ' ### ###-###'),
        RegionModel(
            id: "6", name: "Türkmenistan", code: "+993", mask: ' (#) ###-##-##'),
        RegionModel(id: "1", name: "Rossiya", code: "+7", mask: ' (###) ###-##-##')
      ];

      return listRegions;
    } catch (e) {
      throw Exception('Failed to load regions: $e');
    }
  }
}
