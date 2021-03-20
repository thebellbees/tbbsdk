import 'package:tbbsdk/models/services/TBBServiceDetail.dart';

import 'package:json_annotation/json_annotation.dart';

/// This allows the `User` class to access private members in
/// the generated file. The value for this is *.g.dart, where
/// the star denotes the source file name.
part 'TBBServiceOrderReview.g.dart';

/// An annotation for the code generator to know that this class needs the
/// JSON serialization logic to be generated.
@JsonSerializable(
    fieldRename: FieldRename.snake, nullable: true, explicitToJson: true)
class TBBServiceOrderReview {
  String id;
  String orderId;
  String rate;
  String review;
  String createdAt;
  String updatedAt;
  String deletedAt;

  TBBServiceOrderReview({
    this.id,
    this.orderId,
    this.rate,
    this.review,
    this.createdAt,
    this.updatedAt,
    this.deletedAt,
  });

  /// A necessary factory constructor for creating a new User instance
  /// from a map. Pass the map to the generated `_$UserFromJson()` constructor.
  /// The constructor is named after the source class, in this case, User.
  factory TBBServiceOrderReview.fromJson(Map<String, dynamic> json) {
    json['id'] = json['id'].toString();
    json['orderId'] = json['orderId'].toString();
    json['rate'] = json['rate'].toString();
    return _$TBBServiceOrderReviewFromJson(json);
  }

  static List<TBBServiceOrderReview> listFromJson(List<Map<String,dynamic>>  listJson) {
    Iterable l = listJson;

    List<TBBServiceOrderReview> items = List<TBBServiceOrderReview>.from(
        l.map((model) => TBBServiceOrderReview.fromJson(model)));

    return items;
  }

  /// `toJson` is the convention for a class to declare support for serialization
  /// to JSON. The implementation simply calls the private, generated
  /// helper method `_$UserToJson`.
  Map<String, dynamic> toJson() => _$TBBServiceOrderReviewToJson(this);

  @override
  toString() => this.toJson().toString();
}
