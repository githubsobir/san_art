import 'dart:developer';

import 'package:flutter_riverpod/flutter_riverpod.dart';

final selectDataBirthDriverDateProvider = StateProvider.autoDispose((ref) => "");

final userBirthDriverController =
    StateNotifierProvider<UserBothDriverNotifairProvider, dynamic>(
        (ref) => UserBothDriverNotifairProvider());

class UserBothDriverNotifairProvider extends StateNotifier<dynamic> {
  UserBothDriverNotifairProvider() : super(dynamic);

  /// box.userType === 1 bo'la driver
  /// box.userType === 2 bo'lsa yuk jo'natuvchi

  Future setUserBirth({required String date}) async {
    try {
      state = state.copyWith(success1: false, message1: "", errorMessage1: "");
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
