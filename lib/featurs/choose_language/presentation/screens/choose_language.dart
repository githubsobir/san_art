import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:san_art/core/back_image/back_image1.dart';
import 'package:san_art/core/data/hive_san_art.dart';
import 'package:san_art/core/routes/routes.dart';
import 'package:san_art/core/service/injection/injection_container.dart';
import 'package:san_art/core/theme/theme_switcher.dart';
import 'package:san_art/featurs/choose_language/presentation/providers/language_provider.dart';

@RoutePage()
class LanguagePage extends ConsumerWidget {
  const LanguagePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final providerFactory = getIt<ProviderFactory>();
    final listLanguage = ref.watch(providerFactory.languageNotifierProvider);
    var box = HiveBoxes();

    return Scaffold(
        body: backImage1(
            ref: ref,
            child: Container(
              margin: const EdgeInsets.all(25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 92),
                  Text(
                    "chooseLang".tr(),
                    style: TextStyle(fontSize: 30),
                  ),
                  const SizedBox(height: 32),
                  ThemeSwitcher(),
                  Expanded(
                    child: ListView.builder(
                        itemCount: listLanguage.length,
                        itemBuilder: (context, index) => Card(
                              child: ListTile(
                                leading: ClipRRect(
                                  borderRadius: BorderRadius.circular(100),
                                  child: Image.asset(
                                    listLanguage[index].imageAssetLink,
                                    height: 35,
                                    width: 35,

                                    fit: BoxFit.cover,
                                    alignment: Alignment.center,
                                  ),
                                ),
                                title: Text(listLanguage[index].langName,
                                    style: TextStyle(
                                        fontFamily: "Inter",
                                        fontSize: 15,
                                        fontWeight: FontWeight.w400)),
                                trailing: GestureDetector(
                                  child: Radio(
                                      value: box.langFulName,
                                      autofocus: false,
                                      groupValue: listLanguage[index].langName,
                                      onChanged: (val) {
                                        context.setLocale(Locale(
                                            listLanguage[index].langId1,
                                            listLanguage[index].langId2));

                                        ref
                                            .read(languageProvider2.notifier)
                                            .setLanguage(
                                                listLanguage[index].langId1);

                                        listLanguage[index].boolLang = true;
                                        box.langUser = "1";
                                        box.langFulName =
                                            listLanguage[index].langName;
                                        box.langUserLang =
                                            listLanguage[index].langId1;

                                        log(
                                            "Current locale: ${context.locale.toString()}");
                                      }),
                                ),
                                // onTap: () {
                                //   context.setLocale(Locale(
                                //       listLanguage[index].langId1,
                                //       listLanguage[index].langId2));
                                //
                                //   ref
                                //       .read(languageProvider.notifier)
                                //       .state =
                                //       listLanguage[index].langId1;
                                //   listLanguage[index].boolLang = true;
                                //
                                //   box.langUser = "1";
                                //   box.langFulName =
                                //       listLanguage[index].langName;
                                //   box.langUserLang =
                                //       listLanguage[index].langId1;
                                //
                                // },
                              ),
                            )),
                  ),
                  const SizedBox(height: 10),
                  MaterialButton(
                    onPressed: () {
                      context.router.push(ChooseLogRegRoute());
                    },
                    height: 56,
                    minWidth: double.infinity,
                    shape: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                    child: Text(
                      "continue".tr(),
                      style: TextStyle(
                          fontFamily: "Inter",
                          fontSize: 16,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                  const SizedBox(height: 20),
                ],
              ),
            )));
  }
}
