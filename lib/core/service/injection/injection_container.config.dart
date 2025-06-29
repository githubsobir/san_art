// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i361;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

import '../../../featurs/auth/choose_role/data/datasources/choose_role_datasource.dart'
    as _i256;
import '../../../featurs/auth/choose_role/data/repository_impl/role_repository_impl.dart'
    as _i315;
import '../../../featurs/auth/choose_role/domain/repository/role_repository.dart'
    as _i162;
import '../../../featurs/auth/choose_role/domain/usecase/role_usecase.dart'
    as _i565;
import '../../../featurs/auth/login/data/datasources/login_remote_data_source.dart'
    as _i521;
import '../../../featurs/auth/login/data/datasources/region_remote_data_source.dart'
    as _i401;
import '../../../featurs/auth/login/data/repositories/login_repository_impl.dart'
    as _i467;
import '../../../featurs/auth/login/data/repositories/regsion_repository_impl.dart'
    as _i743;
import '../../../featurs/auth/login/domain/repository/login_repository.dart'
    as _i473;
import '../../../featurs/auth/login/domain/repository/region_repository.dart'
    as _i889;
import '../../../featurs/auth/login/domain/usecases/get_region_usecase.dart'
    as _i159;
import '../../../featurs/auth/login/domain/usecases/login_usecase.dart' as _i46;
import '../../../featurs/auth/registration/driver/car_information/car_main_reg/presentation/other_pages/a3_choose_payment_page/data/datasources/payment_remote_datasource.dart'
    as _i702;
import '../../../featurs/auth/registration/driver/car_information/car_main_reg/presentation/other_pages/a3_choose_payment_page/data/repository_impl/payment_repository_impl.dart'
    as _i31;
import '../../../featurs/auth/registration/driver/car_information/car_main_reg/presentation/other_pages/a3_choose_payment_page/domain/repository/payment_method.dart'
    as _i1069;
import '../../../featurs/auth/registration/driver/car_information/car_main_reg/presentation/other_pages/a3_choose_payment_page/domain/usecase/get_payment_methods_usecase.dart'
    as _i502;
import '../../../featurs/auth/registration/driver/car_information/car_main_reg/presentation/other_pages/a5_car_mark_choose/data/datasources/car_mark_datasource.dart'
    as _i387;
import '../../../featurs/auth/registration/driver/car_information/car_main_reg/presentation/other_pages/a5_car_mark_choose/data/repository_impl/car_mark_repository_impl.dart'
    as _i218;
import '../../../featurs/auth/registration/driver/car_information/car_main_reg/presentation/other_pages/a5_car_mark_choose/domain/repository/car_mark_repository.dart'
    as _i758;
import '../../../featurs/auth/registration/driver/car_information/car_main_reg/presentation/other_pages/a5_car_mark_choose/domain/usecase/car_mark_usecase.dart'
    as _i335;
import '../../../featurs/auth/registration/driver/car_information/car_main_reg/presentation/other_pages/car_brand/data/datasources/car_brand_datasource.dart'
    as _i614;
import '../../../featurs/auth/registration/driver/car_information/car_main_reg/presentation/other_pages/car_brand/data/repository_impl/car_repository_impl.dart'
    as _i563;
import '../../../featurs/auth/registration/driver/car_information/car_main_reg/presentation/other_pages/car_brand/domain/repository/car_brand_repository.dart'
    as _i692;
import '../../../featurs/auth/registration/driver/car_information/car_main_reg/presentation/other_pages/car_brand/domain/usecase/car_brand_usecase.dart'
    as _i682;
import '../../../featurs/auth/registration/driver/car_information/car_main_reg/presentation/other_pages/car_color/data/datasources/car_color_datasource.dart'
    as _i260;
import '../../../featurs/auth/registration/driver/car_information/car_main_reg/presentation/other_pages/car_color/data/repository_impl/car_color_repository.dart'
    as _i264;
import '../../../featurs/auth/registration/driver/car_information/car_main_reg/presentation/other_pages/car_color/domain/repository/car_repository.dart'
    as _i699;
import '../../../featurs/auth/registration/driver/car_information/car_main_reg/presentation/other_pages/car_color/domain/usecase/car_color_usecase.dart'
    as _i258;
