import 'package:json_annotation/json_annotation.dart';
import 'package:tbbsdk/models/TBBSubscriptionVariant.dart';

/// This allows the `User` class to access private members in
/// the generated file. The value for this is *.g.dart, where
/// the star denotes the source file name.
part 'TBBSubscriptionPlan.g.dart';

/// An annotation for the code generator to know that this class needs the
/// JSON serialization logic to be generated.
@JsonSerializable(
    fieldRename: FieldRename.snake, nullable: true, explicitToJson: true)
class TBBSubscriptionPlan {
  String planId;
  String name;
  String description;
  String type;
  int maxDayDuration;
  double dayPrice;
  List<TBBSubscriptionVariant> subscriptionVariants;
  String createdAt;
  String updatedAt;
  String deletedAt;

  TBBSubscriptionPlan({
    this.planId,
    this.name,
    this.description,
    this.type,
    this.maxDayDuration,
    this.dayPrice,

    this.subscriptionVariants,
    this.createdAt,
    this.updatedAt,
    this.deletedAt,
  });

  /// A necessary factory constructor for creating a new User instance
  /// from a map. Pass the map to the generated `_$UserFromJson()` constructor.
  /// The constructor is named after the source class, in this case, User.
  factory TBBSubscriptionPlan.fromJson(Map<String, dynamic> json) {
    json['plan_id'] = json['plan_id'].toString();
    json['name'] = json['name'].toString();
    json['description'] = json['description'].toString();
    json['type'] = json['type'].toString();

    return _$TBBSubscriptionPlanFromJson(json);
  }
  static List<TBBSubscriptionPlan> listFromJson(List<dynamic> listJson) {
    Iterable l = listJson;

    List<TBBSubscriptionPlan> items = List<TBBSubscriptionPlan>.from(
        l.map((model) => TBBSubscriptionPlan.fromJson(model)));

    return items;
  }

  /// `toJson` is the convention for a class to declare support for serialization
  /// to JSON. The implementation simply calls the private, generated
  /// helper method `_$UserToJson`.
  Map<String, dynamic> toJson() => _$TBBSubscriptionPlanToJson(this);

  @override
  toString() => this.toJson().toString();
}
