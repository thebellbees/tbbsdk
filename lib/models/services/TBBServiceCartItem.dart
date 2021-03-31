import 'package:tbbsdk/models/services/TBBServiceDetail.dart';
import 'package:tbbsdk/models/services/TBBServiceOrder.dart';

import 'package:json_annotation/json_annotation.dart';

/// This allows the `User` class to access private members in
/// the generated file. The value for this is *.g.dart, where
/// the star denotes the source file name.
part 'TBBServiceCartItem.g.dart';

/// An annotation for the code generator to know that this class needs the
/// JSON serialization logic to be generated.
@JsonSerializable(
    fieldRename: FieldRename.snake, nullable: true, explicitToJson: true)
class TBBServiceCartItem {
  String id;
  String serviceId;
  String customerId;
  String action;
  String status;
  String createdAt;
  String updatedAt;
  String deletedAt;
  @JsonKey(name: "sr_service")
  TBBServiceDetail serviceDetail;
  @JsonKey(name: "sr_order")
  TBBServiceOrder serviceOrder;

  TBBServiceCartItem({
    this.id,
    this.serviceId,
    this.customerId,
    this.action,
    this.status,
    this.serviceDetail,
    this.serviceOrder,
    this.createdAt,
    this.updatedAt,
    this.deletedAt,
  });

  /// A necessary factory constructor for creating a new User instance
  /// from a map. Pass the map to the generated `_$UserFromJson()` constructor.
  /// The constructor is named after the source class, in this case, User.
  factory TBBServiceCartItem.fromJson(Map<String, dynamic> json) {
    json['customer_id'] = json['customer_id'].toString();
    json['id'] = json['id'].toString();
    json['service_id'] = json['service_id'].toString();
    return _$TBBServiceCartItemFromJson(json);
  }

  static List<TBBServiceCartItem> listFromJson(List<dynamic> listJson) {
    Iterable l = listJson;
    List<TBBServiceCartItem> items = List<TBBServiceCartItem>.from(l.map(
            (model) =>
                TBBServiceCartItem.fromJson(model as Map<String, dynamic>)))
        .toList();
    return items;
  }

  /// `toJson` is the convention for a class to declare support for serialization
  /// to JSON. The implementation simply calls the private, generated
  /// helper method `_$UserToJson`.
  Map<String, dynamic> toJson() => _$TBBServiceCartItemToJson(this);

  @override
  toString() => this.toJson().toString();
}
