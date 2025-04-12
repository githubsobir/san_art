import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:san_art/featurs/choose_language/presentation/screens/choose_language.dart';
import 'package:san_art/featurs/root_page/presentation/root_page.dart';
import 'package:san_art/featurs/root_page/presentation/screens/main_page/main_page.dart';

part 'routes.gr.dart';

@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes =>
      [AutoRoute(page: LanguageRoute.page, path: "/language", initial: true),
      AutoRoute(page: RootRoute.page, path: "/root_page")
      ];
}
