import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:san_art/featurs/auth/login/domain/entities/login_entities/response/login_response_entities.dart';

part 'login_response_model.freezed.dart';
part 'login_response_model.g.dart';

@freezed
abstract class LoginResponseModel with _$LoginResponseModel {
  factory LoginResponseModel({required String detail}) = _LoginResponseModel;

  factory LoginResponseModel.fromJson(Map<String, dynamic> json) =>
      _$LoginResponseModelFromJson(json);

  LoginResponseModel._();

  LoginResponseEntities toEntity() => LoginResponseEntities(detail: detail);
}
