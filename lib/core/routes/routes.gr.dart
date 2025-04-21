// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'routes.dart';

/// generated route for
/// [ChooseLogRegPage]
class ChooseLogRegRoute extends PageRouteInfo<void> {
  const ChooseLogRegRoute({List<PageRouteInfo>? children})
    : super(ChooseLogRegRoute.name, initialChildren: children);

  static const String name = 'ChooseLogRegRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const ChooseLogRegPage();
    },
  );
}

/// generated route for
/// [DataBirthPage]
class DataBirthRoute extends PageRouteInfo<void> {
  const DataBirthRoute({List<PageRouteInfo>? children})
    : super(DataBirthRoute.name, initialChildren: children);

  static const String name = 'DataBirthRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const DataBirthPage();
    },
  );
}

/// generated route for
/// [FullNamePage]
class FullNameRoute extends PageRouteInfo<void> {
  const FullNameRoute({List<PageRouteInfo>? children})
    : super(FullNameRoute.name, initialChildren: children);

  static const String name = 'FullNameRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const FullNamePage();
    },
  );
}

/// generated route for
/// [ImageUserExporterPage]
class ImageUserExporterRoute extends PageRouteInfo<void> {
  const ImageUserExporterRoute({List<PageRouteInfo>? children})
    : super(ImageUserExporterRoute.name, initialChildren: children);

  static const String name = 'ImageUserExporterRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const ImageUserExporterPage();
    },
  );
}

/// generated route for
/// [LanguagePage]
class LanguageRoute extends PageRouteInfo<void> {
  const LanguageRoute({List<PageRouteInfo>? children})
    : super(LanguageRoute.name, initialChildren: children);

  static const String name = 'LanguageRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const LanguagePage();
    },
  );
}

/// generated route for
/// [LoginPage]
class LoginRoute extends PageRouteInfo<void> {
  const LoginRoute({List<PageRouteInfo>? children})
    : super(LoginRoute.name, initialChildren: children);

  static const String name = 'LoginRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const LoginPage();
    },
  );
}

/// generated route for
/// [MainPage]
class MainRoute extends PageRouteInfo<void> {
  const MainRoute({List<PageRouteInfo>? children})
    : super(MainRoute.name, initialChildren: children);

  static const String name = 'MainRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const MainPage();
    },
  );
}

/// generated route for
/// [RootPage]
class RootRoute extends PageRouteInfo<RootRouteArgs> {
  RootRoute({
    Key? key,
    required String val1,
    required String val2,
    List<PageRouteInfo>? children,
  }) : super(
         RootRoute.name,
         args: RootRouteArgs(key: key, val1: val1, val2: val2),
         initialChildren: children,
       );

  static const String name = 'RootRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<RootRouteArgs>();
      return RootPage(key: args.key, val1: args.val1, val2: args.val2);
    },
  );
}

class RootRouteArgs {
  const RootRouteArgs({this.key, required this.val1, required this.val2});

  final Key? key;

  final String val1;

  final String val2;

  @override
  String toString() {
    return 'RootRouteArgs{key: $key, val1: $val1, val2: $val2}';
  }
}

/// generated route for
/// [UserCategoryPage]
class UserCategoryRoute extends PageRouteInfo<UserCategoryRouteArgs> {
  UserCategoryRoute({
    Key? key,
    required String windowIdReg,
    List<PageRouteInfo>? children,
  }) : super(
         UserCategoryRoute.name,
         args: UserCategoryRouteArgs(key: key, windowIdReg: windowIdReg),
         initialChildren: children,
       );

  static const String name = 'UserCategoryRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<UserCategoryRouteArgs>();
      return UserCategoryPage(key: args.key, windowIdReg: args.windowIdReg);
    },
  );
}

class UserCategoryRouteArgs {
  const UserCategoryRouteArgs({this.key, required this.windowIdReg});

  final Key? key;

  final String windowIdReg;

  @override
  String toString() {
    return 'UserCategoryRouteArgs{key: $key, windowIdReg: $windowIdReg}';
  }
}
