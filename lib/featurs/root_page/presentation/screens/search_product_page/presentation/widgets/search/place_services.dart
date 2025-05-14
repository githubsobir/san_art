import 'dart:convert';
import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:san_art/core/data/hive_san_art.dart';

class Suggestion {
  final String placeId;
  final String description;

  Suggestion(this.placeId, this.description);

  @override
  String toString() {
    return 'Suggestion(description: $description, placeId: $placeId)';
  }
}

class PlaceApiProvider {
  final _hive = HiveBoxes();

  final _dio = Dio();
  String sessionToken = "";

  PlaceApiProvider(this.sessionToken);
  Future<List<Suggestion>> fetchSuggestions(String input, String lang) async {
    final request =
        'https://maps.googleapis.com/maps/api/place/autocomplete/json?input=$input&language=${_hive.langUserLang}&key=AIzaSyBgIzaWqzJ65UIKLL7g004bdGDx9GjYfzE';
    log(request);
    final response = await _dio.get(request);
    log(jsonEncode(response.data).toString());
    if (response.statusCode == 200) {
      Map<String, dynamic> result = response.data;
      if (result['status'] == 'OK') {
        var list = result['predictions']
            .map<Suggestion>((p) => Suggestion(p['place_id'], p['description']))
            .toList();
        return list;
      }
      if (result['status'] == 'ZERO_RESULTS') {
        return [];
      }
      throw Exception(result['error_message']);
    } else {
      throw Exception('Failed to fetch suggestion');
    }
  }

  Future<LatLng> getLocationFromPlaceId(String placeId) async {
    final url =
        'https://maps.googleapis.com/maps/api/place/details/json?place_id=$placeId&key=AIzaSyBgIzaWqzJ65UIKLL7g004bdGDx9GjYfzE';

    final response = await _dio.get(url);

    if (response.statusCode == 200) {
      final data = response.data;
      final result = data['result'];
      final geometry = result['geometry'];
      final location = geometry['location'];
      final lat = location['lat'];
      final lng = location['lng'];

      log(lat);
      log(lng);
      return LatLng(lat, lng);
    } else {
      throw Exception('Failed to load location');
    }
  }
}
