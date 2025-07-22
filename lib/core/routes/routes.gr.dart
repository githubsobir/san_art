// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'routes.dart';

/// generated route for
/// [CarBrandUiPage]
class CarBrandUiRoute extends PageRouteInfo<void> {
  const CarBrandUiRoute({List<PageRouteInfo>? children})
    : super(CarBrandUiRoute.name, initialChildren: children);

  static const String name = 'CarBrandUiRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const CarBrandUiPage();
    },
  );
}

/// generated route for
/// [CarColorUiPage]
class CarColorUiRoute extends PageRouteInfo<void> {
  const CarColorUiRoute({List<PageRouteInfo>? children})
    : super(CarColorUiRoute.name, initialChildren: children);

  static const String name = 'CarColorUiRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const CarColorUiPage();
    },
  );
}

/// generated route for
/// [CarLicencePage]
class CarLicenceRoute extends PageRouteInfo<void> {
  const CarLicenceRoute({List<PageRouteInfo>? children})
    : super(CarLicenceRoute.name, initialChildren: children);

  static const String name = 'CarLicenceRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const CarLicencePage();
    },
  );
}

/// generated route for
/// [CarLicencePhotoPage]
class CarLicencePhotoRoute extends PageRouteInfo<CarLicencePhotoRouteArgs> {
  CarLicencePhotoRoute({
    Key? key,
    required String countryCode,
    required String carGosNum,
    required String trailerGosNum,
    List<PageRouteInfo>? children,
  }) : super(
         CarLicencePhotoRoute.name,
         args: CarLicencePhotoRouteArgs(
           key: key,
           countryCode: countryCode,
           carGosNum: carGosNum,
           trailerGosNum: trailerGosNum,
         ),
         initialChildren: children,
       );

  static const String name = 'CarLicencePhotoRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<CarLicencePhotoRouteArgs>();
      return CarLicencePhotoPage(
        key: args.key,
        countryCode: args.countryCode,
        carGosNum: args.carGosNum,
        trailerGosNum: args.trailerGosNum,
      );
    },
  );
}

class CarLicencePhotoRouteArgs {
  const CarLicencePhotoRouteArgs({
    this.key,
    required this.countryCode,
    required this.carGosNum,
    required this.trailerGosNum,
  });

  final Key? key;

  final String countryCode;

  final String carGosNum;

  final String trailerGosNum;

  @override
  String toString() {
    return 'CarLicencePhotoRouteArgs{key: $key, countryCode: $countryCode, carGosNum: $carGosNum, trailerGosNum: $trailerGosNum}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! CarLicencePhotoRouteArgs) return false;
    return key == other.key &&
        countryCode == other.countryCode &&
        carGosNum == other.carGosNum &&
        trailerGosNum == other.trailerGosNum;
  }

  @override
  int get hashCode =>
      key.hashCode ^
      countryCode.hashCode ^
      carGosNum.hashCode ^
      trailerGosNum.hashCode;
}

/// generated route for
/// [CarMainRegistrationPage]
class CarMainRegistrationRoute extends PageRouteInfo<void> {
  const CarMainRegistrationRoute({List<PageRouteInfo>? children})
    : super(CarMainRegistrationRoute.name, initialChildren: children);

  static const String name = 'CarMainRegistrationRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const CarMainRegistrationPage();
    },
  );
}

/// generated route for
/// [CarMarkUiPage]
class CarMarkUiRoute extends PageRouteInfo<void> {
  const CarMarkUiRoute({List<PageRouteInfo>? children})
    : super(CarMarkUiRoute.name, initialChildren: children);

  static const String name = 'CarMarkUiRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const CarMarkUiPage();
    },
  );
}

/// generated route for
/// [CarTypeUiPage]
class CarTypeUiRoute extends PageRouteInfo<void> {
  const CarTypeUiRoute({List<PageRouteInfo>? children})
    : super(CarTypeUiRoute.name, initialChildren: children);

  static const String name = 'CarTypeUiRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const CarTypeUiPage();
    },
  );
}

