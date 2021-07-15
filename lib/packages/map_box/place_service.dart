import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:mapbox_search_flutter/mapbox_search_flutter.dart';

class PlaceService {
  String uri = "https://api.mapbox.com/geocoding/v5";
  String endpoint = "mapbox.places";
  String searchText;
  String searchSuffix = ".json";
  String accessToken =
      "pk.eyJ1IjoidGhlYmVsbGJlZXMiLCJhIjoiY2tsamRicWlvMmxsbjJ3czRsdGR6N3ZkNCJ9.IubMYDe16h7cm6olhXOtkw";
  String country = "in";
  String language = "en";
  String get worldview => country;
  List<String> types;

  bool autocomplete = true;

  String prepareURI() {
    String typesString = types.join(" ");
    return "$uri/$endpoint/$searchText$searchSuffix?access_token=$accessToken&autocomplete=$autocomplete&country=$country&language=$language&worldview=$worldview&types=$typesString";
  }

  factory PlaceService.searchRegion(
      {String searchText = "", String country, String language = "en"}) {
    return PlaceService(["region"],
        searchText: searchText, country: country, language: language);
  }
  factory PlaceService.searchCountry(
      {String searchText = "", String country, String language = "en"}) {
    return PlaceService(["country"],
        searchText: searchText, country: country, language: language);
  }
  factory PlaceService.searchCity(
      {String searchText = "", String country, String language = "en"}) {
    return PlaceService(["city"],
        searchText: searchText, country: country, language: language);
  }

  PlaceService(this.types,
      {this.searchText = "", this.country, this.language = "en"});

  Future<MapBoxPlace> find() async {
    try {
      String uri = prepareURI();
      http.Response response = await http.get(uri);
      return MapBoxPlace.fromJson(jsonDecode(response.body));
    } catch (err) {
      return err;
    }
  }
}
