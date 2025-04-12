import 'dart:async';
import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:easy_pie_chart/easy_pie_chart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:san_art/core/back_image/back_image1.dart';
import 'package:san_art/core/screen_size/get_size.dart';
import 'package:san_art/core/theme/colors/colors_app.dart';
import 'package:san_art/core/theme/provider/theme_provider.dart';
import 'package:san_art/core/theme/theme_switcher.dart';
import 'package:san_art/core/widgets/loading.dart';
import 'package:san_art/core/widgets/pie.dart';
import 'package:san_art/featurs/root_page/presentation/screens/main_page/presentation/provider/providers.dart';
import 'package:san_art/featurs/root_page/presentation/screens/main_page/presentation/widgets.dart';

@RoutePage()
class MainPage extends ConsumerStatefulWidget {
  const MainPage({super.key});

  @override
  ConsumerState<MainPage> createState() => _MainPageState();
}

class _MainPageState extends ConsumerState<MainPage>
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
        _debounce = Timer(Duration(milliseconds: 300), () {
          try {
            countList++;
            ref.read(listAppProvider.notifier).getListApp(countList);
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

  @override
  Widget build(BuildContext context) {
    final data = ref.watch(listAppProvider);
    final dataStories = ref.watch(storiesProvider);

    final List<PieData> pies = [
      PieData(value: 0.24, color: Colors.cyan),
      PieData(value: 0.75, color: Colors.yellow),
    ];

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: AppColors.transparent,
        centerTitle: true,
        leading: Container(
            width: 50,
            height: 50,
            margin: const EdgeInsets.all(10),
            decoration: const BoxDecoration(boxShadow: [
              BoxShadow(color: Colors.grey, blurRadius: 1, spreadRadius: 1)
            ], shape: BoxShape.circle, color: Colors.grey),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: GestureDetector(
                onTap: () {},
                child: CachedNetworkImage(
                  imageUrl:
                      "https://avatars.mds.yandex.net/i?id=b859fb3e4d26c064309108b7a960b807a95dda75-4455006-images-thumbs&n=13",
                  alignment: Alignment.topCenter,
                  width: 50,
                  height: 55,
                  fit: BoxFit.cover,
                  progressIndicatorBuilder: (context, url, downloadProgress) =>
                      appLoading1(),
                  errorWidget: (context, url, error) => const Icon(Icons.error),
                ),
              ),
            )),
        title: const Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Familiya Ism Sharif",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    color: Colors.grey)),
            Row(
              children: [
                Icon(Icons.star, color: Colors.yellow),
                Text(
                  "4.95",
                  style: TextStyle(color: Colors.grey, fontSize: 14),
                )
              ],
            ),
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.fromLTRB(1, 1, 20, 5),
            child: Icon(CupertinoIcons.bell,
                size: 32, color: Colors.grey.shade400),
          )
        ],
      ),
      body: backImage1(
          child: SafeArea(
              child: Container(
            margin: EdgeInsets.fromLTRB(20, 10, 20, 10),
            child: data.when(data: (data) {
              return ListView.builder(
                  controller: _scrollController,
                  itemCount: data.length + 1,
                  itemBuilder: (context, index) => index < data.length
                      ? Column(children: [
                          index == 0
                              ? Column(
                                  children: [
                                    ThemeSwitcher(),
                                    AnimatedContainer(
                                        duration:
                                            const Duration(milliseconds: 600),
                                        height: ref.watch(controllerSearchOpen)
                                            ? 350
                                            : 80,
                                        child: const HeaderMain()),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        SizedBox(
                                          width: AppSize.getW(context) * 0.5,
                                          child: Text("Lenta".tr(),
                                              style: const TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 22)),
                                        ),
                                        GestureDetector(
                                          onTap: () {
                                            // Navigator.push(
                                            //     context,
                                            //     CupertinoPageRoute(
                                            //         builder: (context) =>
                                            //         const LogisticCompanyView()));
                                          },
                                          child: Text("viewAll".tr()),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                        height: 120,
                                        child: dataStories.when(data: (data) {
                                          return data.when(
                                            (success) => ListView.builder(
                                              scrollDirection: Axis.horizontal,
                                              itemCount: success.length,
                                              itemBuilder: (context, index) =>
                                                  GestureDetector(
                                                onTap: () {
                                                  // LogisticCompanyView
                                                  // MoreStories
                                                  // box.storiesOneId = ref
                                                  //     .watch(controllerMainPage.notifier)
                                                  //     .listModelStories[index]
                                                  //     .id
                                                  //     .toString();
                                                  // Navigator.push(
                                                  //     context,
                                                  //     CupertinoPageRoute(
                                                  //       builder: (context) => const MoreStories(),
                                                  //     ));
                                                },
                                                child: Container(
                                                  margin: EdgeInsets.all(5),
                                                  padding: EdgeInsets.fromLTRB(
                                                      0, 4, 0, 0),
                                                  decoration: BoxDecoration(
                                                      color: ref.watch(
                                                                  themeModeProvider) ==
                                                              ThemeMode.dark
                                                          ? Colors.grey
                                                          : Colors.white,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8)),
                                                  child: Column(
                                                    children: [
                                                      Container(
                                                        width: 65,
                                                        height: 65,
                                                        padding:
                                                            const EdgeInsets
                                                                .all(3),
                                                        margin: const EdgeInsets
                                                            .fromLTRB(
                                                            5, 2, 5, 2),
                                                        decoration:
                                                            BoxDecoration(
                                                                gradient:
                                                                    LinearGradient(
                                                                        colors: [
                                                                      Colors
                                                                          .orange,
                                                                      Colors
                                                                          .orange,
                                                                    ]),
                                                                shape: BoxShape
                                                                    .circle),
                                                        child: ClipRRect(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      100),
                                                          child:
                                                              CachedNetworkImage(
                                                            imageUrl:
                                                                "https://i.pinimg.com/originals/1c/de/2c/1cde2c712e2393ab81c5b940fa53365e.jpg",
                                                            alignment: Alignment
                                                                .topCenter,
                                                            fit: BoxFit.fill,
                                                            progressIndicatorBuilder:
                                                                (context, url,
                                                                        downloadProgress) =>
                                                                    CupertinoActivityIndicator(),
                                                            errorWidget: (context,
                                                                    url,
                                                                    error) =>
                                                                const Icon(Icons
                                                                    .error),
                                                          ),
                                                        ),
                                                      ),
                                                      Container(
                                                        padding:
                                                            const EdgeInsets
                                                                .fromLTRB(
                                                                5, 0, 5, 0),
                                                        height: 30,
                                                        width: 80,
                                                        child: Text(
                                                          success[index].name,
                                                          maxLines: 2,
                                                          textAlign:
                                                              TextAlign.center,
                                                          style:
                                                              const TextStyle(
                                                                  fontSize: 12),
                                                        ),
                                                      )
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ),
                                            (error) {
                                              return Text(error.toString());
                                            },
                                          );
                                        }, error: (error, er) {
                                          return Center(
                                              child: Text(error.toString()));
                                        }, loading: () {
                                          return appLoading1();
                                        })),
                                  ],
                                )
                              : Container(
                                  padding: const EdgeInsets.all(1),
                                  margin: const EdgeInsets.fromLTRB(5, 5, 5, 5),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      border: Border.all(
                                          color: AppColors.borderOf(context),
                                          width: 1)),
                                  child: Column(children: [
                                    SizedBox(
                                      height: 420,
                                      child: Stack(
                                        children: [
                                          ListView.builder(
                                            scrollDirection: Axis.horizontal,
                                            // itemCount: imageList.length,
                                            itemCount: data[index]
                                                .listAppImages
                                                .length,
                                            itemBuilder: (context, index2) =>
                                                ClipRRect(
                                              borderRadius:
                                                  const BorderRadius.only(
                                                      topLeft:
                                                          Radius.circular(10),
                                                      topRight:
                                                          Radius.circular(10)),
                                              child: GestureDetector(
                                                onTap: () {
                                                  // Navigator.push(
                                                  //     context,
                                                  //     CupertinoPageRoute(
                                                  //       builder: (context) =>
                                                  //           DetailPage(
                                                  //             modelOrderList: ref
                                                  //                 .watch(
                                                  //                 controllerMainPage
                                                  //                     .notifier)
                                                  //                 .listMainPage[widget
                                                  //                 .index],
                                                  //           ),
                                                  //     ));
                                                },
                                                onHorizontalDragEnd:
                                                    (DragEndDetails drag) {},
                                                child: CachedNetworkImage(
                                                  width: AppSize.getW(context),
                                                  height: 400,
                                                  fit: BoxFit.cover,
                                                  imageUrl:
                                                      "https://avatars.mds.yandex.net/i?id=c1b4b5d754ab9a06b09b518bef6b29a371d6ebb2-5305794-images-thumbs&n=13",
                                                  //imageList[index2],
                                                  alignment:
                                                      Alignment.topCenter,
                                                  progressIndicatorBuilder:
                                                      (context, url,
                                                              downloadProgress) =>
                                                          appLoading1(),
                                                  errorWidget: (context, url,
                                                          error) =>
                                                      const Icon(Icons.error),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Container(
                                            padding: const EdgeInsets.only(
                                                right: 10, bottom: 10),
                                            height: 420,
                                            child: Align(
                                              alignment: Alignment.bottomRight,
                                              child: Container(
                                                padding:
                                                    const EdgeInsets.all(4),
                                                decoration: BoxDecoration(
                                                    color: ref.watch(
                                                                themeModeProvider) ==
                                                            ThemeMode.dark
                                                        ? Colors.black
                                                        : Colors.white,
                                                    shape: BoxShape.circle),
                                                child: Icon(
                                                  Icons.local_shipping_outlined,
                                                ),
                                              ),
                                            ),
                                          ),
                                          Container(
                                            padding: const EdgeInsets.only(
                                                bottom: 10, top: 5),
                                            height: 420,
                                            child: Align(
                                                alignment: Alignment.topLeft,
                                                child: ListTile(
                                                  leading: Container(
                                                    padding:
                                                        const EdgeInsets.all(4),
                                                    decoration: BoxDecoration(
                                                        shape: BoxShape.circle),
                                                    child: CachedNetworkImage(
                                                      imageUrl:
                                                          "https://avatars.mds.yandex.net/i?id=c1b4b5d754ab9a06b09b518bef6b29a371d6ebb2-5305794-images-thumbs&n=13",
                                                      fit: BoxFit.cover,
                                                      progressIndicatorBuilder: (context,
                                                              url,
                                                              downloadProgress) =>
                                                          CircularProgressIndicator(
                                                              value:
                                                                  downloadProgress
                                                                      .progress),
                                                      errorWidget: (context,
                                                              url, error) =>
                                                          Container(
                                                        padding:
                                                            const EdgeInsets
                                                                .all(10),
                                                        margin: const EdgeInsets
                                                            .all(2),
                                                        decoration:
                                                            BoxDecoration(
                                                                shape: BoxShape
                                                                    .circle,
                                                                border:
                                                                    Border.all(
                                                                  width: 1,
                                                                )),
                                                        child: Text(
                                                          data[index].name,
                                                          style: TextStyle(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  subtitle: Text(
                                                      data[index].email,
                                                      style: TextStyle(
                                                          shadows: [
                                                            Shadow(
                                                                blurRadius: 15,
                                                                offset:
                                                                    const Offset(
                                                                        1, 1))
                                                          ])),
                                                  trailing: Container(
                                                    width: 100,
                                                    height: 40,
                                                    decoration: BoxDecoration(
                                                        color: ref.watch(
                                                                    themeModeProvider) ==
                                                                ThemeMode.dark
                                                            ? Colors.black
                                                            : Colors.white,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10),
                                                        boxShadow: [
                                                          BoxShadow(
                                                              offset:
                                                                  const Offset(
                                                                      0, 0),
                                                              blurRadius: 1),
                                                        ],
                                                        border: Border.all(
                                                            width: 1)),
                                                    child: Center(
                                                      child: Text(
                                                        "Podpiska",
                                                        style:
                                                            TextStyle(shadows: [
                                                          Shadow(
                                                              blurRadius: 15,
                                                              offset:
                                                                  const Offset(
                                                                      1, 1))
                                                        ]),
                                                      ),
                                                    ),
                                                  ),
                                                )),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      height: 12,
                                      margin:
                                          const EdgeInsets.fromLTRB(5, 0, 5, 5),
                                      child: Center(
                                        child: ListView.builder(
                                            scrollDirection: Axis.horizontal,
                                            itemCount: data.length,
                                            shrinkWrap: true,
                                            itemBuilder: (context, index) =>
                                                GestureDetector(
                                                  onTap: () {
                                                    // setState(() {});
                                                  },
                                                  child: Container(
                                                    height:
                                                        index == index ? 5 : 2,
                                                    width: index == index
                                                        ? 20
                                                        : 10,
                                                    margin:
                                                        const EdgeInsets.all(3),
                                                    decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(5)),
                                                  ),
                                                )),
                                      ),
                                    ),
                                    Container(
                                        padding: const EdgeInsets.only(
                                            right: 10, left: 10),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            const SizedBox(height: 3),
                                            Column(
                                              children: [
                                                SizedBox(
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment.end,
                                                    children: [
                                                      Row(
                                                        children: [
                                                          Icon(
                                                            Icons
                                                                .favorite_border,
                                                          ),
                                                          const SizedBox(
                                                              width: 10),
                                                          Text(
                                                            "favourite".tr(),
                                                            style: TextStyle(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold),
                                                          ),
                                                        ],
                                                      ),
                                                      Icon(
                                                        Icons
                                                            .turned_in_not_sharp,
                                                        size: 30,
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .min,
                                                            children: [
                                                              Icon(
                                                                Icons.local_atm,
                                                              ),
                                                              const SizedBox(
                                                                  width: 2),
                                                            ]),
                                                        const SizedBox(
                                                            height: 8),
                                                        Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .min,
                                                            children: [
                                                              const SizedBox(
                                                                  width: 2),
                                                              SizedBox(
                                                                width: AppSize.getW(
                                                                        context) *
                                                                    0.5,
                                                                child: Text(
                                                                  data[index]
                                                                      .email,
                                                                  maxLines: 2,
                                                                  overflow:
                                                                      TextOverflow
                                                                          .clip,
                                                                  softWrap:
                                                                      true,
                                                                  style: TextStyle(
                                                                      fontSize:
                                                                          15,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold),
                                                                ),
                                                              ),
                                                            ]),
                                                        const SizedBox(
                                                            height: 10),
                                                        Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .min,
                                                            children: [
                                                              Icon(
                                                                Icons
                                                                    .local_shipping_outlined,
                                                                size: 16,
                                                              ),
                                                              const SizedBox(
                                                                  width: 2),
                                                              // Text(
                                                              //   "Transport ${ref.watch(controllerMainPage.notifier).listMainPage[widget.index].transportType}",
                                                              //   style: TextStyle(
                                                              //       color: AppColors.white100,
                                                              //       fontSize: 15,
                                                              //       fontWeight: FontWeight.bold),
                                                              // ),
                                                            ]),
                                                      ],
                                                    ),
                                                    Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: [
                                                        const SizedBox(
                                                            height: 20),
                                                        AppChartPie(
                                                            pies: pies,
                                                            borderSize: 10,
                                                            text1:
                                                                "madeIn".tr(),
                                                            text2:
                                                                "madeIn".tr()),
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ],
                                        )),
                                    const SizedBox(height: 10),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 10),
                                      child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            "translateShow".tr(),
                                            style: TextStyle(
                                                fontSize: 12,
                                                fontWeight: FontWeight.w600),
                                          ),
                                          Text(
                                            "clack".tr(),
                                            style: TextStyle(
                                                fontSize: 12,
                                                fontWeight: FontWeight.w600),
                                          )
                                        ],
                                      ),
                                    ),
                                    const SizedBox(height: 7),
                                    GestureDetector(
                                      onTap: () {
                                        // Navigator.push(
                                        //     context,
                                        //     CupertinoPageRoute(
                                        //       builder: (context) =>
                                        //           DetailPage(
                                        //             modelOrderList: ref
                                        //                 .watch(
                                        //                 controllerMainPage.notifier)
                                        //                 .listMainPage[widget.index],
                                        //           ),
                                        //     ));
                                      },
                                      child: Text(
                                        "${data[index].postId}-${data[index].id}",
                                        // "fullInfo".tr(),
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w600),
                                      ),
                                    ),
                                    const SizedBox(height: 15),
                                  ]))
                        ])
                      : Center(child: appLoading1()));
            }, error: (error, e) {
              return Text(error.toString());
            }, loading: () {
              return appLoading1();
            }),

            // ]),
          )),
          ref: ref),
    );
  }
}
