import 'dart:developer';
import 'package:hive/hive.dart';

class HiveBoxDriverReg{

  static final _box = Hive.box("sanx");


  set userToken(String token) {
    try {
      _box.delete("userToken");
      _box.put("userToken", token);
    } catch (e) {
      log(e.toString());
    }
  }

  String get userToken {
    try {
      return _box.get("userToken");
    } catch (e) {
      log(e.toString());
      return "-1";
    }
  }

  /// [passport]

  String get passportType {
    try {
      return _box.get("passportType");
    } catch (e) {
      log(e.toString());
      return "";
    }
  }

  set passportType(String userID) {
    try {
      _box.delete("passportType");
      _box.put("passportType", userID);
    } catch (e) {
      log(e.toString());
    }
  }

  String get passportSerNum {
    try {
      return _box.get("passportSerNum");
    } catch (e) {
      log(e.toString());
      return "";
    }
  }




  set passportSerNum(String userID) {
    try {
      _box.delete("passportSerNum");
      _box.put("passportSerNum", userID);
    } catch (e) {
      log(e.toString());
    }
  }


  set passportExpiration(String userID) {
    try {
      _box.delete("passportExpiration");
      _box.put("passportExpiration", userID);
    } catch (e) {
      log(e.toString());
    }
  }

  String get passportExpiration {
    try {
      return _box.get("passportExpiration");
    } catch (e) {
      log(e.toString());
      return "";
    }
  }


  String get passportImage1 {
    try {
      return _box.get("passportImage1");
    } catch (e) {
      log(e.toString());
      return "";
    }
  }

  set passportImage1(String userID) {
    try {
      _box.delete("passportImage1");
      _box.put("passportImage1", userID);
    } catch (e) {
      log(e.toString());
    }
  }

  String get passportImage2 {
    try {
      return _box.get("passportImage2");
    } catch (e) {
      log(e.toString());
      return "";
    }
  }

  set passportImage2(String userID) {
    try {
      _box.delete("passportImage2");
      _box.put("passportImage2", userID);
    } catch (e) {
      log(e.toString());
    }
  }

  String get passportImage3 {
    try {
      return _box.get("passportImage3");
    } catch (e) {
      log(e.toString());
      return "";
    }
  }

  set passportImage3(String userID) {
    try {
      _box.delete("passportImage3");
      _box.put("passportImage3", userID);
    } catch (e) {
      log(e.toString());
    }
  }



  /// [driver license]

  String get licenseSerNum {
    try {
      return _box.get("licenseSerNum");
    } catch (e) {
      log(e.toString());
      return "";
    }
  }

  set licenseSerNum(String userID) {
    try {
      _box.delete("licenseSerNum");
      _box.put("licenseSerNum", userID);
    } catch (e) {
      log(e.toString());
    }
  }

  String get licenseDate {
    try {
      return _box.get("licenseDate");
    } catch (e) {
      log(e.toString());
      return "";
    }
  }

  set licenseDate(String userID) {
    try {
      _box.delete("licenseDate");
      _box.put("licenseDate", userID);
    } catch (e) {
      log(e.toString());
    }
  }

  String get licenseImage1 {
    try {
      return _box.get("licenseImage1");
    } catch (e) {
      log(e.toString());
      return "";
    }
  }

  set licenseImage1(String userID) {
    try {
      _box.delete("licenseImage1");
      _box.put("licenseImage1", userID);
    } catch (e) {
      log(e.toString());
    }
  }

  String get licenseImage2 {
    try {
      return _box.get("licenseImage2");
    } catch (e) {
      log(e.toString());
      return "";
    }
  }

  set licenseImage2(String userID) {
    try {
      _box.delete("licenseImage2");
      _box.put("licenseImage2", userID);
    } catch (e) {
      log(e.toString());
    }
  }

  String get licenseImage3 {
    try {
      return _box.get("licenseImage3");
    } catch (e) {
      log(e.toString());
      return "";
    }
  }

  set licenseImage3(String userID) {
    try {
      _box.delete("licenseImage3");
      _box.put("licenseImage3", userID);
    } catch (e) {
      log(e.toString());
    }
  }



  /// Money type

  String get moneyWorkType {
    try {
      return _box.get("moneyWorkType");
    } catch (e) {
      log(e.toString());
      return "";
    }
  }

  set moneyWorkType(String userID) {
    try {
      _box.delete("moneyWorkType");
      _box.put("moneyWorkType", userID);
    } catch (e) {
      log(e.toString());
    }
  }

  String get moneyWorkName {
    try {
      return _box.get("moneyWorkName");
    } catch (e) {
      log(e.toString());
      return "";
    }
  }

  set moneyWorkName(String userID) {
    try {
      _box.delete("moneyWorkName");
      _box.put("moneyWorkName", userID);
    } catch (e) {
      log(e.toString());
    }
  }



  /// [car_gos_number]

  String get carGosRegionId {
    try {
      return _box.get("carGosRegionId");
    } catch (e) {
      log(e.toString());
      return "";
    }
  }

  set carGosRegionId(String userID) {
    try {
      _box.delete("carGosRegionId");
      _box.put("carGosRegionId", userID);
    } catch (e) {
      log(e.toString());
    }
  }



  String get carGosRegionName {
    try {
      return _box.get("carGosRegionName");
    } catch (e) {
      log(e.toString());
      return "";
    }
  }

  set carGosRegionName(String userID) {
    try {
      _box.delete("carGosRegionName");
      _box.put("carGosRegionName", userID);
    } catch (e) {
      log(e.toString());
    }
  }



  String get carGosNumber {
    try {
      return _box.get("carGosNumber");
    } catch (e) {
      log(e.toString());
      return "";
    }
  }

