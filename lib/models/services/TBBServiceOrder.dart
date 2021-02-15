

import 'package:json_annotation/json_annotation.dart';

import 'TBBServiceOrderReview.dart';

/// This allows the `User` class to access private members in
/// the generated file. The value for this is *.g.dart, where
/// the star denotes the source file name.
part 'TBBServiceOrder.g.dart';

/// An annotation for the code generator to know that this class needs the
/// JSON serialization logic to be generated.
@JsonSerializable(
    fieldRename: FieldRename.snake, nullable: true, explicitToJson: true)
class TBBServiceOrder {
  String id;
  String serviceId;
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
  TBBServiceOrderReview orderReview;

  TBBServiceOrder({
    this.id,
    this.serviceId,
    this.customerId,
    this.requestedTime,
    this.acceptedTime,
    this.cancelledTime,
    this.reachedTime,
    this.expired,
    this.status,
    this.createdAt,
    this.updatedAt,
    this.deletedAt,
  });

  /// A necessary factory constructor for creating a new User instance
  /// from a map. Pass the map to the generated `_$UserFromJson()` constructor.
  /// The constructor is named after the source class, in this case, User.
  factory TBBServiceOrder.fromJson(Map<String, dynamic> json) {
    json['id'] = json['id'].toString();
    json['service_id'] = json['service_id'].toString();
    json['customer_id'] = json['customer_id'].toString();
    json['requested_time'] = json['requested_time'].toString();
    json['accepted_time'] = json['accepted_time'].toString();
    json['cancelled_time'] = json['cancelled_time'].toString();
    json['reached_time'] = json['reached_time'].toString();
    return _$TBBServiceOrderFromJson(json);
  }

  static List<TBBServiceOrder> listFromJson(List<dynamic> listJson) {
    Iterable l = listJson;

    List<TBBServiceOrder> items = List<TBBServiceOrder>.from(
        l.map((model) => TBBServiceOrder.fromJson(model)));

    return items;
  }

  /// `toJson` is the convention for a class to declare support for serialization
  /// to JSON. The implementation simply calls the private, generated
  /// helper method `_$UserToJson`.
  Map<String, dynamic> toJson() => _$TBBServiceOrderToJson(this);

  @override
  toString() => this.toJson().toString();
}
