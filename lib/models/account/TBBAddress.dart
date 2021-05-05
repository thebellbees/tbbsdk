import 'package:json_annotation/json_annotation.dart';


/// This allows the `User` class to access private members in
/// the generated file. The value for this is *.g.dart, where
/// the star denotes the source file name.
part 'TBBAddress.g.dart';

/// An annotation for the code generator to know that this class needs the
/// JSON serialization logic to be generated.
@JsonSerializable(
    fieldRename: FieldRename.snake, nullable: true, explicitToJson: true)
class TBBAddress {
  String id;
  String label;
  String name;
  String city;
  String phone;
  String pincode;
  String addressLine1;
  String addressLine2;
  String state;
  bool isDefault;
  String createdAt;
  String updatedAt;

  TBBAddress({
    this.label,
    this.name,
    this.phone,
    this.isDefault,
    this.addressLine1,
    this.addressLine2,
    this.state,
    this.pincode,
    this.id,
    this.city,
    this.createdAt,
    this.updatedAt,
  });

  /// A necessary factory constructor for creating a new User instance
  /// from a map. Pass the map to the generated `_$UserFromJson()` constructor.
  /// The constructor is named after the source class, in this case, User.
  factory TBBAddress.fromJson(Map<String, dynamic> json) {
    json['id'] = json['id'].toString();
    json['pincode'] = json['pincode'].toString();
    json['phone'] = json['phone'].toString();
    json['city'] = json['city'].toString();
    json['created_at'] = json['created_at'].toString();
    json['updated_at'] = json['updated_at'].toString();
    return _$TBBAddressFromJson(json);
  }

  static List<TBBAddress> listFromJson(List<dynamic> listJson) {
    Iterable l = listJson;
    List<TBBAddress> items =
    List<TBBAddress>.from(l.map((model) => TBBAddress.fromJson(model)));
    return items;
  }

  /// `toJson` is the convention for a class to declare support for serialization
  /// to JSON. The implementation simply calls the private, generated
  /// helper method `_$UserToJson`.
  Map<String, dynamic> toJson() => _$TBBAddressToJson(this);

  @override
  toString() => this.toJson().toString();
}