import '../../../featurs/auth/registration/driver/car_information/car_main_reg/presentation/other_pages/car_type/data/datasources/car_type_datasource.dart'
    as _i775;
import '../../../featurs/auth/registration/driver/car_information/car_main_reg/presentation/other_pages/car_type/data/repository_impl/car_type_repository_impl.dart'
    as _i24;
import '../../../featurs/auth/registration/driver/car_information/car_main_reg/presentation/other_pages/car_type/domain/repository/car_type_repository.dart'
    as _i178;
import '../../../featurs/auth/registration/driver/car_information/car_main_reg/presentation/other_pages/car_type/domain/usecase/car_type_usecase.dart'
    as _i86;
import '../../../featurs/auth/registration/driver/car_information/car_main_reg/presentation/other_pages/car_weigth/data/datasources/weigth_datasource.dart'
    as _i557;
import '../../../featurs/auth/registration/driver/car_information/car_main_reg/presentation/other_pages/car_weigth/data/repository_impl/car_weigth_repository_impl.dart'
    as _i393;
import '../../../featurs/auth/registration/driver/car_information/car_main_reg/presentation/other_pages/car_weigth/domain/repository/car_weigth_repository.dart'
    as _i656;
import '../../../featurs/auth/registration/driver/car_information/car_main_reg/presentation/other_pages/car_weigth/domain/usecase/car_weigth_usecase.dart'
    as _i87;
import '../../../featurs/auth/registration/driver/user_information/date_birth/data/datasources/date_datasource.dart'
    as _i465;
import '../../../featurs/auth/registration/driver/user_information/date_birth/data/repository_impl/date_repository_impl.dart'
    as _i423;
import '../../../featurs/auth/registration/driver/user_information/date_birth/domain/repository/date_repository.dart'
    as _i838;
import '../../../featurs/auth/registration/driver/user_information/date_birth/domain/usecase/date_usecase.dart'
    as _i294;
import '../../../featurs/auth/registration/driver/user_information/full_name/data/datasources/full_name_datasource.dart'
    as _i37;
import '../../../featurs/auth/registration/driver/user_information/full_name/data/repository_impl/full_name_repository_impl.dart'
    as _i345;
import '../../../featurs/auth/registration/driver/user_information/full_name/domain/repository/full_name_repository.dart'
    as _i829;
import '../../../featurs/auth/registration/driver/user_information/full_name/domain/usecase/full_name-usecase.dart'
    as _i527;
import '../../../featurs/auth/registration/exporter/full_name/data/datasources/full_name_datasource.dart'
    as _i728;
import '../../../featurs/auth/registration/exporter/full_name/data/repository_impl/full_name_repository_impl.dart'
    as _i239;
import '../../../featurs/auth/registration/exporter/full_name/domain/repository/full_name_repository.dart'
    as _i892;
import '../../../featurs/auth/registration/exporter/full_name/domain/usecase/full_name-usecase.dart'
    as _i162;
import '../../../featurs/auth/registration/phone_registration/data/datasources/region_remote_data_source.dart'
    as _i33;
import '../../../featurs/auth/registration/phone_registration/data/datasources/registation_data_source.dart'
    as _i495;
import '../../../featurs/auth/registration/phone_registration/data/repositories/regsion_repository_impl.dart'
    as _i201;
import '../../../featurs/auth/registration/phone_registration/data/repositories/rergistration_repository_impl.dart'
    as _i716;
import '../../../featurs/auth/registration/phone_registration/domain/repository/region_repository.dart'
    as _i504;
import '../../../featurs/auth/registration/phone_registration/domain/repository/registration_repository.dart'
    as _i509;
import '../../../featurs/auth/registration/phone_registration/domain/usecases/get_region_usecase.dart'
    as _i1004;
import '../../../featurs/auth/registration/phone_registration/domain/usecases/registration_usecase.dart'
    as _i657;
import '../../../featurs/auth/sms_page/data/datasources/sms_datasource.dart'
    as _i525;
import '../../../featurs/auth/sms_page/data/repository_impl/sms_repository_impl.dart'
    as _i101;
