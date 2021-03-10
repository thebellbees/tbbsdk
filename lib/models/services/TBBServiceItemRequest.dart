import 'package:tbbsdk/models/TBBStore.dart';

import 'package:json_annotation/json_annotation.dart';
import 'package:tbbsdk/models/TBBUser.dart';
import 'package:tbbsdk/models/services/TBBServiceItem.dart';

/// This allows the `User` class to access private members in
/// the generated file. The value for this is *.g.dart, where
/// the star denotes the source file name.
part 'TBBServiceItemRequest.g.dart';

/// An annotation for the code generator to know that this class needs the
/// JSON serialization logic to be generated.
@JsonSerializable(
    fieldRename: FieldRename.snake, nullable: true, explicitToJson: true)
class TBBServiceItemRequest {
  String id;
  String serviceId;
  String customerId;
  String action;
  TBBUser user;
  String totalRequest;
  @JsonKey(name: "sr_item")
  TBBServiceItem serviceItem;

  TBBServiceItemRequest({
    this.id,
    this.serviceId,
    this.serviceItem,
    this.customerId,
    this.totalRequest,
    this.user,
    this.action,

  });

  /// A necessary factory constructor for creating a new User instance
  /// from a map. Pass the map to the generated `_$UserFromJson()` constructor.
  /// The constructor is named after the source class, in this case, User.
  factory TBBServiceItemRequest.fromJson(Map<String, dynamic> json) {
    json['id'] = json['id'].toString();
    json['service_id'] = json['service_id'].toString();
    json['customer_id'] = json['customer_id'].toString();
    json['total_request'] = json['total_request'].toString();
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