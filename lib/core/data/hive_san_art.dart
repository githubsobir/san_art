import 'dart:developer';

import 'package:hive/hive.dart';
import 'package:san_art/core/data/hive_manager.dart';

class HiveBoxes {
  static final _box =
      Hive.box(HiveService.boxName); // private singleton object for hive

  // Hive box
  // 1 til tanlangani
  set langUser(String chooseLang) {
    try {
      _box.delete("langUser");
      _box.put("langUser", chooseLang);
    } catch (e) {
      log(e.toString());
    }
  }

  String get langUser {
    try {
      return _box.get("langUser");
    } catch (e) {
      log(e.toString());
      return "uz";
    }
  }

  // 2 tanlangan til
  set langUserLang(String chooseLang) {
    try {
      _box.delete("langUserLang");
      _box.put("langUserLang", chooseLang);
    } catch (e) {
      log(e.toString());
    }
  }

  String get langUserLang {
    try {
      return _box.get("langUserLang");
    } catch (e) {
      log(e.toString());
      return "uz";
    }
  }

  set langFulName(String chooseLang) {
    try {
      _box.delete("langFulName");
      _box.put("langFulName", chooseLang);
    } catch (e) {
      log(e.toString());
    }
  }

  String get langFulName {
    try {
      return _box.get("langFulName");
    } catch (e) {
      log(e.toString());
      return "O'zbek tili";
    }
  }

  // 3 foydalanuvchi tipi
  /// usertype 1 = haydovchi
  /// usertype 2 = yuk jo'natuvchi
  /// usertype 3 = logistik kompaniya

  set userType(String userType) {
    try {
      _box.delete("usertype");
      _box.put("usertype", userType);
    } catch (e) {
      log(e.toString());
    }
  }

  String get userType {
    try {
      if (_box.get("usertype").toString() == "null") {
        return "-1";
      } else {
        return _box.get("usertype");
      }
    } catch (e) {
      log(e.toString());
      return "-1";
    }
  }

// 4 foydalanuvchi token

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

  set userPhone(String token) {
    try {
      _box.delete("userPhone");
      _box.put("userPhone", token);
    } catch (e) {
      log(e.toString());
    }
  }

  String get userPhone {
    try {
      return _box.get("userPhone");
    } catch (e) {
      log(e.toString());
      return "-1";
    }
  }

  set userName(String name) {
    try {
      _box.delete("userName");
      _box.put("userName", name);
    } catch (e) {
      log(e.toString());
    }
  }

  String get userName {
    try {
      return _box.get("userName");
    } catch (e) {
      log(e.toString());
      return " ";
    }
  }

  set userFName(String name) {
    try {
      _box.delete("userFName");
      _box.put("userFName", name);
    } catch (e) {
      log(e.toString());
    }
  }

  String get userFName {
    try {
      return _box.get("userFName");
    } catch (e) {
      log(e.toString());
      return " ";
    }
  }

  set userSName(String name) {
    try {
      _box.delete("userSName");
      _box.put("userSName", name);
    } catch (e) {
      log(e.toString());
    }
  }

  String get userSName {
    try {
      return _box.get("userSName");
    } catch (e) {
      log(e.toString());
      return " ";
    }
  }

  set userBirth(String name) {
    try {
      _box.delete("userBirth");
      _box.put("userBirth", name);
    } catch (e) {
      log(e.toString());
    }
  }

  String get userBirth {
    try {
      return _box.get("userBirth");
    } catch (e) {
      log(e.toString());
      return "_";
    }
  }

  set passportType(String name) {
    try {
      _box.delete("passportType");
      _box.put("passportType", name);
    } catch (e) {
      log(e.toString());
    }
  }

  String get passportType {
    try {
      return _box.get("passportType");
    } catch (e) {
      log(e.toString());
      return "_";
    }
  }

  set payType(String name) {
    try {
      _box.delete("payType");
      _box.put("payType", name);
    } catch (e) {
      log(e.toString());
    }
  }

  String get payType {
    try {
      return _box.get("payType");
    } catch (e) {
      log(e.toString());
      return "_";
    }
  }

  set transportType(String name) {
    try {
      _box.delete("transportType");
      _box.put("transportType", name);
    } catch (e) {
      log(e.toString());
    }
  }

  String get transportType {
    try {
      return _box.get("transportType");
    } catch (e) {
      log(e.toString());
      return "_";
    }
  }