/// generated route for
/// [CarWeightPage]
class CarWeightRoute extends PageRouteInfo<void> {
  const CarWeightRoute({List<PageRouteInfo>? children})
    : super(CarWeightRoute.name, initialChildren: children);

  static const String name = 'CarWeightRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const CarWeightPage();
    },
  );
}

/// generated route for
/// [CarYearInputPage]
class CarYearInputRoute extends PageRouteInfo<void> {
  const CarYearInputRoute({List<PageRouteInfo>? children})
    : super(CarYearInputRoute.name, initialChildren: children);

  static const String name = 'CarYearInputRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const CarYearInputPage();
    },
  );
}

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
/// [ChoosePaymentPage]
class ChoosePaymentRoute extends PageRouteInfo<void> {
  const ChoosePaymentRoute({List<PageRouteInfo>? children})
    : super(ChoosePaymentRoute.name, initialChildren: children);

  static const String name = 'ChoosePaymentRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const ChoosePaymentPage();
    },
  );
}

/// generated route for
/// [DataBirthDriverPage]
class DataBirthDriverRoute extends PageRouteInfo<void> {
  const DataBirthDriverRoute({List<PageRouteInfo>? children})
    : super(DataBirthDriverRoute.name, initialChildren: children);

  static const String name = 'DataBirthDriverRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const DataBirthDriverPage();
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
/// [FullNameDriverPage]
class FullNameDriverRoute extends PageRouteInfo<void> {
  const FullNameDriverRoute({List<PageRouteInfo>? children})
    : super(FullNameDriverRoute.name, initialChildren: children);

  static const String name = 'FullNameDriverRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const FullNameDriverPage();
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
/// [ImageDriverPage]
class ImageDriverRoute extends PageRouteInfo<void> {
  const ImageDriverRoute({List<PageRouteInfo>? children})
    : super(ImageDriverRoute.name, initialChildren: children);

  static const String name = 'ImageDriverRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const ImageDriverPage();
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
/// [PassportPage]
class PassportRoute extends PageRouteInfo<void> {
  const PassportRoute({List<PageRouteInfo>? children})
    : super(PassportRoute.name, initialChildren: children);

  static const String name = 'PassportRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const PassportPage();
    },
  );
}

/// generated route for
/// [PhotoCarDriverPage]
class PhotoCarDriverRoute extends PageRouteInfo<void> {
  const PhotoCarDriverRoute({List<PageRouteInfo>? children})
    : super(PhotoCarDriverRoute.name, initialChildren: children);

  static const String name = 'PhotoCarDriverRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const PhotoCarDriverPage();
    },
  );
}

/// generated route for
/// [PhotoPassport1Page]
class PhotoPassport1Route extends PageRouteInfo<void> {
  const PhotoPassport1Route({List<PageRouteInfo>? children})
    : super(PhotoPassport1Route.name, initialChildren: children);

  static const String name = 'PhotoPassport1Route';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const PhotoPassport1Page();
    },
  );
}

/// generated route for
/// [PhotoPassport2Page]
class PhotoPassport2Route extends PageRouteInfo<void> {
  const PhotoPassport2Route({List<PageRouteInfo>? children})
    : super(PhotoPassport2Route.name, initialChildren: children);

  static const String name = 'PhotoPassport2Route';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const PhotoPassport2Page();
    },
  );
}

/// generated route for
/// [PhotoPassport3Page]
class PhotoPassport3Route extends PageRouteInfo<void> {
  const PhotoPassport3Route({List<PageRouteInfo>? children})
    : super(PhotoPassport3Route.name, initialChildren: children);

  static const String name = 'PhotoPassport3Route';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const PhotoPassport3Page();
    },
  );
}

/// generated route for
/// [PhotoTexCar1Page]
class PhotoTexCar1Route extends PageRouteInfo<PhotoTexCar1RouteArgs> {
  PhotoTexCar1Route({
    Key? key,
    required int indexImage,
    List<PageRouteInfo>? children,
  }) : super(
         PhotoTexCar1Route.name,
         args: PhotoTexCar1RouteArgs(key: key, indexImage: indexImage),
         initialChildren: children,
       );

