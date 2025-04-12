import 'package:freezed_annotation/freezed_annotation.dart';

part 'fails.freezed.dart';



@freezed
abstract class Failure with _$Failure {
  // Server xatoliklari
  const factory Failure.serverError([String? message]) = ServerFailure;
  const factory Failure.unauthorized([String? message]) = UnauthorizedFailure;
  const factory Failure.forbidden([String? message]) = ForbiddenFailure;
  const factory Failure.notFound([String? message]) = NotFoundFailure;
  const factory Failure.timeOut([String? message]) = TimeOutFailure;

  // Internet ulanish xatoliklari
  const factory Failure.noConnection([String? message]) = NoConnectionFailure;
  const factory Failure.connectionTimeout([String? message]) = ConnectionTimeoutFailure;

  // Ma'lumotlar bilan bog'liq xatoliklar
  const factory Failure.invalidData([String? message]) = InvalidDataFailure;
  const factory Failure.emptyResponse([String? message]) = EmptyResponseFailure;

  // Kutilmagan xatoliklar
  const factory Failure.unexpected([String? message]) = UnexpectedFailure;
}