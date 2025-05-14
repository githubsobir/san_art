import 'dart:io';

import 'package:connection_notifier/connection_notifier.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:san_art/core/data/hive_manager.dart';
import 'package:san_art/core/routes/routes.dart';
import 'package:san_art/core/service/injection/injection_container.dart';
import 'package:san_art/core/theme/app_theme.dart';
import 'package:san_art/core/theme/provider/theme_provider.dart';

class MyHttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext? context) {
    return super.createHttpClient(context)
      ..badCertificateCallback =
          (X509Certificate cert, String host, int port) => true;
  }
}

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await ConnectionNotifierTools.initialize();
  await EasyLocalization.ensureInitialized();
  HttpOverrides.global = MyHttpOverrides();
  await HiveService.initializeHive();
  configureDependencies();

  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]).then(
    (_) => runApp(
      EasyLocalization(
        supportedLocales: const [
          Locale('en', 'EN'),
          Locale('kk', 'KK'),
          Locale('ru', 'RU'),
          Locale('tg', 'TJ'),
          Locale('tr', 'TR'),
          Locale('uz', 'UZ'),
        ],
        path: 'assets/language',
        fallbackLocale: const Locale('uz', 'UZ'),
        child: ProviderScope(child: MyApp()),
      ),
    ),
  );
}

final router = AppRouter();

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent, // Status bar shaffof
      statusBarIconBrightness: Brightness.dark, // Status bar ikonkalari qora
      statusBarBrightness: Brightness.light, // iOS uchun status bar yorug'
    ));
    final themeMode = ref.watch(themeModeProvider);
    // return
    //   MaterialApp(
    //   localizationsDelegates: context.localizationDelegates,
    //   supportedLocales: context.supportedLocales,
    //   locale: context.locale,
    //   debugShowCheckedModeBanner: false,
    //
    //   title: 'Flutter Theme Demo',
    //   home: UserCategory(windowIdReg: ""),
    //   theme: AppTheme.lightTheme,
    //   darkTheme: AppTheme.darkTheme,
    //   // Use the theme mode from the provider
    //   themeMode: themeMode,
    // );

    return MaterialApp.router(
      routerConfig: router.config(),
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      debugShowCheckedModeBanner: false,
      title: 'Flutter Theme Demo',
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: themeMode,
    );
  }
}
