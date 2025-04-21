import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:san_art/featurs/auth/choose_role/presentation/screen/choose_role.dart';
import 'package:san_art/featurs/auth/login/presentation/screens/login_page.dart';
import 'package:san_art/featurs/auth/registration/exporter/date_birth/presentation/screen/data_birth.dart';
import 'package:san_art/featurs/auth/registration/exporter/full_name/presentation/screen/full_name.dart';
import 'package:san_art/featurs/auth/registration/exporter/image/presentation/screen/image_user_exporter.dart';
import 'package:san_art/featurs/choose_language/presentation/screens/choose_language.dart';
import 'package:san_art/featurs/root_page/presentation/root_page.dart';
import 'package:san_art/featurs/root_page/presentation/screens/main_page/main_page.dart';

import '../../featurs/auth/choose_log_reg/choose_log_reg.dart';

part 'routes.gr.dart';

@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: LanguageRoute.page, path: "/language"),
        AutoRoute(page: RootRoute.page, path: "/root_page"),
        AutoRoute(page: UserCategoryRoute.page, path: "/role"),
        AutoRoute(page: ChooseLogRegRoute.page, path: "/chooseLogReg"),
        AutoRoute(page: LoginRoute.page, path: "/login"),
        AutoRoute(page: FullNameRoute.page, path: "/full_name", initial: true),
        AutoRoute(page: DataBirthRoute.page, path: "/data_birth_page",),
      ];
}
