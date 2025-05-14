

import 'package:multiple_result/multiple_result.dart';
import 'package:san_art/core/errors/fails.dart';
import 'package:san_art/featurs/auth/sms_page/domain/entities/request/sms_page_req_entites.dart';
import 'package:san_art/featurs/auth/sms_page/domain/entities/respond/sms_page_entities.dart';

abstract class SmsRepository {
  Future<Result<SmsPageEntities, Failure>> login(LoginSmsRequestEntities request);
}