import 'dart:async';
import 'dart:developer';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:san_art/core/back_image/back_image1.dart';
import 'package:san_art/core/screen_size/get_size.dart';
import 'package:san_art/core/theme/colors/colors_app.dart';
import 'package:san_art/core/theme/theme_switcher.dart';
import 'package:san_art/core/widgets/loading.dart';
import 'package:san_art/featurs/root_page/presentation/screens/search_page/presentation/provider/provider_search.dart';

class SearchPage extends ConsumerStatefulWidget {
  const SearchPage({super.key});

  @override
  ConsumerState<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends ConsumerState<SearchPage>
    with TickerProviderStateMixin {
  ScrollController _scrollController = ScrollController();
  late AnimationController _hideFabAnimation;

  @override
  initState() {
    _scrollController = ScrollController(initialScrollOffset: 5.0)
      ..addListener(_scrollListener);
    _hideFabAnimation =
        AnimationController(vsync: this, duration: kThemeAnimationDuration);

    super.initState();
  }

  int countList = 1;
  Timer? _debounce;

  _scrollListener() async {
    if (_scrollController.position.pixels ==
        _scrollController.position.maxScrollExtent) {
      try {
        if (_debounce?.isActive ?? false) return;
        _debounce = Timer(Duration(milliseconds: 400), () {
          try {
            countList++;
            ref.read(searchPageProvider.notifier).getSearchApp(countList);
          } catch (e) {
            log(e.toString());
          }
        });
      } catch (e) {
        log(e.toString());
      }
    }
  }

  @override
  void dispose() {
    _scrollController.dispose();
    _hideFabAnimation.dispose();
    super.dispose();
  }

  final TextEditingController _textEditControllerSearch =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    final data = ref.watch(searchPageProvider);

    return Scaffold(
      body: backImage1(
          child: SafeArea(
              child: Container(
            margin: EdgeInsets.fromLTRB(15, 0, 15, 0),
            child: Column(
              children: [
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(width: 1),
                    Container(
                      margin: const EdgeInsets.fromLTRB(10, 5, 5, 10),
                      height: 65,
                      width: AppSize.getW(context) * 0.75,
                      child: TextFormField(
                        controller: _textEditControllerSearch,
                        onFieldSubmitted: (value) {
                          // ref.read(controllerSearchDetails.notifier).getData(
                          //     nextPageLink: "",
                          //     m1: ModelOrderList99(search: value));
                        },
                        maxLines: 1,
                        maxLength: 20,
                        style: TextStyle(fontWeight: FontWeight.bold),
                        decoration: InputDecoration(
                            counter: const SizedBox.shrink(),
                            prefixIcon: Icon(
                              CupertinoIcons.search,
                            ),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(35)),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(35)),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(35)),
                            filled: true),
                      ),
                    ),
                    GestureDetector(
                        onTap: () {
                          _textEditControllerSearch.text = "";
                          // Navigator.push(
                          //     context,
                          //     CupertinoPageRoute(
                          //       builder: (context) => const SearchDetails(),
                          //     ));
                        },
                        child: Icon(
                          Icons.manage_search,
                          size: 32,
                        )),
                    const SizedBox(width: 1),
                  ],
                ),
                ThemeSwitcher(),
                Expanded(
                  child: data.when(loading: () {
                    return appLoading1();
                  }, data: (data) {
                    return GridView.builder(
                        controller: _scrollController,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          // childAspectRatio: 0.7,
                          crossAxisCount: 3,
                          crossAxisSpacing: 4,
                          mainAxisSpacing: 5,
                        ),
                        itemCount: data.length,
                        itemBuilder: (context, index) {
                          return Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(8),
                                      topRight: Radius.circular(8)),
                                  child: CachedNetworkImage(
                                      // height:200,
                                      fit: BoxFit.cover,
                                      imageUrl:
                                          "https://avatars.mds.yandex.net/get-mpic/4355034/img_id8397060369969564559.jpeg/orig"),
                                ),
                                Container(
                                  padding: EdgeInsets.all(5),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                          bottomLeft: Radius.circular(8),
                                          bottomRight: Radius.circular(8)),
                                      border: Border.all(
                                          color: AppColors.borderDark)),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                        children: [
                                          Text(data[index].id.toString()),
                                          Text("email"),
                                        ],
                                      ),
                                      Column(
                                        children: [
                                          Text("index"),
                                          Text("data"),
                                        ],
                                      ),
                                    ],
                                  ),
                                )
                              ]);

                          // Container(
                          //   decoration: BoxDecoration(
                          //     borderRadius: BorderRadius.circular(8),
                          //     image: DecorationImage(
                          //       image:
                          //       fit: BoxFit.cover,
                          //     ),
                          //   ),
                          //   height: isLargeItem
                          //       ? 200
                          //       : 100, // Katta yoki kichik element
                          // ),
                          // );
                        });
                  }, error: (error, er) {
                    return Center(child: Text(error.toString()));
                  }),
                )
              ],
            ),
          )),
          ref: ref),
    );
  }
}
