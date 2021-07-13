import 'package:json_annotation/json_annotation.dart';
import 'package:tbbsdk/models/hyper/TBBHyperDetail.dart';
import 'package:tbbsdk/models/hyper/TBBHyperOrder.dart';

/// This allows the `User` class to access private members in
/// the generated file. The value for this is *.g.dart, where
/// the star denotes the source file name.
part 'TBBHyperCartItem.g.dart';

/// An annotation for the code generator to know that this class needs the
/// JSON serialization logic to be generated.
@JsonSerializable(
    fieldRename: FieldRename.snake, nullable: true, explicitToJson: true)
class TBBHyperCartItem {
  String id;
  String hyperId;
  String customerId;
  String action;
  String status;
  String createdAt;
  String updatedAt;
  String deletedAt;
  @JsonKey(name: "hy_service")
  TBBHyperDetail hyperDetail;
  @JsonKey(name: "hy_order")
  TBBHyperOrder hyperOrder;

  TBBHyperCartItem({
    this.id,
    this.hyperId,
    this.customerId,
    this.action,
    this.status,
    this.hyperDetail,
    this.hyperOrder,
    this.createdAt,
    this.updatedAt,
    this.deletedAt,
  });

  /// A necessary factory constructor for creating a new User instance
  /// from a map. Pass the map to the generated `_$UserFromJson()` constructor.
  /// The constructor is named after the source class, in this case, User.
  factory TBBHyperCartItem.fromJson(Map<String, dynamic> json) {
    json['customer_id'] = json['customer_id'].toString();
    json['id'] = json['id'].toString();
    json['service_id'] = json['service_id'].toString();
    return _$TBBHyperCartItemFromJson(json);
  }

  static List<TBBHyperCartItem> listFromJson(List<dynamic> listJson) {
    Iterable l = listJson;
    List<TBBHyperCartItem> items = List<TBBHyperCartItem>.from(l.map((model) =>
        TBBHyperCartItem.fromJson(model as Map<String, dynamic>))).toList();
    return items;
  }

  /// `toJson` is the convention for a class to declare support for serialization
  /// to JSON. The implementation simply calls the private, generated
  /// helper method `_$UserToJson`.
  Map<String, dynamic> toJson() => _$TBBHyperCartItemToJson(this);

  @override
  toString() => this.toJson().toString();
}
