import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:san_art/core/data/hive_san_art.dart';
import 'package:san_art/featurs/root_page/presentation/screens/add_product_page/add_product_page.dart';
import 'package:san_art/featurs/root_page/presentation/screens/chat_page/chat_page.dart';
import 'package:san_art/featurs/root_page/presentation/screens/favorite_page/favorite_page.dart';
import 'package:san_art/featurs/root_page/presentation/screens/main_page/main_page.dart';
import 'package:san_art/featurs/root_page/presentation/screens/search_page/presentation/screen/search_page.dart';
import 'package:san_art/featurs/root_page/presentation/screens/search_product_page/search_product_page.dart';

@singleton
class RootUseCase {
  var box = HiveBoxes();

  /// mehmon
  Map<String, Map<IconData, Widget>> pagesGuest = {
    "home": {Icons.add_home_outlined: MainPage()},
    "search": {CupertinoIcons.search: SearchPage()},
    "map": {CupertinoIcons.map: SearchProductPage()},
    "favorite": {Icons.favorite_border: FavoritePage()},
    "chat": {Icons.chat_outlined: ChatPage()},
  };

  /// haydovchi
  Map<String, Map<IconData, Widget>> pagesDriver = {
    "home": {Icons.add_home_outlined: MainPage()},
    "search": {CupertinoIcons.search: SearchPage()},
    "search_product_page": {CupertinoIcons.doc_text_search: SearchPage()},
    "chat": {Icons.chat_outlined: ChatPage()},
  };

  /// yuk jo'natuvchu
  Map<String, Map<IconData, Widget>> pagesSender = {
    "home": {Icons.add_home_outlined: MainPage()},
    "search": {CupertinoIcons.search: SearchPage()},
    "add_product_page": {CupertinoIcons.add: AddProductPage()},
    "chat": {Icons.chat_outlined: ChatPage()},
  };

  /// logistik firma xodimi
  Map<String, Map<IconData, Widget>> pagesLogistic = {
    "home": {Icons.add_home_outlined: MainPage()},
    "search": {CupertinoIcons.search: SearchPage()},
    "favorite": {Icons.add_home_outlined: FavoritePage()},
    "chat": {Icons.chat_outlined: ChatPage()}
  };

  /// ombor egasi
  Map<String, Map<IconData, Widget>> pagesWareHouse = {
    "home": {Icons.add_home_outlined: MainPage()},
    "search": {CupertinoIcons.search: SearchPage()},
    "favorite": {Icons.favorite_border: FavoritePage()},
    "chat": {Icons.chat_outlined: ChatPage()},

  };

  Map<String, Map<IconData, Widget>> pages() {
    switch (box.userRole) {
      case "driver":
        return pagesDriver;
      case "sender":
        return pagesSender;
      case "logistic":
        return pagesSender;
      case "warehouse":
        return pagesSender;
      default:
        return pagesGuest;
    }
  }
}
