import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:san_art/core/service/injection/injection_container.dart';
import 'package:san_art/featurs/root_page/domain/usecases/r_use_case.dart';

final getPageRoutes = StateProvider<Map<String, Map<IconData, Widget>>>((ref) {
  return getIt<RootUseCase>().pages();
});

final getPageRoutesName = StateProvider<List<String>>((ref) {
  var data = getIt<RootUseCase>().pages();
  List<String> listTitle = data.keys.toList();
  return listTitle;
});

final getPageRoutesIcons = StateProvider<List<IconData>>((ref) {
  var data = getIt<RootUseCase>().pages();
  List<IconData> listIcon = [];
  for (int i = 0; i < data.keys.toList().length; i++) {
    listIcon.add(data.values.elementAt(i).keys.single);
  }
  return listIcon;
});

final getPageRoutesPages = StateProvider<List<Widget>>((ref) {
  var data = getIt<RootUseCase>().pages();
  List<Widget> listWidget = [];
  for (int i = 0; i < data.keys.length; i++) {
    listWidget.add(data.values.elementAt(i).values.single);
  }
  return listWidget;
});
