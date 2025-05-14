import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:san_art/core/service/injection/injection_container.dart';
import 'package:san_art/featurs/auth/login/domain/entities/region/get_region_entities.dart';
import 'package:san_art/featurs/auth/login/domain/usecases/get_region_usecase.dart';

final selectCountryValue = StateProvider<RegionEntity>((ref) => RegionEntity(
    id: "1", name: "Oʻzbekiston", code: "+998", mask: ' (##) ###-##-##'));

final selectPhoneCode = StateProvider<String>((ref) => "+998");

class UserNotifier extends AsyncNotifier<List<RegionEntity>> {
  final GetRegionsUseCase _getUsersUseCase = getIt<GetRegionsUseCase>();

  @override
  Future<List<RegionEntity>> build() async {
    state = const AsyncValue.loading();
    var data = await _getUsersUseCase();
    state = data.when((success) => AsyncData(success),
        (error) => AsyncError(error.toString(), StackTrace.current));
    return state.valueOrNull ?? [];
  }
}

final userNotifierProvider =
    AsyncNotifierProvider<UserNotifier, List<RegionEntity>>(() {
  return UserNotifier();
});
