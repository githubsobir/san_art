import 'package:flutter/material.dart';
import 'package:san_art/core/data/hive_san_art.dart';

Widget userRoleIcon() {
  var box = HiveBoxes();
  switch (box.userRole) {
    case "1":
      return Icon(Icons.local_shipping);
    case "2":
      return Icon(Icons.people);
    case "3":
      return Icon(Icons.business);
    case "4":
      return Icon(Icons.home_repair_service_outlined);
    default:
      return Icon(Icons.person_add_alt_outlined);
  }
}
