
import 'package:tbbsdk/models/TBBStore.dart';

import 'package:json_annotation/json_annotation.dart';
import 'package:tbbsdk/models/hyper/TBBHyperOrderReview.dart';
import 'package:tbbsdk/models/hyper/TBBHyperTerm.dart';
import 'package:tbbsdk/utilities/common_functions.dart';

/// This allows the `User` class to access private members in
/// the generated file. The value for this is *.g.dart, where
/// the star denotes the source file name.
part 'TBBHyperDetail.g.dart';

/// An annotation for the code generator to know that this class needs the
/// JSON serialization logic to be generated.
@JsonSerializable(
    fieldRename: FieldRename.snake, nullable: true, explicitToJson: true)
class TBBHyperDetail {
  String id;
  String storeId;
  String name;
  String phone;
  String shopPic;
  String description;
  String gender;
  bool enabled;
  TBBStore store;
  String createdAt;
  String updatedAt;
  String deletedAt;
  @JsonKey(name: "hy_term")
  TBBHyperTerm hyperTerm;
  @JsonKey(fromJson: ModelHelpers.boolParse)
  bool isFavourite;
  List<TBBHyperOrderReview> reviews;

  TBBHyperDetail({
    this.storeId,
    this.id,
    this.phone,
    this.name,
    this.description,
    this.enabled,
    this.store,
    this.hyperTerm,
    this.isFavourite,
    this.gender,
    this.reviews,
    this.createdAt,
    this.updatedAt,
    this.deletedAt,
  });

  /// A necessary factory constructor for creating a new User instance
  /// from a map. Pass the map to the generated `_$UserFromJson()` constructor.
  /// The constructor is named after the source class, in this case, User.
  factory TBBHyperDetail.fromJson(Map<String, dynamic> json) {
    json['id'] = json['id'].toString();
    json['store_id'] = json['store_id'].toString();
    return _$TBBHyperDetailFromJson(json);
  }

  static List<TBBHyperDetail> listFromJson(List<dynamic> listJson) {
    Iterable l = listJson;
    List<TBBHyperDetail> items = List<TBBHyperDetail>.from(
        l.map((model) => TBBHyperDetail.fromJson(model)));
    return items;
  }

  /// `toJson` is the convention for a class to declare support for serialization
  /// to JSON. The implementation simply calls the private, generated
  /// helper method `_$UserToJson`.
  Map<String, dynamic> toJson() => _$TBBHyperDetailToJson(this);

  @override
  toString() => this.toJson().toString();
}
