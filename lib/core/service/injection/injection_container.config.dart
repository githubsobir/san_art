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
import '../../../featurs/auth/login/data/datasources/region_remote_data_source.dart'
    as _i401;
import '../../../featurs/auth/login/data/repositories/regsion_repository_impl.dart'
    as _i743;
import '../../../featurs/auth/login/domain/repository/region_repository.dart'
    as _i889;
import '../../../featurs/auth/login/domain/usecases/get_region_usecase.dart'
    as _i159;
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
import '../../network/dio_client.dart' as _i703;
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
  gh.singleton<_i703.NetworkSanArt>(() => _i703.NetworkSanArt());
  gh.singleton<_i361.Dio>(() => registerModule.dio);
  gh.singleton<_i371.ProviderFactory>(() => _i371.ProviderFactory());
  gh.singleton<_i91.RootUseCase>(() => _i91.RootUseCase());
  gh.factory<_i126.MapDataSource>(() => _i126.MapDataSourceImpl());
  gh.factory<_i154.SearchDataSource>(
      () => _i154.SearchDataSourceImpl(gh<_i361.Dio>()));
  gh.factory<_i410.LanguageUsecase>(
      () => _i410.LanguageUsecase(gh<_i583.LanguageDataSource>()));
  gh.factory<_i256.ChoseRoleDataSource>(
      () => _i256.ChoseRoleDataSourceImpl(gh<_i361.Dio>()));
  gh.factory<_i679.ListAppDataSource>(
      () => _i679.ListAppDataSourceImpl(dio: gh<_i361.Dio>()));
  gh.factory<_i162.UserRoleRepository>(
      () => _i315.RoleRepositoryIml(gh<_i256.ChoseRoleDataSource>()));
  gh.factory<_i633.SearchRepository>(
      () => _i1062.SearchRepositoryImpl(gh<_i154.SearchDataSource>()));
  gh.factory<_i401.RegionRemoteDataSource>(
      () => _i401.RegionRemoteDataSourceImpl(gh<_i703.NetworkSanArt>()));
  gh.factory<_i154.MapRepository>(
      () => _i407.MapRepositoryImpl(gh<_i126.MapDataSource>()));
  gh.factory<_i371.LanguageNotifier>(
      () => _i371.LanguageNotifier(gh<_i410.LanguageUsecase>()));
  gh.factory<_i1023.SearchUsecase>(
      () => _i1023.SearchUsecase(gh<_i633.SearchRepository>()));
  gh.factory<_i286.StoriesRemoteDataSource>(
      () => _i286.StoriesRemoteDataSourceImpl(dio: gh<_i361.Dio>()));
  gh.factory<_i161.StoriesRepository>(() => _i458.StoriesRepositoryImpl(
      remoteDataSource: gh<_i286.StoriesRemoteDataSource>()));
  gh.factory<_i259.GetStoriesUseCase>(
      () => _i259.GetStoriesUseCase(gh<_i161.StoriesRepository>()));
  gh.factory<_i565.UserRoleUsecase>(
      () => _i565.UserRoleUsecase(gh<_i162.UserRoleRepository>()));
  gh.factory<_i508.ListAppRepository>(
      () => _i301.ListAppRepositoryImpl(gh<_i679.ListAppDataSource>()));
  gh.factory<_i544.MapUsecase>(
      () => _i544.MapUsecase(gh<_i154.MapRepository>()));
  gh.factory<_i889.RegionRepository>(
      () => _i743.RegionRepositoryImpl(gh<_i401.RegionRemoteDataSource>()));
  gh.factory<_i159.GetRegionsUseCase>(
      () => _i159.GetRegionsUseCase(gh<_i889.RegionRepository>()));
  gh.factory<_i956.ListAppUsecase>(
      () => _i956.ListAppUsecase(gh<_i508.ListAppRepository>()));
  return getIt;
}

class _$RegisterModule extends _i809.RegisterModule {}
