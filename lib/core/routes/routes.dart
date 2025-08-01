import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:san_art/core/data/hive_san_art.dart';
import 'package:san_art/featurs/auth/choose_role/presentation/screen/choose_role.dart';
import 'package:san_art/featurs/auth/login/presentation/screens/login_page.dart';
import 'package:san_art/featurs/auth/registration/driver/car_information/car_main_reg/presentation/other_pages/a1_passport_page/presentation/screen/passport_page.dart';
import 'package:san_art/featurs/auth/registration/driver/car_information/car_main_reg/presentation/other_pages/a1_passport_page/presentation/widgets/photo_passport1.dart';
import 'package:san_art/featurs/auth/registration/driver/car_information/car_main_reg/presentation/other_pages/a1_passport_page/presentation/widgets/photo_passport2.dart';
import 'package:san_art/featurs/auth/registration/driver/car_information/car_main_reg/presentation/other_pages/a1_passport_page/presentation/widgets/photo_passport3.dart';
import 'package:san_art/featurs/auth/registration/driver/car_information/car_main_reg/presentation/other_pages/a2_car_licence/presentation/screen/car_licence_page.dart';
import 'package:san_art/featurs/auth/registration/driver/car_information/car_main_reg/presentation/other_pages/a2_car_licence/presentation/screen/widgets/car_licence_photo.dart';
import 'package:san_art/featurs/auth/registration/driver/car_information/car_main_reg/presentation/other_pages/a2_car_licence/presentation/screen/widgets/photo_tex_car1.dart';
import 'package:san_art/featurs/auth/registration/driver/car_information/car_main_reg/presentation/other_pages/a2_car_licence/presentation/screen/widgets/photo_tex_car2.dart';
import 'package:san_art/featurs/auth/registration/driver/car_information/car_main_reg/presentation/other_pages/a3_choose_payment_page/presentation/screen/choose_payment_page.dart';
import 'package:san_art/featurs/auth/registration/driver/car_information/car_main_reg/presentation/other_pages/a5_car_mark_choose/presentation/screen/car_mark_ui.dart';
import 'package:san_art/featurs/auth/registration/driver/car_information/car_main_reg/presentation/other_pages/a6_photo_car_page/presentation/screen/photo_car_page.dart';
import 'package:san_art/featurs/auth/registration/driver/car_information/car_main_reg/presentation/other_pages/car_brand/presentation/screen/car_brand_ui.dart';
import 'package:san_art/featurs/auth/registration/driver/car_information/car_main_reg/presentation/other_pages/car_color/presentation/screen/car_color_ui.dart';
import 'package:san_art/featurs/auth/registration/driver/car_information/car_main_reg/presentation/other_pages/car_type/presentation/screen/car_type_ui.dart';
import 'package:san_art/featurs/auth/registration/driver/car_information/car_main_reg/presentation/other_pages/car_weigth/presentation/screen/car_weigth.dart';
import 'package:san_art/featurs/auth/registration/driver/car_information/car_main_reg/presentation/other_pages/car_year/presentation/screen/car_year.dart';
import 'package:san_art/featurs/auth/registration/driver/car_information/car_main_reg/presentation/screen/car_main_reg.dart';
import 'package:san_art/featurs/auth/registration/driver/user_information/date_birth/presentation/screen/data_birth.dart';
import 'package:san_art/featurs/auth/registration/driver/user_information/full_name/presentation/screen/full_name.dart';
import 'package:san_art/featurs/auth/registration/driver/user_information/image/presentation/screen/image_driver.dart';
import 'package:san_art/featurs/auth/registration/exporter/date_birth/presentation/screen/data_birth.dart';
import 'package:san_art/featurs/auth/registration/exporter/full_name/presentation/screen/full_name.dart';
import 'package:san_art/featurs/auth/registration/exporter/image/presentation/screen/image_user_exporter.dart';
import 'package:san_art/featurs/auth/registration/phone_registration/presentation/screens/registration_page.dart';
import 'package:san_art/featurs/auth/sms_page/presentation/screen/sms_page.dart';
import 'package:san_art/featurs/choose_language/presentation/screens/choose_language.dart';
import 'package:san_art/featurs/root_page/presentation/root_page.dart';
import 'package:san_art/featurs/root_page/presentation/screens/main_page/main_page.dart';

import '../../featurs/auth/choose_log_reg/choose_log_reg.dart';

part 'routes.gr.dart';

@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  var hive = HiveBoxes();

  @override
  List<AutoRoute> get routes => [
        AutoRoute(
            page: LanguageRoute.page,
            path: "/language",
            initial: hive.langUser != "1"),
        AutoRoute(page: RootRoute.page, path: "/root_page"),
        AutoRoute(page: UserCategoryRoute.page, path: "/role"),
        AutoRoute(
            page: ChooseLogRegRoute.page,
            path: "/chooseLogReg",
        ),
        AutoRoute(page: LoginRoute.page, path: "/login"),
        AutoRoute(page: FullNameRoute.page, path: "/full_name"),
        AutoRoute(page: FullNameDriverRoute.page, path: "/full_name_driver"),
        AutoRoute(page: DataBirthRoute.page, path: "/data_birth_page"),
        AutoRoute(
            page: DataBirthDriverRoute.page, path: "/data_birth_driver_page"),
        AutoRoute(
            page: RegistrationPhoneRoute.page, path: "/registration_phone"),
        AutoRoute(page: SmsRoute.page, path: "/sms_page"),
        AutoRoute(page: ImageUserExporterRoute.page, path: "/image_export"),
        AutoRoute(page: ImageDriverRoute.page, path: "/image_driver"),
        AutoRoute(
            page: CarMainRegistrationRoute.page,
            path: "/car_main_registration_page",     initial: hive.langUser == "1"),

        ///
        AutoRoute(page: PassportRoute.page, path: "/passport"),
        AutoRoute(page: PhotoPassport1Route.page, path: "/passport_page1"),
        AutoRoute(page: PhotoPassport2Route.page, path: "/passport_page2"),
        AutoRoute(page: PhotoPassport3Route.page, path: "/passport_page3"),

        ///
        AutoRoute(page: CarLicenceRoute.page, path: "/car_licence_page"),
        AutoRoute(
            page: CarLicencePhotoRoute.page, path: "/car_licence_photo_page"),
        AutoRoute(
            page: PhotoTexCar1Route.page, path: "/car_licence_photo1_page"),
        AutoRoute(
            page: PhotoTexCar2Route.page, path: "/car_licence_photo2_page"),
        AutoRoute(page: ChoosePaymentRoute.page, path: "/choose_payment3_page"),

        AutoRoute(page: CarWeightRoute.page, path: "/choose_weight0_page"),

        AutoRoute(page: CarMarkUiRoute.page, path: "/car_mark_page"),

        AutoRoute(page: CarTypeUiRoute.page, path: "/car_type_page"),

        AutoRoute(page: CarBrandUiRoute.page, path: "/car_brand_page"),

        AutoRoute(page: CarColorUiRoute.page, path: "/car_brand_page"),

        AutoRoute(page: CarYearInputRoute.page, path: "/car_year_page"),
        AutoRoute(page: PhotoCarDriverRoute.page, path: "/car_photo_page"),
      ];
}
