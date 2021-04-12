import 'package:json_annotation/json_annotation.dart';
import 'package:tbbsdk/models/TBBUser.dart';
import 'package:tbbsdk/models/hyper/TBBHyperDetail.dart';


/// This allows the `User` class to access private members in
/// the generated file. The value for this is *.g.dart, where
/// the star denotes the source file name.
part 'TBBHyperItemRequest.g.dart';

/// An annotation for the code generator to know that this class needs the
/// JSON serialization logic to be generated.
@JsonSerializable(
    fieldRename: FieldRename.snake, nullable: true, explicitToJson: true)
class TBBHyperItemRequest {
  String id;
  String hyperId;
  String customerId;
  String action;
  String status;
  @JsonKey(name: "customer")
  TBBUser user;
  String createdAt;
  String updatedAt;
  String deletedAt;
  String totalRequestCount;
  @JsonKey(name: "hy_shop")
  TBBHyperDetail hyperDetail;

  TBBHyperItemRequest({
    this.id,
    this.hyperId,
    this.hyperDetail,
    this.customerId,
    this.totalRequestCount,
    this.user,
    this.action,
    this.status,
    this.createdAt,
    this.updatedAt,
    this.deletedAt,
  });

  /// A necessary factory constructor for creating a new User instance
  /// from a map. Pass the map to the generated `_$UserFromJson()` constructor.
  /// The constructor is named after the source class, in this case, User.
  factory TBBHyperItemRequest.fromJson(Map<String, dynamic> json) {
    json['id'] = json['id'].toString();
    json['hyper_id'] = json['hyper_id'].toString();
    json['customer_id'] = json['customer_id'].toString();
    json['created_at'] = json['created_at'].toString();
    json['updated_at'] = json['updated_at'].toString();
    json['deleted_at'] = json['deleted_at'].toString();
    json['total_request_count'] = json['total_request_count'].toString();
    return _$TBBHyperItemRequestFromJson(json);
  }

  static List<TBBHyperItemRequest> listFromJson(List<dynamic> listJson) {
    Iterable l = listJson;
    List<TBBHyperItemRequest> items = List<TBBHyperItemRequest>.from(
        l.map((model) => TBBHyperItemRequest.fromJson(model)));
    return items;
  }

  /// `toJson` is the convention for a class to declare support for serialization
  /// to JSON. The implementation simply calls the private, generated
  /// helper method `_$UserToJson`.
  Map<String, dynamic> toJson() => _$TBBHyperItemRequestToJson(this);

  @override
  toString() => this.toJson().toString();
}
