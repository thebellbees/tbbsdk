import 'package:json_annotation/json_annotation.dart';
import 'package:tbbsdk/models/hyper/TBBHyperDetail.dart';
import 'package:tbbsdk/models/hyper/TBBHyperOrderReview.dart';

/// This allows the `User` class to access private members in
/// the generated file. The value for this is *.g.dart, where
/// the star denotes the source file name.
part 'TBBHyperOrder.g.dart';

/// An annotation for the code generator to know that this class needs the
/// JSON serialization logic to be generated.
@JsonSerializable(
    fieldRename: FieldRename.snake, nullable: true, explicitToJson: true)
class TBBHyperOrder {
  String id;
  String hyperId;
  String customerId;
  String requestedTime;
  String acceptedTime;
  String cancelledTime;
  String reachedTime;
  bool expired;
  String status;
  String createdAt;
  String updatedAt;
  String deletedAt;
  @JsonKey(name: "hy_shop")
  TBBHyperDetail hyperDetail;
  TBBHyperOrderReview orderReview;

  TBBHyperOrder({
    this.id,
    this.hyperId,
    this.customerId,
    this.requestedTime,
    this.acceptedTime,
    this.cancelledTime,
    this.reachedTime,
    this.expired,
    this.hyperDetail,
    this.status,
    this.createdAt,
    this.updatedAt,
    this.deletedAt,
  });

  /// A necessary factory constructor for creating a new User instance
  /// from a map. Pass the map to the generated `_$UserFromJson()` constructor.
  /// The constructor is named after the source class, in this case, User.
  factory TBBHyperOrder.fromJson(Map<String, dynamic> json) {
    json['id'] = json['id'].toString();
    json['hyper_id'] = json['hyper_id'].toString();
    json['customer_id'] = json['customer_id'].toString();
    json['requested_time'] = json['requested_time'].toString();
    json['accepted_time'] = json['accepted_time'].toString();
    json['cancelled_time'] = json['cancelled_time'].toString();
    json['reached_time'] = json['reached_time'].toString();
    return _$TBBHyperOrderFromJson(json);
  }

  static List<TBBHyperOrder> listFromJson(List<dynamic> listJson) {
    Iterable l = listJson;

    List<TBBHyperOrder> items = List<TBBHyperOrder>.from(
        l.map((model) => TBBHyperOrder.fromJson(model)));

    return items;
  }

  /// `toJson` is the convention for a class to declare support for serialization
  /// to JSON. The implementation simply calls the private, generated
  /// helper method `_$UserToJson`.
  Map<String, dynamic> toJson() => _$TBBHyperOrderToJson(this);

  @override
  toString() => this.toJson().toString();
}
