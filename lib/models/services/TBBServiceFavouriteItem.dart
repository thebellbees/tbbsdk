import 'package:json_annotation/json_annotation.dart';
import 'package:tbbsdk/models/TBBUser.dart';
import 'package:tbbsdk/models/services/TBBServiceDetail.dart';

/// This allows the `User` class to access private members in
/// the generated file. The value for this is *.g.dart, where
/// the star denotes the source file name.
part 'TBBServiceFavouriteItem.g.dart';

/// An annotation for the code generator to know that this class needs the
/// JSON serialization logic to be generated.
@JsonSerializable(
    fieldRename: FieldRename.snake, nullable: true, explicitToJson: true)
class TBBServiceFavouriteItem {
  String id;
  String itemId;
  String storeType;
  String customerId;
  TBBUser customer;
  @JsonKey(name: "sr_service")
  TBBServiceDetail serviceDetail;
  String createdAt;
  String updatedAt;
  String deletedAt;

  TBBServiceFavouriteItem({
    this.id,
    this.itemId,
    this.storeType,
    this.customerId,
    this.customer,
    this.serviceDetail,
    this.createdAt,
    this.updatedAt,
    this.deletedAt,
  });

  /// A necessary factory constructor for creating a new User instance
  /// from a map. Pass the map to the generated `_$UserFromJson()` constructor.
  /// The constructor is named after the source class, in this case, User.
  factory TBBServiceFavouriteItem.fromJson(Map<String, dynamic> json) {
    json['id'] = json['id'].toString();
    json['item_id'] = json['item_id'].toString();
    json['store_type'] = json['store_type'].toString();
    json['customer_id'] = json['customer_id'].toString();
    return _$TBBServiceFavouriteItemFromJson(json);
  }

  static List<TBBServiceFavouriteItem> listFromJson(List<dynamic> listJson) {
    Iterable l = listJson;
    List<TBBServiceFavouriteItem> items = List<TBBServiceFavouriteItem>.from(
        l.map((model) => TBBServiceFavouriteItem.fromJson(model)));
    return items;
  }

  /// `toJson` is the convention for a class to declare support for serialization
  /// to JSON. The implementation simply calls the private, generated
  /// helper method `_$UserToJson`.
  Map<String, dynamic> toJson() => _$TBBServiceFavouriteItemToJson(this);

  @override
  toString() => this.toJson().toString();
}