import '../../../featurs/auth/sms_page/domain/repository/sms_repository.dart'
    as _i648;
import '../../../featurs/auth/sms_page/domain/usecase/sms_usecase.dart'
    as _i620;
import '../../../featurs/choose_language/data/datasources/language_datasource.dart'
    as _i583;
import '../../../featurs/choose_language/domain/usecases/language_usecase.dart'
    as _i410;
import '../../../featurs/choose_language/presentation/providers/language_provider.dart'
    as _i371;
import '../../../featurs/root_page/domain/usecases/r_use_case.dart' as _i91;
import '../../../featurs/root_page/presentation/screens/main_page/data/datasources/list_app/list_app.dart'
    as _i679;
import '../../../featurs/root_page/presentation/screens/main_page/data/datasources/stories/datasource_stories.dart'
    as _i286;
import '../../../featurs/root_page/presentation/screens/main_page/data/repository_impl/list_app/list_app_repository_impl.dart'
    as _i301;
import '../../../featurs/root_page/presentation/screens/main_page/data/repository_impl/stories/repository_stories.dart'
    as _i458;
import '../../../featurs/root_page/presentation/screens/main_page/domain/repository/list_app/list_app_repository.dart'
    as _i508;
import '../../../featurs/root_page/presentation/screens/main_page/domain/repository/stories/repository_user.dart'
    as _i161;
import '../../../featurs/root_page/presentation/screens/main_page/domain/usecase/list_app/list_app_usecase.dart'
    as _i956;
import '../../../featurs/root_page/presentation/screens/main_page/domain/usecase/stories/stories_usecase.dart'
    as _i259;
import '../../../featurs/root_page/presentation/screens/search_page/data/datasources/search_datasource.dart'
    as _i154;
import '../../../featurs/root_page/presentation/screens/search_page/data/repository_impl/search_repo_impl.dart'
    as _i1062;
import '../../../featurs/root_page/presentation/screens/search_page/domain/repository/search_repository.dart'
    as _i633;
import '../../../featurs/root_page/presentation/screens/search_page/domain/usecase/search_usecase.dart'
    as _i1023;
import '../../../featurs/root_page/presentation/screens/search_product_page/data/datasource/map_data_source.dart'
    as _i126;
import '../../../featurs/root_page/presentation/screens/search_product_page/data/respository_impl/repository_impl.dart'
    as _i407;
import '../../../featurs/root_page/presentation/screens/search_product_page/domain/repository/repository_map.dart'
    as _i154;
import '../../../featurs/root_page/presentation/screens/search_product_page/domain/usecase/usecase_map.dart'
    as _i544;
import '../../secure_storage/secure_storage_service.dart' as _i664;
import 'injection_container.dart' as _i809;

