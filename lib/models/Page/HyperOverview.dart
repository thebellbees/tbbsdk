import 'package:json_annotation/json_annotation.dart';

/// This allows the `User` class to access private members in
/// the generated file. The value for this is *.g.dart, where
/// the star denotes the source file name.
part 'HyperOverview.g.dart';

/// An annotation for the code generator to know that this class needs the
/// JSON serialization logic to be generated.
@JsonSerializable(
    fieldRename: FieldRename.snake, nullable: true, explicitToJson: true)
class HyperOverview {
  num newJobsCount;
  num totalOrdersCount;
  num completedOrdersCount;

  HyperOverview({
    this.newJobsCount,
    this.totalOrdersCount,
    this.completedOrdersCount,
  });

  /// A necessary factory constructor for creating a new User instance
  /// from a map. Pass the map to the generated `_$UserFromJson()` constructor.
  /// The constructor is named after the source class, in this case, User.
  factory HyperOverview.fromJson(Map<String, dynamic> json) {
    json['new_jobs_count'] = num.parse(json['new_jobs_count'].toString());
    json['total_orders_count'] =
        num.parse(json['total_orders_count'].toString());
    json['completed_orders_count'] =
        num.parse(json['completed_orders_count'].toString());
    return _$HyperOverviewFromJson(json);
  }

  /// `toJson` is the convention for a class to declare support for serialization
  /// to JSON. The implementation simply calls the private, generated
  /// helper method `_$UserToJson`.
  Map<String, dynamic> toJson() => _$HyperOverviewToJson(this);

  @override
  toString() => this.toJson().toString();
}
