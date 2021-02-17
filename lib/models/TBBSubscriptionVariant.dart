import 'package:json_annotation/json_annotation.dart';

/// This allows the `User` class to access private members in
/// the generated file. The value for this is *.g.dart, where
/// the star denotes the source file name.
part 'TBBSubscriptionVariant.g.dart';

/// An annotation for the code generator to know that this class needs the
/// JSON serialization logic to be generated.
@JsonSerializable(
    fieldRename: FieldRename.snake, nullable: true, explicitToJson: true)
class TBBSubscriptionVariant {
  String planId;
  @JsonKey(name: "id")
  String variantId;
  double duration;
  String days;
  String months;
  String label;
  double totalAmount;

  TBBSubscriptionVariant({
    this.planId,
    this.variantId,
    this.duration,
    this.days,
    this.months,
    this.label,
    this.totalAmount,
  });

  /// A necessary factory constructor for creating a new User instance
  /// from a map. Pass the map to the generated `_$UserFromJson()` constructor.
  /// The constructor is named after the source class, in this case, User.
  factory TBBSubscriptionVariant.fromJson(Map<String, dynamic> json) {
    json['plan_id'] = json['plan_id'].toString();
    json['id'] = json['id'].toString();
    json['days'] = json['days'].toString();
    json['months'] = json['months'].toString();
    json['label'] = json['label'].toString();
    return _$TBBSubscriptionVariantFromJson(json);
  }

  /// `toJson` is the convention for a class to declare support for serialization
  /// to JSON. The implementation simply calls the private, generated
  /// helper method `_$UserToJson`.
  Map<String, dynamic> toJson() => _$TBBSubscriptionVariantToJson(this);

  @override
  toString() => this.toJson().toString();
}