// initializes the registration of main-scope dependencies inside of GetIt
_i174.GetIt init(
  _i174.GetIt getIt, {
  String? environment,
  _i526.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i526.GetItHelper(
    getIt,
    environment,
    environmentFilter,
  );
  final registerModule = _$RegisterModule();
  gh.factory<_i583.LanguageDataSource>(() => _i583.LanguageDataSource());
  gh.singleton<_i361.Dio>(() => registerModule.dio);
  gh.singleton<_i371.ProviderFactory>(() => _i371.ProviderFactory());
  gh.singleton<_i91.RootUseCase>(() => _i91.RootUseCase());
  gh.lazySingleton<_i664.SecureStorageService>(
      () => _i664.SecureStorageService());
  gh.factory<_i126.MapDataSource>(() => _i126.MapDataSourceImpl());
  gh.factory<_i387.CarMarkDataSource>(
      () => _i387.CarMarkDataSourceImpl(gh<_i361.Dio>()));
  gh.factory<_i154.SearchDataSource>(
      () => _i154.SearchDataSourceImpl(gh<_i361.Dio>()));
  gh.factory<_i702.PaymentRemoteDataSource>(
      () => _i702.PaymentRemoteDataSourceImpl(gh<_i361.Dio>()));
  gh.factory<_i410.LanguageUsecase>(
      () => _i410.LanguageUsecase(gh<_i583.LanguageDataSource>()));
  gh.factory<_i37.FullNameDriverDataSource>(
      () => _i37.FullNameDataSourceImpl());
  gh.factory<_i1069.PaymentRepository>(
      () => _i31.PaymentRepositoryImpl(gh<_i702.PaymentRemoteDataSource>()));
  gh.factory<_i401.RegionRemoteDataSource>(
      () => _i401.RegionRemoteDataSourceImpl(gh<_i361.Dio>()));
  gh.factory<_i614.CarBrandDataSourceImpl>(
      () => _i614.CarBrandDataSourceImpl(gh<_i361.Dio>()));
  gh.factory<_i775.CarTypeDataSource>(
      () => _i775.CarTypeDataSourceImpl(gh<_i361.Dio>()));
  gh.factory<_i502.GetPaymentMethodsUseCase>(
      () => _i502.GetPaymentMethodsUseCase(gh<_i1069.PaymentRepository>()));
  gh.factory<_i465.DateDataSource>(
      () => _i465.DateDataSourceImpl(gh<_i361.Dio>()));
  gh.factory<_i256.ChoseRoleDataSource>(
      () => _i256.ChoseRoleDataSourceImpl(gh<_i361.Dio>()));
  gh.factory<_i33.RegistrationPhoneRegionRemoteDataSource>(
      () => _i33.RegistrationRegionRemoteDataSourceImpl(gh<_i361.Dio>()));
  gh.factory<_i260.CarColorDatasource>(
      () => _i260.CarColorDatasourceImpl(gh<_i361.Dio>()));
  gh.factory<_i557.WeightDatasource>(
      () => _i557.WeightDatasourceImpl(gh<_i361.Dio>()));
  gh.factory<_i728.FullNameDataSource>(() => _i728.FullNameDataSourceImpl());
  gh.factory<_i495.RegistrationDataSource>(
      () => _i495.RegistrationDataSourceImpl(gh<_i361.Dio>()));
  gh.factory<_i679.ListAppDataSource>(
      () => _i679.ListAppDataSourceImpl(dio: gh<_i361.Dio>()));
  gh.factory<_i889.RegionRepository>(
      () => _i743.RegionRepositoryImpl(gh<_i401.RegionRemoteDataSource>()));
  gh.factory<_i162.UserRoleRepository>(
      () => _i315.RoleRepositoryIml(gh<_i256.ChoseRoleDataSource>()));
  gh.factory<_i633.SearchRepository>(
      () => _i1062.SearchRepositoryImpl(gh<_i154.SearchDataSource>()));
  gh.factory<_i178.CarTypeRepository>(
      () => _i24.CarTypeRepositoryImpl(gh<_i775.CarTypeDataSource>()));
  gh.factory<_i154.MapRepository>(
      () => _i407.MapRepositoryImpl(gh<_i126.MapDataSource>()));
  gh.factory<_i699.CarColorRepository>(
      () => _i264.CarColorRepositoryImpl(gh<_i260.CarColorDatasource>()));
  gh.factory<_i371.LanguageNotifier>(
      () => _i371.LanguageNotifier(gh<_i410.LanguageUsecase>()));
  gh.factory<_i1023.SearchUsecase>(
      () => _i1023.SearchUsecase(gh<_i633.SearchRepository>()));
  gh.factory<_i758.CarMarkRepository>(
      () => _i218.CarMarkRepositoryImpl(gh<_i387.CarMarkDataSource>()));
  gh.factory<_i521.LoginRemoteDataSource>(
      () => _i521.LoginRemoteDataSourceImpl(dio: gh<_i361.Dio>()));
  gh.factory<_i286.StoriesRemoteDataSource>(
      () => _i286.StoriesRemoteDataSourceImpl(dio: gh<_i361.Dio>()));
  gh.factory<_i892.FullNameRepository>(
      () => _i239.FullNameRepositoryImpl(gh<_i728.FullNameDataSource>()));
  gh.factory<_i159.GetRegionsUseCase>(
      () => _i159.GetRegionsUseCase(gh<_i889.RegionRepository>()));
  gh.factory<_i525.SmsRemoteDataSource>(
      () => _i525.SmsRemoteDataSourceImpl(dio: gh<_i361.Dio>()));
  gh.factory<_i509.RegistrationRepository>(() =>
      _i716.RegistrationRepositoryImpl(gh<_i495.RegistrationDataSource>()));
  gh.factory<_i657.RegistrationUsecase>(
      () => _i657.RegistrationUsecase(gh<_i509.RegistrationRepository>()));
  gh.factory<_i162.FullNameUsecase>(
      () => _i162.FullNameUsecase(gh<_i892.FullNameRepository>()));
  gh.factory<_i829.FullNameDriverRepository>(
      () => _i345.FullNameRepositoryImpl(gh<_i37.FullNameDriverDataSource>()));
  gh.factory<_i656.CarWeightRepository>(
      () => _i393.CarWeightRepositoryImpl(gh<_i557.WeightDatasource>()));
  gh.factory<_i161.StoriesRepository>(() => _i458.StoriesRepositoryImpl(
      remoteDataSource: gh<_i286.StoriesRemoteDataSource>()));
  gh.factory<_i87.CarWeightUsecase>(
      () => _i87.CarWeightUsecase(gh<_i656.CarWeightRepository>()));
  gh.factory<_i692.CarBrandRepository>(
      () => _i563.CarBrandRepositoryImpl(gh<_i614.CarBrandDataSourceImpl>()));
  gh.factory<_i259.GetStoriesUseCase>(
      () => _i259.GetStoriesUseCase(gh<_i161.StoriesRepository>()));
  gh.factory<_i838.DateRepository>(
      () => _i423.DateRepositoryImpl(gh<_i465.DateDataSource>()));
  gh.factory<_i682.CarBrandUsecase>(
      () => _i682.CarBrandUsecase(gh<_i692.CarBrandRepository>()));
  gh.factory<_i565.UserRoleUsecase>(
      () => _i565.UserRoleUsecase(gh<_i162.UserRoleRepository>()));
  gh.factory<_i504.RegistrationPhoneRegionRepository>(() =>
      _i201.RegistrationRegionRepositoryImpl(
          gh<_i33.RegistrationPhoneRegionRemoteDataSource>()));
  gh.factory<_i86.CarTypeUsecase>(
      () => _i86.CarTypeUsecase(gh<_i178.CarTypeRepository>()));
  gh.factory<_i508.ListAppRepository>(
      () => _i301.ListAppRepositoryImpl(gh<_i679.ListAppDataSource>()));
  gh.factory<_i544.MapUsecase>(
      () => _i544.MapUsecase(gh<_i154.MapRepository>()));
  gh.factory<_i648.SmsRepository>(
      () => _i101.SmsRepositoryImpl(gh<_i525.SmsRemoteDataSource>()));
  gh.factory<_i1004.RegistrationPhoneGetRegionsUseCase>(() =>
      _i1004.RegistrationPhoneGetRegionsUseCase(
          gh<_i504.RegistrationPhoneRegionRepository>()));
  gh.factory<_i335.CarMarkUsecase>(
      () => _i335.CarMarkUsecase(gh<_i758.CarMarkRepository>()));
  gh.factory<_i258.CarColorUsecase>(
      () => _i258.CarColorUsecase(gh<_i699.CarColorRepository>()));
  gh.factory<_i473.LoginRepository>(() => _i467.LoginRepositoryIml(
      loginRemoteDataSource: gh<_i521.LoginRemoteDataSource>()));
  gh.factory<_i46.LoginUsecase>(
      () => _i46.LoginUsecase(loginRepository: gh<_i473.LoginRepository>()));
  gh.factory<_i527.FullNameDriverUsecase>(
      () => _i527.FullNameDriverUsecase(gh<_i829.FullNameDriverRepository>()));
  gh.factory<_i294.DateUsecase>(
      () => _i294.DateUsecase(gh<_i838.DateRepository>()));
  gh.factory<_i956.ListAppUsecase>(
      () => _i956.ListAppUsecase(gh<_i508.ListAppRepository>()));
  gh.factory<_i620.SmsUsecase>(
      () => _i620.SmsUsecase(gh<_i648.SmsRepository>()));
  return getIt;
}

class _$RegisterModule extends _i809.RegisterModule {}
