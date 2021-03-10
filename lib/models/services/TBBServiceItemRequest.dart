import 'package:tbbsdk/models/services/TBBServiceOrderReview.dart';
import 'package:tbbsdk/models/services/TBBServiceTerm.dart';
import 'package:tbbsdk/models/TBBStore.dart';

import 'package:json_annotation/json_annotation.dart';

/// This allows the `User` class to access private members in
/// the generated file. The value for this is *.g.dart, where
/// the star denotes the source file name.
part 'TBBServiceItemRequest.g.dart';

/// An annotation for the code generator to know that this class needs the
/// JSON serialization logic to be generated.
@JsonSerializable(
    fieldRename: FieldRename.snake, nullable: true, explicitToJson: true)
class TBBServiceItemRequest {
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
  List<TBBServiceOrderReview> reviews;

  TBBServiceItemRequest({
    this.storeId,
    this.phone,
    this.name,
    this.description,
    this.responseMinute,
    this.enabled,
    this.store,
    this.serviceTerm,
    this.serviceManPic,
    this.workerOne,
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
  factory TBBServiceItemRequest.fromJson(Map<String, dynamic> json) {
    json['id'] = json['id'].toString();
    json['store_id'] = json['store_id'].toString();
    json['response_minute'] = json['response_minute'].toString();
    return _$TBBServiceItemRequestFromJson(json);
  }

  static List<TBBServiceItemRequest> listFromJson(List<dynamic> listJson) {
    Iterable l = listJson;
    List<TBBServiceItemRequest> items = List<TBBServiceItemRequest>.from(
        l.map((model) => TBBServiceItemRequest.fromJson(model)));
    return items;
  }

  /// `toJson` is the convention for a class to declare support for serialization
  /// to JSON. The implementation simply calls the private, generated
  /// helper method `_$UserToJson`.
  Map<String, dynamic> toJson() => _$TBBServiceItemRequestToJson(this);

  @override
  toString() => this.toJson().toString();
}
