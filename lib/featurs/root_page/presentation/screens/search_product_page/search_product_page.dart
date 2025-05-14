import 'dart:async';
import 'dart:ui' as ui;
import 'package:custom_info_window/custom_info_window.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_cluster_manager_2/google_maps_cluster_manager_2.dart'
    as m;
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:san_art/core/back_image/back_image1.dart';
import 'package:san_art/core/screen_size/get_size.dart';
import 'package:san_art/featurs/root_page/presentation/screens/search_product_page/domain/entities/lat_lang/lat_lang_entities.dart';
import 'package:san_art/featurs/root_page/presentation/screens/search_product_page/presentation/provider/map_provider.dart';
import 'package:san_art/featurs/root_page/presentation/screens/search_product_page/presentation/widgets/cluster/cluster_item.dart';
import 'package:san_art/featurs/root_page/presentation/screens/search_product_page/presentation/widgets/search/address_search.dart';
import 'package:san_art/featurs/root_page/presentation/screens/search_product_page/presentation/widgets/search/place_services.dart';
import 'package:uuid/uuid.dart';

import '../../../../../core/theme/colors/colors_app.dart';

class SearchProductPage extends ConsumerStatefulWidget {
  const SearchProductPage({super.key});

  @override
  ConsumerState<SearchProductPage> createState() => _SearchProductPageState();
}

class _SearchProductPageState extends ConsumerState<SearchProductPage> {
  late m.ClusterManager _manager;

  // late GoogleMapController _controller;
   final Completer<GoogleMapController> _controller = Completer();
  Set<Marker> markers = {};

