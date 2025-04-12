// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'routes.dart';

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