  set modelTransport(String name) {
    try {
      _box.delete("modelTransport");
      _box.put("modelTransport", name);
    } catch (e) {
      log(e.toString());
    }
  }

  String get modelTransport {
    try {
      return _box.get("modelTransport");
    } catch (e) {
      log(e.toString());
      return "_";
    }
  }

  set modelManufacturer(String name) {
    try {
      _box.delete("modelManufacturer");
      _box.put("modelManufacturer", name);
    } catch (e) {
      log(e.toString());
    }
  }

  String get modelManufacturer {
    try {
      return _box.get("modelManufacturer");
    } catch (e) {
      log(e.toString());
      return "_";
    }
  }

  set modelCar(String name) {
    try {
      _box.delete("modelCar");
      _box.put("modelCar", name);
    } catch (e) {
      log(e.toString());
    }
  }

  String get modelCar {
    try {
      return _box.get("modelCar");
    } catch (e) {
      log(e.toString());
      return "_";
    }
  }

  set modelCarColor(String name) {
    try {
      _box.delete("modelCarColor");
      _box.put("modelCarColor", name);
    } catch (e) {
      log(e.toString());
    }
  }

  String get modelCarColor {
    try {
      return _box.get("modelCarColor");
    } catch (e) {
      log(e.toString());
      return "_";
    }
  }

  set modelCarYear(String name) {
    try {
      _box.delete("modelCarYear");
      _box.put("modelCarYear", name);
    } catch (e) {
      log(e.toString());
    }
  }

  String get modelCarYear {
    try {
      return _box.get("modelCarYear");
    } catch (e) {
      log(e.toString());
      return "_";
    }
  }

  set modelCarTonsFrom(String name) {
    try {
      _box.delete("modelCarTonsFrom");
      _box.put("modelCarTonsFrom", name);
    } catch (e) {
      log(e.toString());
    }
  }

  String get modelCarTonsFrom {
    try {
      return _box.get("modelCarTonsFrom");
    } catch (e) {
      log(e.toString());
      return "_";
    }
  }

  set modelCarTonsTo(String name) {
    try {
      _box.delete("modelCarTonsTo");
      _box.put("modelCarTonsTo", name);
    } catch (e) {
      log(e.toString());
    }
  }

  String get modelCarTonsTo {
    try {
      return _box.get("modelCarTonsTo");
    } catch (e) {
      log(e.toString());
      return "_";
    }
  }

  set modelCarVolumeFrom(String name) {
    try {
      _box.delete("modelCarVolumeFrom");
      _box.put("modelCarVolumeFrom", name);
    } catch (e) {
      log(e.toString());
    }
  }

  String get modelCarVolumeFrom {
    try {
      return _box.get("modelCarVolumeFrom");
    } catch (e) {
      log(e.toString());
      return "_";
    }
  }

  set modelCarVolumeTo(String name) {
    try {
      _box.delete("modelCarVolumeTo");
      _box.put("modelCarVolumeTo", name);
    } catch (e) {
      log(e.toString());
    }
  }

  String get modelCarVolumeTo {
    try {
      return _box.get("modelCarVolumeTo");
    } catch (e) {
      log(e.toString());
      return "_";
    }
  }


  String get userId {
    try {
      return _box.get("userId");
    } catch (e) {
      log(e.toString());
      return "_";
    }
  }

  set userId(String userID) {
    try {
      _box.delete("userId");
      _box.put("userId", userID);
    } catch (e) {
      log(e.toString());
    }
  }



  String get userRole{
    try {
      return _box.get("userRole");
    } catch (e) {
      log(e.toString());
      return "-";
    }
  }

  set userRole(String userID) {
    try {
      _box.delete("userRole");
      _box.put("userRole", userID);
    } catch (e) {
      log(e.toString());
    }
  }

  String get theme{
    try {
      return _box.get("theme");
    } catch (e) {
      log(e.toString());
      return "";
    }
  }

  set theme(String theme) {
    try {
      _box.delete("theme");
      _box.put("theme", theme);
    } catch (e) {
      log(e.toString());
    }
  }


  ///

  deleteAllBox() {
    // Hive.box('sanx').clear();
    _box.delete("usertype");
    _box.delete("userToken");
    _box.delete("userPhone");
    _box.delete("userName");
    _box.delete("userFName");
    _box.delete("userSName");
    _box.delete("payType");
    _box.delete("userBirth");
    _box.delete("userId");
  }


}