  static const String name = 'PhotoTexCar1Route';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<PhotoTexCar1RouteArgs>();
      return PhotoTexCar1Page(key: args.key, indexImage: args.indexImage);
    },
  );
}

class PhotoTexCar1RouteArgs {
  const PhotoTexCar1RouteArgs({this.key, required this.indexImage});

  final Key? key;

  final int indexImage;

  @override
  String toString() {
    return 'PhotoTexCar1RouteArgs{key: $key, indexImage: $indexImage}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! PhotoTexCar1RouteArgs) return false;
    return key == other.key && indexImage == other.indexImage;
  }

  @override
  int get hashCode => key.hashCode ^ indexImage.hashCode;
}

/// generated route for
/// [PhotoTexCar2Page]
class PhotoTexCar2Route extends PageRouteInfo<PhotoTexCar2RouteArgs> {
  PhotoTexCar2Route({
    Key? key,
    required int indexImage,
    List<PageRouteInfo>? children,
  }) : super(
         PhotoTexCar2Route.name,
         args: PhotoTexCar2RouteArgs(key: key, indexImage: indexImage),
         initialChildren: children,
       );

  static const String name = 'PhotoTexCar2Route';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<PhotoTexCar2RouteArgs>();
      return PhotoTexCar2Page(key: args.key, indexImage: args.indexImage);
    },
  );
}

class PhotoTexCar2RouteArgs {
  const PhotoTexCar2RouteArgs({this.key, required this.indexImage});

  final Key? key;

  final int indexImage;

  @override
  String toString() {
    return 'PhotoTexCar2RouteArgs{key: $key, indexImage: $indexImage}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! PhotoTexCar2RouteArgs) return false;
    return key == other.key && indexImage == other.indexImage;
  }

  @override
  int get hashCode => key.hashCode ^ indexImage.hashCode;
}

/// generated route for
/// [RegistrationPhonePage]
class RegistrationPhoneRoute extends PageRouteInfo<void> {
  const RegistrationPhoneRoute({List<PageRouteInfo>? children})
    : super(RegistrationPhoneRoute.name, initialChildren: children);

  static const String name = 'RegistrationPhoneRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const RegistrationPhonePage();
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

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! RootRouteArgs) return false;
    return key == other.key && val1 == other.val1 && val2 == other.val2;
  }

  @override
  int get hashCode => key.hashCode ^ val1.hashCode ^ val2.hashCode;
}

/// generated route for
/// [SmsPage]
class SmsRoute extends PageRouteInfo<SmsRouteArgs> {
  SmsRoute({
    Key? key,
    required String windowId,
    required String phoneNumber,
    List<PageRouteInfo>? children,
  }) : super(
         SmsRoute.name,
         args: SmsRouteArgs(
           key: key,
           windowId: windowId,
           phoneNumber: phoneNumber,
         ),
         initialChildren: children,
       );

  static const String name = 'SmsRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<SmsRouteArgs>();
      return SmsPage(
        key: args.key,
        windowId: args.windowId,
        phoneNumber: args.phoneNumber,
      );
    },
  );
}

class SmsRouteArgs {
  const SmsRouteArgs({
    this.key,
    required this.windowId,
    required this.phoneNumber,
  });

  final Key? key;

  final String windowId;

  final String phoneNumber;

  @override
  String toString() {
    return 'SmsRouteArgs{key: $key, windowId: $windowId, phoneNumber: $phoneNumber}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! SmsRouteArgs) return false;
    return key == other.key &&
        windowId == other.windowId &&
        phoneNumber == other.phoneNumber;
  }

  @override
  int get hashCode => key.hashCode ^ windowId.hashCode ^ phoneNumber.hashCode;
}

/// generated route for
/// [UserCategoryPage]
class UserCategoryRoute extends PageRouteInfo<void> {
  const UserCategoryRoute({List<PageRouteInfo>? children})
    : super(UserCategoryRoute.name, initialChildren: children);

  static const String name = 'UserCategoryRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const UserCategoryPage();
    },
  );
}
