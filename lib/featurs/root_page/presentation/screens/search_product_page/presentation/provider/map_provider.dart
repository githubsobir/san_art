// map_provider.dart
import 'dart:developer';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_maps_cluster_manager_2/google_maps_cluster_manager_2.dart'
    as c;
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:san_art/core/service/injection/injection_container.dart';
import 'package:san_art/featurs/root_page/presentation/screens/search_product_page/domain/entities/lat_lang/lat_lang_entities.dart';
import 'package:san_art/featurs/root_page/presentation/screens/search_product_page/domain/usecase/usecase_map.dart';
import 'package:san_art/featurs/root_page/presentation/screens/search_product_page/presentation/widgets/cluster/cluster_item.dart';

final markersProvider = StateProvider<Set<Marker>>((ref) => {});

final clusterManagerProvider = StateNotifierProvider.family<
    ClusterManagerController, c.ClusterManager<Place>?, LangLat1>(
  (ref, latLang) => ClusterManagerController(ref, latLang),
);

class ClusterManagerController extends StateNotifier<c.ClusterManager<Place>?> {
  final Ref ref;

  ClusterManagerController(this.ref, LangLat1 latLang) : super(null) {
    _init(latLang);
  }

  List<Place> l = [];

  Future<List<Place>> item(LangLat1 latLang) async {
    final items = await ref.read(mapUsecaseProvider).getData(latLang);
    items.when(
      (success) {
        for (var element in success) {
          l.add(Place(
              id: element.id,
              name: element.name,
              latLng: LatLng(double.parse(element.langLat.lat),
                  double.parse(element.langLat.lang)),
              imageUrl: element.images,
              price: 1));
        }
      },
      (error) {
        l = [];
      },
    );
    return l;
  }

  void _init(LangLat1 latLang) async {
    final clusterManager = c.ClusterManager<Place>(
      await item(latLang),
      updateMarkers,
      markerBuilder: markerBuilder,
      levels: [1, 5, 10, 15, 20],
    );
    state = clusterManager;
  }

  void updateMarkers(Set<Marker> markers) {
    // Bu joyda xarita markerlarini yangilash uchun ishlatiladi
    // Riverpod bilan markerlar holatini ham alohida boshqarish mumkin
    log('Updated ${markers.length} markers');
  }

  Future<Marker> markerBuilder(c.Cluster<Place> cluster) async {
    return Marker(
      markerId: MarkerId(cluster.getId()),
      position: cluster.location,
      infoWindow: InfoWindow(
        title: cluster.isMultiple
            ? '${cluster.count} items'
            : cluster.items.first.id,
      ),
    );
  }

  void onMapMove(CameraPosition position, double zoom) {
    state?.onCameraMove(position);
  }
}

// mapUsecaseProvider (o'zgarmagan holda)
final mapUsecaseProvider = Provider<MapUsecase>((ref) {
  return getIt<MapUsecase>();
});
