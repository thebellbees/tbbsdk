import 'dart:convert';

import 'package:tbbsdk/models/services/TBBServiceDetail.dart';
import 'package:tbbsdk/models/store.dart';

import 'package:json_annotation/json_annotation.dart';

/// This allows the `User` class to access private members in
/// the generated file. The value for this is *.g.dart, where
/// the star denotes the source file name.
part 'TBBServiceItem.g.dart';

/// An annotation for the code generator to know that this class needs the
/// JSON serialization logic to be generated.
@JsonSerializable(
    fieldRename: FieldRename.snake, nullable: true, explicitToJson: true)
class TBBServiceItem {
  String serviceId;
  String latitude;
  String longitude;
  String availableAroundWithKm;
  String reachTime;
  String distance;
  @JsonKey(name: "sr_service", nullable: true)
  TBBServiceDetail detail;
  String createdAt;
  String updatedAt;
  String deletedAt;

  TBBServiceItem({
    this.serviceId,
    this.latitude,
    this.longitude,
    this.availableAroundWithKm,
    this.reachTime,
    this.distance,
    this.detail,
    this.createdAt,
    this.updatedAt,
    this.deletedAt,
  });

  /// A necessary factory constructor for creating a new User instance
  /// from a map. Pass the map to the generated `_$UserFromJson()` constructor.
  /// The constructor is named after the source class, in this case, User.
  factory TBBServiceItem.fromJson(Map<String, dynamic> json) {
    json['service_id'] = json['service_id'].toString();
    json['available_around_with_km'] =
        json['available_around_with_km'].toString();
    json['reach_time'] = json['reach_time'].toString();
    json['distance'] = json['distance'].toString();
    return _$TBBServiceItemFromJson(json);
  }

  static List<TBBServiceItem> listFromJson(List<dynamic> listJson) {
    Iterable l = listJson;
    List<TBBServiceItem> items = List<TBBServiceItem>.from(
        l.map((model) => TBBServiceItem.fromJson(model)));
    return items;
  }

  /// `toJson` is the convention for a class to declare support for serialization
  /// to JSON. The implementation simply calls the private, generated
  /// helper method `_$UserToJson`.
  Map<String, dynamic> toJson() => _$TBBServiceItemToJson(this);

  @override
  toString() => this.toJson().toString();
}
