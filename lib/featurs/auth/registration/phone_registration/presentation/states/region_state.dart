import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:san_art/core/service/injection/injection_container.dart';
import 'package:san_art/featurs/auth/registration/phone_registration/domain/entities/region/get_region_entities.dart';
import 'package:san_art/featurs/auth/registration/phone_registration/domain/usecases/get_region_usecase.dart';

final selectCountryValueRegistrationPhone =
    StateProvider<RegistrationPhoneRegionEntity>((ref) =>
        RegistrationPhoneRegionEntity(
            id: "1",
            name: "Oʻzbekiston",
            code: "+998",
            mask: ' (##) ###-##-##'));

final selectPhoneCodeRegistration = StateProvider<String>((ref) => "+998");

// Dartz kutubxonasi Either tipi bilan xatolar boshqariladi
class RegistrationPhoneUserNotifier
    extends AsyncNotifier<List<RegistrationPhoneRegionEntity>> {
  late final RegistrationPhoneGetRegionsUseCase _getUsersUseCase;

  @override
  Future<List<RegistrationPhoneRegionEntity>> build() async {
    state = const AsyncValue.loading();
    _getUsersUseCase = getIt<RegistrationPhoneGetRegionsUseCase>();
    try {
      final result = await _getUsersUseCase.call();

      state = result.when(
        (success) {
          return AsyncValue.data(success);
        },
        (error) {
          return AsyncValue.error(error, StackTrace.current);
        },
      );
    } catch (e) {
      state = AsyncValue.error(e, StackTrace.current);
    }

    return state.value!;
  }
}


final userRegistrationNotifierProvider = AsyncNotifierProvider<
    RegistrationPhoneUserNotifier, List<RegistrationPhoneRegionEntity>>(() {
  return RegistrationPhoneUserNotifier();
});
