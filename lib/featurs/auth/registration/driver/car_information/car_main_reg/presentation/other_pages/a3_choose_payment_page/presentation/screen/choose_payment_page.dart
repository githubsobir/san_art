import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:san_art/core/back_image/back_image1.dart';
import 'package:san_art/core/data/hive_passport/hive_passport.dart';
import 'package:san_art/core/theme/colors/colors_app.dart';
import 'package:san_art/core/widgets/buttons/button_primary.dart';
import 'package:san_art/core/widgets/loading.dart';
import 'package:san_art/featurs/auth/registration/driver/car_information/car_main_reg/presentation/other_pages/a3_choose_payment_page/presentation/provider/choose_payment_provider.dart';

@RoutePage()
class ChoosePaymentPage extends ConsumerStatefulWidget {
  const ChoosePaymentPage({super.key});

  @override
  ConsumerState<ChoosePaymentPage> createState() => _ChoosePaymentPageState();
}

class _ChoosePaymentPageState extends ConsumerState<ChoosePaymentPage> {
  String val1 = "cash".tr();
  int valNum = 0;
  var box = HiveBoxDriverReg();

  String titleText = "choosePaymentType".tr();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: AppColors.transparent,
          iconTheme: IconThemeData(color: AppColors.textAppBarColor(context)),
          elevation: 0,
        ),
        body: backImage1(
            child: ref.watch(controllerPayment).boolGetData
                ? Container(
                    margin: const EdgeInsets.all(20),
                    child: Column(
                      children: [
                        Text(
                          titleText,
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 30),
                        // SizedBox(
                        //     height: 250,
                        //     child: ListView.builder(
                        //       itemCount: ref
                        //           .watch(controllerPayment.notifier)
                        //           .listModelChoosePayment
                        //           .length,
                        //       itemBuilder: (context, index) => Card(
                        //         child: ListTile(
                        //           title: Text(ref
                        //               .watch(controllerPayment.notifier)
                        //               .listModelChoosePayment[index].name,
                        //               style: const TextStyle(
                        //                 fontWeight: FontWeight.bold,
                        //               )),
                        //           // trailing: GestureDetector(
                        //           //   child: Radio(
                        //           //       value:
                        //           //
                        //           //       ref
                        //           //           .watch(controllerPayment.notifier)
                        //           //           .listModelChoosePayment[index].name,
                        //           //       autofocus: false,
                        //           //       groupValue:  box.moneyWorkName.isEmpty? val1: box.moneyWorkName,
                        //           //       activeColor: AppColors.colorBackground,
                        //           //       onChanged: (val) {
                        //           //         val1 = ref
                        //           //             .watch(controllerPayment.notifier)
                        //           //             .listModelChoosePayment[index].name;
                        //           //         box.moneyWorkType =
                        //           //             ref
                        //           //                 .watch(controllerPayment.notifier)
                        //           //                 .listModelChoosePayment[index].id.toString();
                        //           //
                        //           //         box.moneyWorkName =  ref
                        //           //             .watch(controllerPayment.notifier)
                        //           //             .listModelChoosePayment[index].name.toString();
                        //           //
                        //           //         valNum = index;
                        //           //         ref.read(controllerPayment.notifier).
                        //           //         updateUi();
                        //           //       }),
                        //           // ),
                        //           onTap: () {
                        //             valNum = index;
                        //             // val1 = ref
                        //             //     .watch(controllerPayment.notifier)
                        //             //     .listModelChoosePayment[index].name;
                        //             // box.moneyWorkType = ref
                        //             //     .watch(controllerPayment.notifier)
                        //             //     .listModelChoosePayment[index].id.toString();
                        //             // box.moneyWorkName = ref
                        //             //     .watch(controllerPayment.notifier)
                        //             //     .listModelChoosePayment[index].name.toString();
                        //             // ref.read(controllerPayment.notifier).
                        //             // updateUi();
                        //           },
                        //         ),
                        //       ),
                        //     )),
                        const Spacer(),
                        PrimaryButton(
                          onPressed: () {
                            // ref
                            //     .read(controllerPayment.notifier)
                            //     .setData(index: valNum);
                            // ref.read(controllerBoolMoneyType.notifier).update((state) => true);
                            // Navigator.push(
                            //     context,
                            //     CupertinoPageRoute(
                            //       builder: (context) => const TextCarEnterInfo(),
                            //     ));
                          },
                          text: "continue".tr(),
                        )
                      ],
                    ),
                  )
                : Center(child: appLoading1()),
            ref: ref));
  }
}
