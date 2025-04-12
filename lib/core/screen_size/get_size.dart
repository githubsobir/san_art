import 'package:flutter/cupertino.dart';

class AppSize{

  static double getH(BuildContext context) {
    return MediaQuery.of(context).size.height;
  }
  static double getW(BuildContext context) {
    return MediaQuery.of(context).size.width;
  }
}