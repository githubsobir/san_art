import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:multiple_result/multiple_result.dart';
import 'package:san_art/core/errors/fails.dart';
import 'package:san_art/featurs/auth/login/domain/entities/get_region_entities.dart';
import 'package:san_art/featurs/auth/login/domain/repository/region_repository.dart';

import '../datasources/region_remote_data_source.dart';

@Injectable(as: RegionRepository)
class RegionRepositoryImpl implements RegionRepository {
  final RegionRemoteDataSource remoteDataSource;

  RegionRepositoryImpl(this.remoteDataSource);

  @override
  Future<Result<List<RegionEntity>, Failure>> getRegions() async {
    try {
      final regionModels = await remoteDataSource.getRegions();
      final regions = regionModels.map((model) => model.toEntity()).toList();
      return Success(regions);
    } on DioException catch (e) {
      if (e.type == DioExceptionType.connectionTimeout ||
          e.type == DioExceptionType.receiveTimeout ||
          e.type == DioExceptionType.sendTimeout) {
        return Error(Failure.connectionTimeout('Connection timeout'));
      }
      return Error(Failure.serverError('Server error: ${e.message}'));
    } catch (e) {
      return Error(Failure.unexpected('Unexpected error: $e'));
    }
  }
}
