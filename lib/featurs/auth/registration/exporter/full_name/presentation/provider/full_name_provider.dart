import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:san_art/core/service/injection/injection_container.dart';
import 'package:san_art/featurs/auth/registration/exporter/full_name/domain/entities/full_name_entities.dart';
import 'package:san_art/featurs/auth/registration/exporter/full_name/domain/entities/result/full_name_result.dart';
import 'package:san_art/featurs/auth/registration/exporter/full_name/domain/usecase/full_name-usecase.dart';

final fullNameUseCase =
    Provider<FullNameUsecase>((ref) => getIt<FullNameUsecase>());

final fullNameProviders =
    AsyncNotifierProvider<FullNameProvider, FullNameResult>(
        FullNameProvider.new);

class FullNameProvider extends AsyncNotifier<FullNameResult> {
  @override
  Future<FullNameResult> build() async {
    return FullNameResult(id: "", message: "");
  }

  Future<FullNameResult> setFullName(
      {required FullNameEntities fullName}) async {
    state = AsyncLoading();
    final dataResult = await getIt<FullNameUsecase>().getFullName(fullName);

    return FullNameResult(
        id: "0", message: "0"); //FullNameResult.fromJson(dataResult.data);
  }
}
