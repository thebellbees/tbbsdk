import 'dart:convert';

import 'package:tbbsdk/models/TBBUser.dart';

import 'package:json_annotation/json_annotation.dart';

/// This allows the `User` class to access private members in
/// the generated file. The value for this is *.g.dart, where
/// the star denotes the source file name.
part 'TBBHyperFavourite.g.dart';

/// An annotation for the code generator to know that this class needs the
/// JSON serialization logic to be generated.
@JsonSerializable(
    fieldRename: FieldRename.snake, nullable: true, explicitToJson: true)
class TBBHyperFavourite {
  String id;
  String itemId;
  String storeType;
  String customerId;
  TBBUser customer;
  @JsonKey(name: "hyper_favourite_item")
  Map<String, dynamic> item;
  String createdAt;
  String updatedAt;
  String deletedAt;

  TBBHyperFavourite({
    this.id,
    this.itemId,
    this.storeType,
    this.customerId,
    this.customer,
    this.item,
    this.createdAt,
    this.updatedAt,
    this.deletedAt,
  });

  /// A necessary factory constructor for creating a new User instance
  /// from a map. Pass the map to the generated `_$UserFromJson()` constructor.
  /// The constructor is named after the source class, in this case, User.
  factory TBBHyperFavourite.fromJson(Map<String, dynamic> json) {
    json['id'] = json['id'].toString();
    json['item_id'] = json['item_id'].toString();
    json['store_type'] = json['store_type'].toString();
    json['customer_id'] = json['customer_id'].toString();
    return _$TBBHyperFavouriteFromJson(json);
  }

  static List<TBBHyperFavourite> listFromJson(List<dynamic> listJson) {
    Iterable l = listJson;
    List<TBBHyperFavourite> items = List<TBBHyperFavourite>.from(
        l.map((model) => TBBHyperFavourite.fromJson(model)));
    return items;
  }

  /// `toJson` is the convention for a class to declare support for serialization
  /// to JSON. The implementation simply calls the private, generated
  /// helper method `_$UserToJson`.
  Map<String, dynamic> toJson() => _$TBBHyperFavouriteToJson(this);

  @override
  toString() => this.toJson().toString();
}
