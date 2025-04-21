import 'package:google_maps_cluster_manager_2/google_maps_cluster_manager_2.dart' as m;
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:san_art/featurs/root_page/presentation/screens/search_product_page/domain/entities/images/image_entities.dart';

class Place with m.ClusterItem {
  final String id;
  final String name;
  final LatLng latLng;
  final List<Images> imageUrl;
  final double price;

  Place({
    required this.id,
    required this.name,
    required this.latLng,
    required this.imageUrl,
    required this.price,
  });

  @override
  LatLng get location => latLng;
}