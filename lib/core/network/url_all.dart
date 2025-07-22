import 'package:san_art/core/network/urls.dart';


class AllUrl {

  static Map<String, dynamic> header() {
    return {"Authorization":"Token 158335ed-437d-45fd-a6f8-53eb6d833dbc"};
  }

  static String urlRegistration() {
    return "${UrlApp.storiesUrl}/api/core/auth-sms";
  }


  static String urlLogin() {
    return "${UrlApp.storiesUrl}/api/core/auth-sms";
  }

  static String urlCarBrand() {
    return "${UrlApp.storiesUrl}/api/car/brand";
  }

  static String urlCar() {
    return "${UrlApp.storiesUrl}/api/car/car";
  }

  static String urlColor() {
    return "${UrlApp.storiesUrl}/api/car/color";
  }

  static String urlCarMark() {
    return "${UrlApp.storiesUrl}/api/car/mark";
  }

  static String urlCarType() {
    return "${UrlApp.storiesUrl}/api/car/type";
  }

  static String urlCarWeightType() {
    return "${UrlApp.storiesUrl}/api/car/weight-type";
  }

  static String urlAuth() {
    return "${UrlApp.storiesUrl}/api/core/auth";
  }

  static String urlAuthSms() {
    return "${UrlApp.storiesUrl}/api/core/auth-sms";
  }

  static String urlGetCountry() {
    return "${UrlApp.storiesUrl}/api/core/country";
  }

  static String urlGetPaymentType() {
    return "${UrlApp.storiesUrl}/api/core/payment-type";
  }

  static String urlGetRegion() {
    return "${UrlApp.storiesUrl}/api/core/region";
  }

  static String urlGetSubscription() {
    return "${UrlApp.storiesUrl}/api/core/region";
  }

  static String urlSetDateBirth() {
    return UrlApp.storiesUrl;
  }

  static String urlOrder() {
    return "${UrlApp.storiesUrl}/api/deal/order";
  }

  static String urlRole() {
    return "${UrlApp.storiesUrl}/api/core/group";
  }

  static String urlPhoto() {
    return "${UrlApp.storiesUrl}/api/car/car-files";
  }

}
