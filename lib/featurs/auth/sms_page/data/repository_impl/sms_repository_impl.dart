

import 'dart:developer';

import 'package:multiple_result/multiple_result.dart';
import 'package:san_art/core/errors/fails.dart';
import 'package:san_art/featurs/auth/sms_page/data/datasources/sms_datasource.dart';
import 'package:san_art/featurs/auth/sms_page/domain/entities/request/sms_page_req_entites.dart';
import 'package:san_art/featurs/auth/sms_page/domain/entities/respond/sms_page_entities.dart';
import 'package:san_art/featurs/auth/sms_page/domain/repository/sms_repository.dart';
import 'package:injectable/injectable.dart';


@Injectable(as: SmsRepository)
class SmsRepositoryImpl implements SmsRepository {
  final SmsRemoteDataSource dataSource;

  SmsRepositoryImpl(this.dataSource);

  @override
  Future<Result<SmsPageEntities, Failure>> login(LoginSmsRequestEntities request) async {
    try {
      log("message 888");
      final jsonResponse = await dataSource.login(
          code: request.code,
          deviceName: request.deviceName,
          userName: request.username);
      return jsonResponse.when(
              (success) => Success(success.toEntities()),
              (error) => Error(error));
    } catch (e) {
      throw Exception('Repository error: $e');
    }
  }
}
