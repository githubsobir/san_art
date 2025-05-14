import 'package:multiple_result/multiple_result.dart';
import 'package:san_art/core/errors/fails.dart';
import 'package:san_art/featurs/auth/sms_page/domain/entities/request/sms_page_req_entites.dart';
import 'package:san_art/featurs/auth/sms_page/domain/entities/respond/sms_page_entities.dart';
import 'package:san_art/featurs/auth/sms_page/domain/repository/sms_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class SmsUsecase {
  final SmsRepository repository;

  SmsUsecase(this.repository);

  Future<Result<SmsPageEntities, Failure>> execute(LoginSmsRequestEntities request) {
    return repository.login(request);
  }
}
