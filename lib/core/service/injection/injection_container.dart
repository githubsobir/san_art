// Bu fayl get_it va injectable o'rtasidagi bog'lovchi vazifasini bajaradi
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'injection_container.config.dart';

final GetIt getIt = GetIt.instance;

@InjectableInit(
  initializerName: 'init',
  preferRelativeImports: true,
  asExtension: false
)

void configureDependencies() => init(getIt);

@module
abstract class RegisterModule {
  @singleton
  Dio get dio => Dio()
    ..options.connectTimeout = const Duration(milliseconds: 5000)
    ..options.receiveTimeout = const Duration(milliseconds: 5000);
}
