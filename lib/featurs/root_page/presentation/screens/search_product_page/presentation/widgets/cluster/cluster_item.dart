import 'package:google_maps_cluster_manager_2/google_maps_cluster_manager_2.dart' as m;
import 'package:google_maps_flutter/google_maps_flutter.dart';

class Place with m.ClusterItem {
  final String name;
  final LatLng latLng;

  Place({required this.name, required this.latLng});

  @override
  LatLng get location => latLng;
}