import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:san_art/core/service/injection/injection_container.dart';
import 'package:san_art/featurs/auth/registration/driver/user_information/full_name/domain/entities/request/full_name_entities.dart';
import 'package:san_art/featurs/auth/registration/driver/user_information/full_name/domain/entities/response/full_name_result.dart';
import 'package:san_art/featurs/auth/registration/driver/user_information/full_name/domain/usecase/full_name-usecase.dart';

final fullNameDriverUseCase =
    Provider<FullNameDriverUsecase>((ref) => getIt<FullNameDriverUsecase>());

final fullNameDriverProviders =
    AsyncNotifierProvider<FullNameDriverProvider, FullNameDriverResult>(
        FullNameDriverProvider.new);

class FullNameDriverProvider extends AsyncNotifier<FullNameDriverResult> {
  @override
  Future<FullNameDriverResult> build() async {
    return FullNameDriverResult(id: "", message: "");
  }

  Future<FullNameDriverResult> setFullName(
      {required FullNameDriverEntities fullName}) async {
    state = AsyncLoading();
    final dataResult = await getIt<FullNameDriverUsecase>().getFullName(fullName);

    return FullNameDriverResult(
        id: "0", message: "0"); //FullNameResult.fromJson(dataResult.data);
  }
}
