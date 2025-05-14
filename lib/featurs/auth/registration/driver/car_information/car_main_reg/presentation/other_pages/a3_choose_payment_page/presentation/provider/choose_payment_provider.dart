import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:san_art/featurs/auth/registration/driver/car_information/car_main_reg/presentation/other_pages/a3_choose_payment_page/domain/entities/request/choose_payment_entities.dart';

final controllerPayment =
StateNotifierProvider<ControllerPayment, ChoosePaymentEntities>(
        (ref) => ControllerPayment());


class ControllerPayment extends StateNotifier<ChoosePaymentEntities> {
  ControllerPayment()
      : super(ChoosePaymentEntities(boolGetData: true, message: "", errorMessage: "")) {
    getData();
  }

  // var dio = Dio();
  // var box = HiveBoxes();

  // List<ModelChoosePaymentType> listModelChoosePayment = [];

  Future getData() async {
  //   try {
  //     state =
  //         state.copyWith(boolGetData1: false, message1: "", errorMessage1: "");
  //     log("get data");
  //
  //     Response response =
  //     await dio.get("${MainUrl.urlMain2}/api/v1/main/payment-type/");
  //
  //     ModelChoosePaymentTypeMain modelChoosePaymentTypeMain =
  //     ModelChoosePaymentTypeMain.fromJson(response.data);
  //     listModelChoosePayment = modelChoosePaymentTypeMain.results;
  //     log(jsonEncode(response.data).toString());
  //
  //     state =
  //         state.copyWith(boolGetData1: true, message1: "", errorMessage1: "");
  //   } on DioException catch (e) {
  //     log(e.toString());
  //     state = state.copyWith(
  //         boolGetData1: true,
  //         message1: e.toString(),
  //         errorMessage1: e.toString());
  //   } catch (e1) {
  //     log(e1.toString());
  //     state = state.copyWith(
  //         boolGetData1: true,
  //         message1: e1.toString(),
  //         errorMessage1: e1.toString());
  //   }
  }

  // Future setData({required int index}) async {
  //   try {
  //     List<String> list = ["Cash", "Card", "Transfer"];
  //     state =
  //         state.copyWith(boolGetData1: false, message1: "", errorMessage1: "");
  //     FormData formData = FormData.fromMap({"payment_type": list[index]});
  //     Response response = await dio.post(
  //         "${MainUrl.urlMain2}/api/v1/main/payment-type/",
  //         data: formData,
  //         options:
  //         Options(headers: {"Authorization": "Bearer ${box.userToken}"}));
  //
  //     log(jsonEncode(response.data).toString());
  //     state =
  //         state.copyWith(boolGetData1: true, message1: "", errorMessage1: "");
  //   } on DioException catch (e) {
  //     log(e.toString());
  //     state = state.copyWith(
  //         boolGetData1: true,
  //         message1: e.toString(),
  //         errorMessage1: e.toString());
  //   } catch (e1) {
  //     log(e1.toString());
  //     state = state.copyWith(
  //         boolGetData1: true,
  //         message1: e1.toString(),
  //         errorMessage1: e1.toString());
  //   }
  // }

  updateUi() {
    state =
        state.copyWith(boolGetData: false, message: "", errorMessage: "");
    state = state.copyWith(boolGetData: true, message: "", errorMessage: "");
  }
}
