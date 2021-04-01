import 'package:tbbsdk/models/services/TBBFavouriteItem.dart';
import 'package:tbbsdk/models/services/TBBServiceOrderReview.dart';
import 'package:tbbsdk/models/services/TBBServiceTerm.dart';
import 'package:tbbsdk/models/TBBStore.dart';

import 'package:json_annotation/json_annotation.dart';

/// This allows the `User` class to access private members in
/// the generated file. The value for this is *.g.dart, where
/// the star denotes the source file name.
part 'TBBServiceDetail.g.dart';

/// An annotation for the code generator to know that this class needs the
/// JSON serialization logic to be generated.
@JsonSerializable(
    fieldRename: FieldRename.snake, nullable: true, explicitToJson: true)
class TBBServiceDetail {
  String id;
  String storeId;
  String name;
  String phone;
  String serviceManPic;
  String workerOne;
  String workerTwo;
  String description;
  String gender;
  String responseMinute;
  bool enabled;
  TBBStore store;
  String createdAt;
  String updatedAt;
  String deletedAt;
  @JsonKey(name: "sr_term")
  TBBServiceTerm serviceTerm;
  bool isFavourite;
  List<TBBServiceOrderReview> reviews;

  TBBServiceDetail({
    this.storeId,
    this.id,
    this.phone,
    this.name,
    this.description,
    this.responseMinute,
    this.enabled,
    this.store,
    this.serviceTerm,
    this.serviceManPic,
    this.workerOne,
    this.isFavourite,
    this.workerTwo,
    this.gender,
    this.reviews,
    this.createdAt,
    this.updatedAt,
    this.deletedAt,
  });

  /// A necessary factory constructor for creating a new User instance
  /// from a map. Pass the map to the generated `_$UserFromJson()` constructor.
  /// The constructor is named after the source class, in this case, User.
  factory TBBServiceDetail.fromJson(Map<String, dynamic> json) {
    json['id'] = json['id'].toString();
    json['store_id'] = json['store_id'].toString();
    json['response_minute'] = json['response_minute'].toString();
    return _$TBBServiceDetailFromJson(json);
  }

  static List<TBBServiceDetail> listFromJson(List<dynamic> listJson) {
    Iterable l = listJson;
    List<TBBServiceDetail> items = List<TBBServiceDetail>.from(
        l.map((model) => TBBServiceDetail.fromJson(model)));
    return items;
  }

  /// `toJson` is the convention for a class to declare support for serialization
  /// to JSON. The implementation simply calls the private, generated
  /// helper method `_$UserToJson`.
  Map<String, dynamic> toJson() => _$TBBServiceDetailToJson(this);

  @override
  toString() => this.toJson().toString();
}