  set carGosNumber(String userID) {
    try {
      _box.delete("carGosNumber");
      _box.put("carGosNumber", userID);
    } catch (e) {
      log(e.toString());
    }
  }

  String get carGosNumTrailer {
    try {
      return _box.get("carGosNumTrailer");
    } catch (e) {
      log(e.toString());
      return "";
    }
  }

  set carGosNumTrailer(String userID) {
    try {
      _box.delete("carGosNumTrailer");
      _box.put("carGosNumTrailer", userID);
    } catch (e) {
      log(e.toString());
    }
  }

  String get carGosFile1 {
    try {
      return _box.get("carGosFile1");
    } catch (e) {
      log(e.toString());
      return "";
    }
  }

  set carGosFile1(String userID) {
    try {
      _box.delete("carGosFile1");
      _box.put("carGosFile1", userID);
    } catch (e) {
      log(e.toString());
    }
  }

  String get carGosFile2 {
    try {
      return _box.get("carGosFile2");
    } catch (e) {
      log(e.toString());
      return "";
    }
  }

  set carGosFile2(String userID) {
    try {
      _box.delete("carGosFile2");
      _box.put("carGosFile2", userID);
    } catch (e) {
      log(e.toString());
    }
  }

  String get carGosFile3 {
    try {
      return _box.get("carGosFile3");
    } catch (e) {
      log(e.toString());
      return "";
    }
  }

  set carGosFile3(String userID) {
    try {
      _box.delete("carGosFile3");
      _box.put("carGosFile3", userID);
    } catch (e) {
      log(e.toString());
    }
  }

  String get carGosFile4 {
    try {
      return _box.get("carGosFile4");
    } catch (e) {
      log(e.toString());
      return "";
    }
  }

  set carGosFile4(String userID) {
    try {
      _box.delete("carGosFile4");
      _box.put("carGosFile4", userID);
    } catch (e) {
      log(e.toString());
    }
  }


  /// [car_type]

  String get catWeightType {
    try {
      return _box.get("catWeightType");
    } catch (e) {
      log(e.toString());
      return "";
    }
  }

  set catWeightType(String userID) {
    try {
      _box.delete("catWeightType");
      _box.put("catWeightType", userID);
    } catch (e) {
      log(e.toString());
    }
  }


  String get bodyTypeMain {
    try {
      return _box.get("bodyTypeMain");
    } catch (e) {
      log(e.toString());
      return "";
    }
  }

  set bodyTypeMain(String userID) {
    try {
      _box.delete("bodyTypeMain");
      _box.put("bodyTypeMain", userID);
    } catch (e) {
      log(e.toString());
    }
  }


  String get carManufacture {
    try {
      return _box.get("carManufacture");
    } catch (e) {
      log(e.toString());
      return "";
    }
  }

  set carManufacture(String userID) {
    try {
      _box.delete("carManufacture");
      _box.put("carManufacture", userID);
    } catch (e) {
      log(e.toString());
    }
  }

  String get carModelId {
    try {
      return _box.get("carModelId");
    } catch (e) {
      log(e.toString());
      return "";
    }
  }

  set carModelId(String userID) {
    try {
      _box.delete("carModelId");
      _box.put("carModelId", userID);
    } catch (e) {
      log(e.toString());
    }
  }



  String get carColorId {
    try {
      return _box.get("carColorId");
    } catch (e) {
      log(e.toString());
      return "";
    }
  }

  set carColorId(String userID) {
    try {
      _box.delete("carColorId");
      _box.put("carColorId", userID);
    } catch (e) {
      log(e.toString());
    }
  }



  String get carDateYear {
    try {
      return _box.get("carDateYear");
    } catch (e) {
      log(e.toString());
      return "";
    }
  }

  set carDateYear(String userID) {
    try {
      _box.delete("carDateYear");
      _box.put("carDateYear", userID);
    } catch (e) {
      log(e.toString());
    }
  }

  /// Images

  String get carFrontImage {
    try {
      return _box.get("carFrontImage");
    } catch (e) {
      log(e.toString());
      return "";
    }
  }

  set carFrontImage(String userID) {
    try {
      _box.delete("carFrontImage");
      _box.put("carFrontImage", userID);
    } catch (e) {
      log(e.toString());
    }
  }


  String get carLeftImage {
    try {
      return _box.get("carLeftImage");
    } catch (e) {
      log(e.toString());
      return "";
    }
  }

  set carLeftImage(String userID) {
    try {
      _box.delete("carLeftImage");
      _box.put("carLeftImage", userID);
    } catch (e) {
      log(e.toString());
    }
  }


  String get carBackImage {
    try {
      return _box.get("carBackImage");
    } catch (e) {
      log(e.toString());
      return "";
    }
  }

  set carBackImage(String userID) {
    try {
      _box.delete("carBackImage");
      _box.put("carBackImage", userID);
    } catch (e) {
      log(e.toString());
    }
  }


  String get carRightImage {
    try {
      return _box.get("carRightImage");
    } catch (e) {
      log(e.toString());
      return "";
    }
  }

  set carRightImage(String userID) {
    try {
      _box.delete("carRightImage");
      _box.put("carRightImage", userID);
    } catch (e) {
      log(e.toString());
    }
  }

  String get carInsideTrailerImage {
    try {
      return _box.get("carInsideTrailerImage");
    } catch (e) {
      log(e.toString());
      return "";
    }
  }

  set carInsideTrailerImage(String userID) {
    try {
      _box.delete("carInsideTrailerImage");
      _box.put("carInsideTrailerImage", userID);
    } catch (e) {
      log(e.toString());
    }
  }








}