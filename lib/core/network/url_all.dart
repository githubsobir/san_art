import 'package:san_art/core/network/urls.dart';

class AllUrl {
  static String carBrandUrl() {
    return "${UrlApp.storiesUrl}/api/car/brand";
  }

  static String carCarUrl() {
    return "${UrlApp.storiesUrl}/api/car/car";
  }

  static String carColorUrl() {
    return "${UrlApp.storiesUrl}/api/car/color";
  }

  static String carMarkUrl() {
    return "${UrlApp.storiesUrl}/api/car/mark";
  }

  static String carTypeUrl() {
    return "${UrlApp.storiesUrl}/api/car/type";
  }

  static String carWeightTypeUrl() {
    return "${UrlApp.storiesUrl}/api/car/weight-type";
  }

  static String authUrl() {
    return "${UrlApp.storiesUrl}/api/core/auth";
  }

  static String authSmsUrl() {
    return "${UrlApp.storiesUrl}/api/core/auth-sms";
  }

  static String getCountryUrl() {
    return "${UrlApp.storiesUrl}/api/core/country";
  }

  static String getPaymentTypeUrl() {
    return "${UrlApp.storiesUrl}/api/core/payment-type";
  }

  static String getRegionUrl() {
    return "${UrlApp.storiesUrl}/api/core/region";
  }

  static String getSubscriptionUrl() {
    return "${UrlApp.storiesUrl}/api/core/region";
  }
}
