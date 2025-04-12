import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:san_art/core/service/injection/injection_container.dart';
import 'package:san_art/featurs/auth/choose_role/domain/usecase/role_usecase.dart';

final getRoleUsecase =
    Provider<UserRoleUsecase>((ref) => getIt<UserRoleUsecase>());

final listRole = FutureProvider((ref) => ref.read(getRoleUsecase).call());

final userCategoryControllerIndex = StateProvider<int>((ref) => 0);
final userCategoryControllerCheckBoxValue = StateProvider<String>((ref) => "");