  static const CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(41.31090783522658, 69.27944091332454),
    zoom: 12,
  );

  var isAllOrdersShowed = false;

  @override
  void initState() {
    super.initState();
    // _manager = _initClusterManager();
    _manager.updateMap();
    getUserLocation();
  }

  late double lat;

  late double long;

  getUserLocation() async {
    Position position = await Geolocator.getCurrentPosition(
        locationSettings: LocationSettings(accuracy: LocationAccuracy.high));
    lat = position.latitude;
    long = position.longitude;
  }

  final textFieldController = TextEditingController();

  final CustomInfoWindowController _customInfoWindowController =
      CustomInfoWindowController();
  //
  // List<Place> items = [
  //   Place(
  //       id: '',
  //       imageUrl: [],
  //       price: 1,
  //       name: 'Place 1',
  //       latLng: LatLng(41.31090783522658, 69.27944091332454)),
  //   Place(
  //       id: '',
  //       imageUrl: [],
  //       price: 1,
  //       name: 'Place 2',
  //       latLng: LatLng(41.32090783522658, 69.28944091332454)),
  //   Place(
  //       id: '',
  //       imageUrl: [],
  //       price: 1,
  //       name: 'Place 3',
  //       latLng: LatLng(41.33090783522658, 69.29944091332454)),
  //   Place(
  //       id: '',
  //       imageUrl: [],
  //       price: 1,
  //       name: 'Place 4',
  //       latLng: LatLng(41.30090783522658, 69.20944091332454)),
  // ];
  //
  // m.ClusterManager _initClusterManager() {
  //   return m.ClusterManager<Place>(items, _updateMarkers,
  //       markerBuilder: _markerBuilder,
  //       extraPercent: 0.15,
  //       stopClusteringZoom: 13);
  // }

  void _updateMarkers(Set<Marker> markers) {
    setState(() {
      this.markers = markers;
    });
  }

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    final markers = ref.watch(markersProvider);
    final clusterManager =
        ref.watch(clusterManagerProvider(LangLat1(lat: "2", lang: "2")));
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: const Text("Karta"),
        centerTitle: true,
        backgroundColor: AppColors.transparent,
      ),
      body: backImage1(
          child: SafeArea(
            child: SizedBox(
              height: AppSize.getH(context) * 0.85,
              child: Stack(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      /// search

                      Container(
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
                                      delegate: AddressSearch(sessionToken));
                                  final placeLocation = await PlaceApiProvider(
                                          sessionToken)
                                      .getLocationFromPlaceId(result!.placeId);

                                  textFieldController.text = result.description;
                                  _goToPosition(
                                      latitude: placeLocation.latitude,
                                      longitude: placeLocation.longitude);
                                  // _goToPosition(
                                  //     latitude: placeLocation.latitude,
                                  //     long: placeLocation.longitude,
                                  //     longitude: placeLocation.longitude);
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
                      ),

                      /// map
                      Expanded(
                        child: Stack(
                          children: [
                            /// map
                            SizedBox(
                              height: AppSize.getH(context) * 0.85,
                              child: GoogleMap(
                                mapType: MapType.normal,
                                markers: markers,
                                initialCameraPosition: _kGooglePlex,
                                onMapCreated: (GoogleMapController controller) {
                                  {
                                    _controller.complete(controller);
                                    _customInfoWindowController
                                        .googleMapController = controller;
                                    _manager.setMapId(controller.mapId);
                                  }
                                },
                                onCameraMove: (CameraPosition position) {
                                  _manager.onCameraMove(position);
                                  _customInfoWindowController
                                      .hideInfoWindow!(); // InfoWindow ni yopish
                                },
                                //_manager.onCameraMove,
                                onCameraIdle: _manager.updateMap,
                                onTap: (position) {
                                  _customInfoWindowController.hideInfoWindow!();
                                },
                              ),
                            ),

                            /// custom info window
                            CustomInfoWindow(
                              controller: _customInfoWindowController,
                              height: 75,
                              width: 150,
                              offset: 50,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  listProducts()
                ],
              ),
            ),
          ),
          ref: ref),
    );
  }

  Future<void> _goToPosition({
    required double latitude,
    required double longitude,
  }) async {
    final GoogleMapController controller = await _controller.future;
    final CameraPosition newPosition = CameraPosition(
      target: LatLng(latitude, longitude),
      zoom: 12,
    );
    controller.animateCamera(CameraUpdate.newCameraPosition(newPosition));
  }

  ///
  _buildCustomWindow(String title) {
    return showDialog(
      context: context,
      builder: (context) => Container(
        height: 200,
        width: AppSize.getW(context) * 0.7,
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(20)),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 100,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage("orderData"), fit: BoxFit.cover)),
            ),
            Container(
              margin: const EdgeInsets.all(5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("orderData",
                      style: const TextStyle(fontWeight: FontWeight.bold)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Icon(Icons.location_on_rounded, size: 17),
                      SizedBox(
                          width: 140,
                          child: Text("cationTo",
                              // "${orderData.locationFrom}-${orderData.locationTo}",
                              style: const TextStyle(
                                  fontWeight: FontWeight.w500, fontSize: 12)))
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                          width: 110,
                          child: Text(" \$ ${"orderData.price"}",
                              style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  color: Colors.blue.shade900)))
                    ],
                  ),
                  MaterialButton(
                    height: 40,
                    minWidth: AppSize.getW(context) * 0.3,
                    // color: AppColors.colorBackground,
                    onPressed: () {
                      // Navigator.push(context,CupertinoPageRoute(builder: (context) => DetailPage(),));
                    },
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    child: Text("more".tr(),
                        style: const TextStyle(color: Colors.white)),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget listProducts() {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          GestureDetector(
            onTap: () {
              setState(() {
                isAllOrdersShowed = !isAllOrdersShowed;
              });
            },
            child: Align(
              alignment: Alignment.center,
              child: Container(
                height: 48,
                width: 198,
                decoration: const BoxDecoration(
                  color: Color.fromRGBO(81, 98, 91, 1),
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      "assets/icons/ic_orders.png",
                      height: 24,
                      width: 24,
                    ),
                    const SizedBox(width: 8),
                    Text(
                      isAllOrdersShowed
                          ? "hide_orders".tr()
                          : "show_orders".tr(),
                      style: const TextStyle(
                        fontWeight: FontWeight.w500,
                        fontFamily: "Inter",
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(height: 12),
          // Visibility(
          //   visible: isAllOrdersShowed,
          //   child: SizedBox(
          //     height: 150,
          //     child: ref.watch(mapProvider).when(
          //           data: (products) {
          //             return ListView.builder(
          //               scrollDirection: Axis.horizontal,
          //               itemCount: products.length,
          //               itemBuilder: (BuildContext context, int index) {
          //                 final product = products[index];
          //                 return Container(
          //                   decoration: const BoxDecoration(
          //                     image: DecorationImage(
          //                       image: AssetImage("assets/images/road4.png"),
          //                       fit: BoxFit.fill,
          //                     ),
          //                     borderRadius:
          //                         BorderRadius.all(Radius.circular(10)),
          //                   ),
          //                   padding: const EdgeInsets.all(8),
          //                   margin: const EdgeInsets.symmetric(horizontal: 6),
          //                   child: Row(
          //                     children: [
          //                       ClipRRect(
          //                         borderRadius: BorderRadius.circular(8.0),
          //                         child: CachedNetworkImage(
          //                           imageUrl: product.name,
          //                           fit: BoxFit.cover,
          //                           placeholder: (context, url) => const Center(
          //                             child: CircularProgressIndicator(),
          //                           ),
          //                           errorWidget: (context, url, error) =>
          //                               const Icon(Icons.error),
          //                           width: 130,
          //                           height: 156,
          //                         ),
          //                       ),
          //                       const SizedBox(width: 12),
          //                       Column(
          //                         crossAxisAlignment: CrossAxisAlignment.start,
          //                         children: [
          //                           Text(
          //                             product.name,
          //                             style: const TextStyle(
          //                               fontSize: 16,
          //                               fontFamily: "Poppins",
          //                               fontWeight: FontWeight.w600,
          //                             ),
          //                           ),
          //                           const SizedBox(height: 8),
          //                           Row(
          //                             children: [
          //                               SvgPicture.asset(
          //                                 "assets/icons/ic_square_dollar.svg",
          //                                 colorFilter: ColorFilter.mode(
          //                                   AppColors.primaryButtonColor(
          //                                       context),
          //                                   BlendMode.srcIn,
          //                                 ),
          //                               ),
          //                               const SizedBox(width: 4),
          //                               Text(
          //                                 '\u0024 ${product.name}',
          //                                 style: const TextStyle(
          //                                   fontFamily: "SF-Pro-Display",
          //                                   fontWeight: FontWeight.w600,
          //                                   fontSize: 14,
          //                                 ),
          //                               ),
          //                             ],
          //                           ),
          //                           Row(
          //                             children: [
          //                               SvgPicture.asset(
          //                                 "assets/icons/ic_routing.svg",
          //                                 colorFilter: ColorFilter.mode(
          //                                   AppColors.primaryButtonColor(
          //                                       context),
          //                                   BlendMode.srcIn,
          //                                 ),
          //                               ),
          //                               const SizedBox(width: 4),
          //                               Text(
          //                                 product.name,
          //                                 style: const TextStyle(
          //                                   fontFamily: "SF-Pro-Display",
          //                                   fontWeight: FontWeight.w400,
          //                                   fontSize: 14,
          //                                 ),
          //                               ),
          //                             ],
          //                           ),
          //                           Row(
          //                             children: [
          //                               Icon(
          //                                 Icons.calendar_month,
          //                                 color: AppColors.primaryButtonColor(
          //                                     context),
          //                                 size: 16,
          //                               ),
          //                               const SizedBox(width: 4),
          //                               Text(
          //                                 product.id.toString(),
          //                                 style: const TextStyle(
          //                                   fontFamily: "SF-Pro-Display",
          //                                   fontWeight: FontWeight.w400,
          //                                   fontSize: 12,
          //                                 ),
          //                               ),
          //                             ],
          //                           ),
          //                           const SizedBox(height: 12),
          //                           Text(
          //                             "Подробнее",
          //                             style: const TextStyle(
          //                                 fontWeight: FontWeight.bold),
          //                             textAlign: TextAlign.center,
          //                           ),
          //                         ],
          //                       ),
          //                     ],
          //                   ),
          //                 );
          //               },
          //             );
          //           },
          //           loading: () =>
          //               const Center(child: CircularProgressIndicator()),
          //           error: (error, stack) =>
          //               Center(child: Text('Error: $error')),
          //         ),
          //   ),
          // ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }

  ///

  @override
  void dispose() {
    _customInfoWindowController.dispose();
    super.dispose();
  }

  Future<Marker> _markerBuilder(m.Cluster<Place> cluster) async {
    if (cluster.isMultiple) {
      return Marker(
        markerId: MarkerId(cluster.getId()),
        position: cluster.location,
        icon: await _getMarkerBitmap(cluster.isMultiple ? 60 : 30,
            text: cluster.isMultiple ? cluster.count.toString() : null),
        onTap: () {
          _customInfoWindowController
              .hideInfoWindow!(); // no info window for cluster
        },
      );
    } else {
      final place = cluster.items.first;
      return Marker(
          markerId: MarkerId(place.name),
          position: place.location,
          onTap: () {
            _customInfoWindowController.addInfoWindow!(
              _buildCustomWindow(place.name),
              place.location,
            );
          },
          icon: await _getMarkerBitmap(cluster.isMultiple ? 80 : 30,
              text: cluster.isMultiple ? cluster.count.toString() : null));
    }
  }

  Future<BitmapDescriptor> _getMarkerBitmap(int size, {String? text}) async {
    if (kIsWeb) size = (size / 2).floor();

    final ui.PictureRecorder pictureRecorder = ui.PictureRecorder();
    final Canvas canvas = Canvas(pictureRecorder);
    final Paint paint1 = Paint()..color = AppColors.primaryDark;
    final Paint paint2 = Paint()..color = Colors.white;

    canvas.drawCircle(Offset(size / 2, size / 2), size / 2.0, paint1);
    canvas.drawCircle(Offset(size / 2, size / 2), size / 2.2, paint2);
    canvas.drawCircle(Offset(size / 2, size / 2), size / 2.8, paint1);

    if (text != null) {
      TextPainter painter = TextPainter(textDirection: ui.TextDirection.ltr);
      painter.text = TextSpan(
        text: text,
        style: TextStyle(fontSize: size / 3, fontWeight: FontWeight.bold),
      );
      painter.layout();
      painter.paint(
        canvas,
        Offset(size / 2 - painter.width / 2, size / 2 - painter.height / 2),
      );
    }
    final img = await pictureRecorder.endRecording().toImage(size, size);
    final data =
        await img.toByteData(format: ui.ImageByteFormat.png) as ByteData;

    return BitmapDescriptor.bytes(data.buffer.asUint8List());
  }
}
