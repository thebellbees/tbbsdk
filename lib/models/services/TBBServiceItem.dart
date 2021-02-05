import 'package:tbbsdk/models/store.dart';

import 'package:json_annotation/json_annotation.dart';

/// This allows the `User` class to access private members in
/// the generated file. The value for this is *.g.dart, where
/// the star denotes the source file name.
part 'TBBServiceItem.g.dart';

/// An annotation for the code generator to know that this class needs the
/// JSON serialization logic to be generated.
@JsonSerializable(fieldRename: FieldRename.snake, nullable: true, explicitToJson: true)
class TBBServiceItem {
  String id;
  String storeId;
  String name;
  String slug;
  String responseMinute;
  TBBStore store;
  String createdAt;
  String updatedAt;
  String deletedAt;

  TBBServiceItem({
    this.id,
    this.storeId,
    this.name,
    this.slug,
    this.responseMinute,
    this.store,
    this.createdAt,
    this.updatedAt,
    this.deletedAt,
  });

  /// A necessary factory constructor for creating a new User instance
  /// from a map. Pass the map to the generated `_$UserFromJson()` constructor.
  /// The constructor is named after the source class, in this case, User.
  factory TBBServiceItem.fromJson(Map<String, dynamic> json) {
    json['id'] = json['id'].toString();
    json['store_id'] = json['store_id'].toString();
    return _$TBBServiceItemFromJson(json);
  }

  /// `toJson` is the convention for a class to declare support for serialization
  /// to JSON. The implementation simply calls the private, generated
  /// helper method `_$UserToJson`.
  Map<String, dynamic> toJson() => _$TBBServiceItemToJson(this);

  @override
  toString() => this.toJson().toString();
}
