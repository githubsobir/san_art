import 'dart:developer';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:san_art/featurs/auth/registration/exporter/date_birth/domain/entities/date_birth_entities.dart';

final userBirthController =
    StateNotifierProvider<UserBothNotifairProvider, DateBirthEntities>(
        (ref) => UserBothNotifairProvider());

class UserBothNotifairProvider extends StateNotifier<DateBirthEntities> {
  UserBothNotifairProvider()
      : super(DateBirthEntities(
            success1: false, message1: "", errorMessage1: ""));

  /// box.userType === 1 bo'la driver
  /// box.userType === 2 bo'lsa yuk jo'natuvchi

  Future setUserBirth({required String date}) async {
    try {
      state = state.copyWith(success1: false, message1: "", errorMessage1: "");
      // state = state.copyWith(success1: false, message1: "", errorMessage1: "");
      // box.userBirth = date;
      state = state.copyWith(success1: true, message1: "", errorMessage1: "");
    } catch (ee) {
      state = state.copyWith(
          success1: true, message1: "1111", errorMessage1: ee.toString());
      log(ee.toString());
    }
  }

  Future updateUserBirth({required String date}) async {}
}
