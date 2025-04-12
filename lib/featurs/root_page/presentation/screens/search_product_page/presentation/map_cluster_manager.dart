import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:san_art/core/screen_size/get_size.dart';
import 'package:san_art/featurs/root_page/presentation/screens/search_product_page/presentation/widgets/search/address_search.dart';
import 'package:san_art/featurs/root_page/presentation/screens/search_product_page/presentation/widgets/search/place_services.dart';
import 'package:uuid/uuid.dart';




Widget searchMapPage(BuildContext context) {

  final textFieldController = TextEditingController();

  return  Container(
    margin: const EdgeInsets.fromLTRB(20, 5, 20, 10),
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        image: const DecorationImage(
            image: AssetImage("assets/images/road3.png"),
            fit: BoxFit.cover)),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          height: 60,
          width: AppSize.getW(context) * 0.7,
          child: TextFormField(
            controller: textFieldController,
            readOnly: true,
            onTap: () async {
              final sessionToken = const Uuid().v4();
              final Suggestion? result = await showSearch(
                context: context,
                delegate: AddressSearch(sessionToken),
              );
              final placeLocation = await PlaceApiProvider(
                  sessionToken)
                  .getLocationFromPlaceId(result!.placeId);

                textFieldController.text =
                    result.description;
                // moveCamera(placeLocation.latitude,
                //     placeLocation.longitude);
            },
            decoration: InputDecoration(
                hintText: "enter_address".tr(),
                hintStyle: TextStyle(

                    fontFamily: "Inter",
                    fontSize: 16,
                    fontWeight: FontWeight.w500),
                prefixIcon: Icon(
                  CupertinoIcons.search,

                ),
                border: InputBorder.none),

            style: TextStyle(

                fontWeight: FontWeight.w400,
                fontFamily: "Inter",
                fontSize: 16),
          ),
        ),
        const SizedBox(width: 10),
        SvgPicture.asset(
          "assets/images/linear.svg",
          // "Assets.imagesLinear",
          width: 24,
          height: 24,
        ),
        const SizedBox(width: 12)
      ],
    ),
  );
}