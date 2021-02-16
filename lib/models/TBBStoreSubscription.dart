import 'package:json_annotation/json_annotation.dart';

/// This allows the `User` class to access private members in
/// the generated file. The value for this is *.g.dart, where
/// the star denotes the source file name.
part 'TBBStoreSubscription.g.dart';

/// An annotation for the code generator to know that this class needs the
/// JSON serialization logic to be generated.
@JsonSerializable(
    fieldRename: FieldRename.snake, nullable: true, explicitToJson: true)
class TBBStoreSubscription {
  String subscriptionId;
  String variantId;
  String storeId;
  String dateOfPurchase;
  String createdAt;
  String updatedAt;
  String deletedAt;

  TBBStoreSubscription({
    this.subscriptionId,
    this.variantId,
    this.storeId,
    this.dateOfPurchase,
    this.createdAt,
    this.updatedAt,
    this.deletedAt,
  });

  /// A necessary factory constructor for creating a new User instance
  /// from a map. Pass the map to the generated `_$UserFromJson()` constructor.
  /// The constructor is named after the source class, in this case, User.
  factory TBBStoreSubscription.fromJson(Map<String, dynamic> json) {
    json['subscription_id'] = json['subscription_id'].toString();
    json['variant_id'] = json['variant_id'].toString();
    json['store_id'] = json['store_id'].toString();
    json['date_of_purchase'] = json['date_of_purchase'].toString();

    return _$TBBStoreSubscriptionFromJson(json);
  }

  /// `toJson` is the convention for a class to declare support for serialization
  /// to JSON. The implementation simply calls the private, generated
  /// helper method `_$UserToJson`.
  Map<String, dynamic> toJson() => _$TBBStoreSubscriptionToJson(this);

  @override
  toString() => this.toJson().toString();
}
