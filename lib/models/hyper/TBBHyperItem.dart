

import 'package:json_annotation/json_annotation.dart';
import 'package:tbbsdk/models/hyper/TBBHyperDetail.dart';
import 'package:tbbsdk/models/hyper/TBBHyperLocation.dart';


/// This allows the `User` class to access private members in
/// the generated file. The value for this is *.g.dart, where
/// the star denotes the source file name.
part 'TBBHyperItem.g.dart';

/// An annotation for the code generator to know that this class needs the
/// JSON serialization logic to be generated.
@JsonSerializable(
    fieldRename: FieldRename.snake, nullable: true, explicitToJson: true)
class TBBHyperItem {
  @JsonKey(name: "hyper_id")
  String hyperId;
  String latitude;
  String longitude;
  String availableAroundWithKm;
  String responseMinute;
  String description;
  String reachTime;
  String distance;
  bool enabled;
  @JsonKey(name: "hy_shop", nullable: true)
  TBBHyperDetail detail;
  @JsonKey(name: "locations")
  List<TBBHyperLocation> serviceLocations;
  List<String> tags;
  String createdAt;
  String updatedAt;
  String deletedAt;

  TBBHyperItem({
    this.hyperId,
    this.latitude,
    this.longitude,
    this.enabled,
    this.responseMinute,
    this.description,
    this.availableAroundWithKm,
    this.reachTime,
    this.distance,
    this.detail,
    this.serviceLocations,
    this.tags,
    this.createdAt,
    this.updatedAt,
    this.deletedAt,
  });

  /// A necessary factory constructor for creating a new User instance
  /// from a map. Pass the map to the generated `_$UserFromJson()` constructor.
  /// The constructor is named after the source class, in this case, User.
  factory TBBHyperItem.fromJson(Map<String, dynamic> json) {
    json['id'] = json['id'].toString();
    json['hyper_id'] = json['hyper_id'].toString();
    json['available_around_with_km'] =
        json['available_around_with_km'].toString();
    json['shop_pic'] = json['shop_pic'].toString();
    json['reach_time'] = json['reach_time'].toString();
    json['distance'] = json['distance'].toString();
    json['gender'] = json['gender'].toString();
    json['response_minute'] = json['response_minute'].toString();
    return _$TBBHyperItemFromJson(json);
  }

  static List<TBBHyperItem> listFromJson(List<dynamic> listJson) {
    Iterable l = listJson;

    List<TBBHyperItem> items = List<TBBHyperItem>.from(
        l.map((model) => TBBHyperItem.fromJson(model)));

    return items;
  }

  /// `toJson` is the convention for a class to declare support for serialization
  /// to JSON. The implementation simply calls the private, generated
  /// helper method `_$UserToJson`.
  Map<String, dynamic> toJson() => _$TBBHyperItemToJson(this);

  @override
  toString() => this.toJson().toString();
}
