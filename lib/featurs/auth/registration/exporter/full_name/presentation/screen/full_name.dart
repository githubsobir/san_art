import 'dart:developer';
import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:san_art/core/back_image/back_image1.dart';
import 'package:san_art/core/data/hive_san_art.dart';
import 'package:san_art/core/routes/routes.dart';
import 'package:san_art/core/screen_size/get_size.dart';
import 'package:san_art/core/theme/theme_switcher.dart';
import 'package:san_art/core/widgets/buttons/button_primary.dart';
import 'package:san_art/core/widgets/snacbars/widget_snackbars.dart';
import 'package:san_art/featurs/auth/registration/exporter/full_name/domain/entities/full_name_entities.dart';
import 'package:san_art/featurs/auth/registration/exporter/full_name/presentation/provider/full_name_provider.dart';

@RoutePage()
class FullNamePage extends ConsumerStatefulWidget {
  const FullNamePage({super.key});

  @override
  ConsumerState<FullNamePage> createState() => _FullNameState();
}

class _FullNameState extends ConsumerState<FullNamePage> {
  final box = HiveBoxes();

  TextEditingController txtName = TextEditingController();
  TextEditingController txtFName = TextEditingController();
  TextEditingController txtSName = TextEditingController();

  @override
  void initState() {
    log("Exporter Full Name");
    super.initState();
  }
  @override
  void dispose() {
    txtName.dispose();
    txtFName.dispose();
    txtSName.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    ref.listen(fullNameProviders, (previous, next) {
      try {
        log(next.value!.message.toString());
      } catch (e) {
        log("###");
        log(previous!.error.toString());
        log(next.asData!.error.toString());
      }

      // previous.value
      /// shu yerda dialogda loading qilib keyin success bo'lsa keyingi pagega otish
    });

    return Scaffold(
      body: backImage1(child: buildBody(), ref: ref),
    );
  }

  Widget buildBody() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      child: SizedBox(
        height: AppSize.getH(context),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: [
              const SizedBox(height: 56),
              IconButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  icon: Icon(
                    Platform.isIOS ? Icons.arrow_back_ios : Icons.arrow_back,
                  )),
              const SizedBox(height: 40),
              Text("enterNameAndSurname".tr(),
                  style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontFamily: "Poppins",
                      fontSize: 30)),
              const SizedBox(height: 32),
              Text("name".tr(),
                  style: TextStyle(
                      fontFamily: "Inter",
                      fontSize: 14,
                      fontWeight: FontWeight.w400)),
              const SizedBox(height: 6),
              SizedBox(
                height: 56,
                child: TextFormField(
                  controller: txtName,
                  style: TextStyle(
                    fontSize: 16,
                    fontFamily: "Inter",
                    fontWeight: FontWeight.w400,
                  ),
                  decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.red, width: 1),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(width: 1))),
                ),
              ),
              const SizedBox(height: 24),
              Text("surname".tr(),
                  style: TextStyle(
                      fontFamily: "Inter",
                      fontSize: 14,
                      fontWeight: FontWeight.w400)),
              const SizedBox(height: 6),
              SizedBox(
                height: 56,
                child: TextFormField(
                  controller: txtFName,
                  style: TextStyle(
                      fontSize: 16,
                      fontFamily: "Inter",
                      fontWeight: FontWeight.w400),
                  decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.red, width: 1),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(width: 1))),
                ),
              ),
              const SizedBox(height: 24),
              Text("lastname".tr(),
                  style: TextStyle(
                      fontFamily: "Inter",
                      fontSize: 14,
                      fontWeight: FontWeight.w400)),
              const SizedBox(height: 6),
              SizedBox(
                height: 56,
                child: TextFormField(
                  controller: txtSName,
                  style: TextStyle(
                    fontSize: 16,
                    fontFamily: "Inter",
                    fontWeight: FontWeight.w400,
                  ),
                  decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.red, width: 1),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(width: 1))),
                ),
              ),
              const SizedBox(height: 42),
              Consumer(
                builder: (context1, ref, child) => PrimaryButton(
                  text: "continue".tr(),
                  onPressed: () {
                    if (txtName.text.toString().length > 2 &&
                        txtFName.text.length > 2 &&
                        txtSName.text.toString().length > 2) {
                      context.router.push(DataBirthRoute());

                      ref.read(fullNameProviders.notifier).setFullName(
                          fullName: FullNameEntities(
                              name: txtName.text.toString(),
                              lName: txtFName.text.toString(),
                              sName: txtSName.text.toString()));
                    } else {
                      WidgetSnackBar.errorSnackBar(
                          context: context, text: "fill_all_row".tr());
                    }
                  },
                ),
              ),
              ThemeSwitcher()
            ],
          ),
        ),
      ),
    );
  }
}
