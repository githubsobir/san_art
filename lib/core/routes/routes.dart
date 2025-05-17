import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
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
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: LanguageRoute.page, path: "/language"),
        AutoRoute(page: RootRoute.page, path: "/root_page"),
        AutoRoute(page: UserCategoryRoute.page, path: "/role"),
        AutoRoute(page: ChooseLogRegRoute.page, path: "/chooseLogReg",  initial: true),
        AutoRoute(page: LoginRoute.page, path: "/login"),
        AutoRoute(page: FullNameRoute.page, path: "/full_name"),
        AutoRoute(page: DataBirthRoute.page, path: "/data_birth_page"),
        AutoRoute(
            page: RegistrationPhoneRoute.page, path: "/registration_phone"),
        AutoRoute(page: SmsRoute.page, path: "/sms_page"),
        AutoRoute(page: ImageUserExporterRoute.page, path: "/image_export"),
        AutoRoute(page: ImageDriverRoute.page, path: "/image_driver"),
        AutoRoute(page: CarMainRegistrationRoute.page, path: "/car_main_registration_page"),


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
      ];
}
