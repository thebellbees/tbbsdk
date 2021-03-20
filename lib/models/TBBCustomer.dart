import 'package:json_annotation/json_annotation.dart';

/// This allows the `User` class to access private members in
/// the generated file. The value for this is *.g.dart, where
/// the star denotes the source file name.
part 'TBBCustomer.g.dart';

/// An annotation for the code generator to know that this class needs the
/// JSON serialization logic to be generated.
@JsonSerializable(
    fieldRename: FieldRename.snake, nullable: true, explicitToJson: true)
class TBBCustomer {
  String customerId;
  String createdAt;
  String updatedAt;
  String deletedAt;

  TBBCustomer({
    this.customerId,
    this.createdAt,
    this.updatedAt,
    this.deletedAt,
  });

  /// A necessary factory constructor for creating a new User instance
  /// from a map. Pass the map to the generated `_$UserFromJson()` constructor.
  /// The constructor is named after the source class, in this case, User.
  factory TBBCustomer.fromJson(Map<String, dynamic> json) {
    json['id'] = json['id'].toString();
    json['customer_id'] = json['customer_id'].toString();
    json['created_at'] = json['created_at'].toString();
    json['updated_at'] = json['updated_at'].toString();
    json['updated_at'] = json['updated_at'].toString();
    json['deleted_at'] = json['deleted_at'].toString();
    json['response_minute'] = json['response_minute'].toString();
    return _$TBBCustomerFromJson(json);
  }

  static List<TBBCustomer> listFromJson(List<Map<String,dynamic>>  listJson) {
    Iterable l = listJson;
    List<TBBCustomer> items =
        List<TBBCustomer>.from(l.map((model) => TBBCustomer.fromJson(model)));
    return items;
  }

  /// `toJson` is the convention for a class to declare support for serialization
  /// to JSON. The implementation simply calls the private, generated
  /// helper method `_$UserToJson`.
  Map<String, dynamic> toJson() => _$TBBCustomerToJson(this);

  @override
  toString() => this.toJson().toString();
}
