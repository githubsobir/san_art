import 'dart:convert';
import 'dart:developer';

import 'package:injectable/injectable.dart';
import 'package:san_art/core/network/dio_client.dart';

import '../models/region_model.dart';

abstract class RegionRemoteDataSource {
  Future<List<RegionModel>> getRegions();
}

@Injectable(as: RegionRemoteDataSource)
class RegionRemoteDataSourceImpl implements RegionRemoteDataSource {
  final NetworkSanArt dio1;

  RegionRemoteDataSourceImpl(this.dio1);

  @override
  Future<List<RegionModel>> getRegions() async {
    try {
      final response = await dio1.dio.get('/api/core/region');

      if (response.statusCode == 200) {
          log("2025");

        return (response.data  as List).map((json) => RegionModel.fromJson(json)).toList();
      } else {
        throw Exception('Failed to load regions: ${response.statusCode}');
      }
    } catch (e) {
      throw Exception('Failed to load regions: $e');
    }
  }
}
