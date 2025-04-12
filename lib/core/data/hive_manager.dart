import 'package:hive_flutter/hive_flutter.dart';

class HiveService {
  static String boxName = 'san_art';

  static Future<void> initializeHive() async {
    await Hive.initFlutter();
    await Hive.openBox(boxName); // Example box
  }
}
