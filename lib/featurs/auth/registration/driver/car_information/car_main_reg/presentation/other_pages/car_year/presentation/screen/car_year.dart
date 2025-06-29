import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:san_art/core/back_image/back_image1.dart';
import 'package:san_art/core/theme/colors/colors_app.dart';
import 'package:san_art/core/theme/theme_switcher.dart';
import 'package:san_art/core/widgets/calendar_year.dart';

@RoutePage()
class CarYearInputPage extends ConsumerStatefulWidget {
  const CarYearInputPage({super.key});

  @override
  _CarYearInputPageState createState() => _CarYearInputPageState();
}

class _CarYearInputPageState extends ConsumerState<CarYearInputPage> {
  TextEditingController _yearController = TextEditingController();

  DateTime dateTime = DateTime.now();

  @override
  void initState() {
    super.initState();
    _yearController.text = '2012';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: AppColors.transparent,
        iconTheme: IconThemeData(color: AppColors.textAppBarColor(context)),
        title: Text(
          'В каком году выпустили вашу машину',
          maxLines: 2,
          style: TextStyle(
              fontWeight: FontWeight.bold,
              color: AppColors.textAppBarColor(context)),
        ),
      ),
      body: backImage1(
        ref: ref,
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Год выпуска',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),

                SizedBox(height: 12),

                // Input field

                const SizedBox(height: 6),
                GestureDetector(
                  onTap: () async {
                    showYearPicker(context, ref);
                  },
                  child: Container(
                      height: 60,
                      width: double.infinity,
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                              color: (ref
                                          .watch(selectCalendarYearProvider)
                                          .length >
                                      5)
                                  ? Colors.red
                                  : Colors.grey)),
                      child: Row(
                        children: [
                          Text(
                            ref.watch(selectCalendarYearProvider),
                            style: TextStyle(
                                fontSize: 16,
                                fontFamily: "Poppins",
                                fontWeight: FontWeight.w400),
                          )
                        ],
                      )),
                ),
                ThemeSwitcher(),
                Spacer(),

                // Continue button
                Container(
                  width: double.infinity,
                  height: 56,
                  child: ElevatedButton(
                    onPressed: () {
                      // Handle continue action
                      print('Year: ${_yearController.text}');
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.primaryButtonColor(context),
                      foregroundColor: Colors.white,
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    child: Text(
                      'continue'.tr(),
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),

                SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _yearController.dispose();
    super.dispose();
  }
}
