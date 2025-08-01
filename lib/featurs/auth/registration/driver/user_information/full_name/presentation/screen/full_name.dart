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
import 'package:san_art/featurs/auth/registration/driver/user_information/full_name/domain/entities/request/full_name_entities.dart';
import 'package:san_art/featurs/auth/registration/driver/user_information/full_name/presentation/provider/full_name_provider.dart';

@RoutePage()
class FullNameDriverPage extends ConsumerStatefulWidget {
  const FullNameDriverPage({super.key});

  @override
  ConsumerState<FullNameDriverPage> createState() => _FullNameDriverState();
}

class _FullNameDriverState extends ConsumerState<FullNameDriverPage> {
  final box = HiveBoxes();

  final TextEditingController _txtName = TextEditingController();
  final TextEditingController _txtFName = TextEditingController();
  final TextEditingController _txtSName = TextEditingController();

  @override
  void initState() {
    log("Driver Full Name");
    super.initState();
  }
  @override
  void dispose() {
    _txtName.dispose();
    _txtFName.dispose();
    _txtSName.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    ref.listen(fullNameDriverProviders, (previous, next) {
      try{
        log(next.value!.message.toString());

      }catch(e){
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
      child: SingleChildScrollView(
        child: SizedBox(
          height: AppSize.getH(context),
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
                      fontSize: 25)),
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
                  controller: _txtName,
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
                  controller: _txtFName,
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
                  controller: _txtSName,
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
                    if (_txtName.text.toString().length > 2 &&
                        _txtFName.text.length > 2 &&
                        _txtSName.text.toString().length > 2) {


                      ref.read(fullNameDriverProviders.notifier).setFullName(
                          fullName: FullNameDriverEntities(
                              name: _txtName.text.toString(),
                              lName:_txtFName.text.toString(),
                              sName:_txtSName.text.toString()));


                      context.router.push(DataBirthDriverRoute());
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
