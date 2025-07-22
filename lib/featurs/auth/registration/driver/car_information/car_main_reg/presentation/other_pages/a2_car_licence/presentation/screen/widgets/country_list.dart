import 'dart:developer';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:san_art/core/back_image/back_image1.dart';
import 'package:san_art/core/data/hive_passport/hive_passport.dart';
import 'package:san_art/core/widgets/loading.dart';
import 'package:san_art/core/widgets/widgets.dart';
import 'package:san_art/featurs/auth/registration/driver/car_information/car_main_reg/presentation/other_pages/a2_car_licence/presentation/provider/car_licence_provider.dart';

class CountryList extends ConsumerStatefulWidget {
  const CountryList({super.key});

  @override
  ConsumerState<CountryList> createState() => _CountryListState();
}

class _CountryListState extends ConsumerState<CountryList> {
  var box = HiveBoxDriverReg();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: backImage1(
        ref: ref,
        child: Stack(
          children: [
            // const BackgroundWidget2(),
            Container(
              height: MyWidgets.getH(context) * 0.6,
              margin: const EdgeInsets.all(10),
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(20)),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                        padding:
                            const EdgeInsets.only(left: 10, right: 10, top: 15),
                        child: Text("region".tr(),
                            style: const TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20))),
                    Expanded(
                      child: ref.watch(selectGetCountryListProvider).when(
                          data: (data) {
                        return data.when(
                          (success) => ListView.builder(
                            itemCount: success.length,
                            itemBuilder: (context, index) => Column(
                              children: [
                                const Divider(),
                                ListTile(
                                  onTap: () {
                                    ref
                                        .read(selectCountryProvider.notifier)
                                        .update((state) =>
                                            success[index].name.toString());

                                    ref
                                        .read(selectCountryIdProvider.notifier)
                                        .update((state) =>
                                            success[index].name.toString());
                                    box.carGosRegionId =
                                        success[index].code.toString();
                                    box.carGosRegionName =
                                        success[index].name.toString();
                                    log(success[index].code.toString());
                                    Navigator.of(context).pop();
                                  },
                                  // leading: CachedNetworkImage(
                                  //   imageUrl: data[index].flag
                                  //       .toString(),
                                  //   height: 36,
                                  //   width: 36,
                                  //   fit: BoxFit.cover,
                                  //   errorWidget: (context, url,
                                  //       error) {
                                  //     return const Icon(
                                  //         Icons.language);
                                  //   },
                                  // ),
                                  title: Text(
                                    success[index].name.toString(),
                                    style: const TextStyle(
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          (error) => Text(error.toString()),
                        );
                      }, error: (error, er2) {
                        return Center(
                          child: Text(er2.toString()),
                        );
                      }, loading: () {
                        return Center(child: appLoading1());
                      }),
                    )
                  ]),
            ),
          ],
        ),
      ),
    );
  }
}
