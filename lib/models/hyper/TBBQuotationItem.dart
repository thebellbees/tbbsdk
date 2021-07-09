import 'package:json_annotation/json_annotation.dart';

/// This allows the `User` class to access private members in
/// the generated file. The value for this is *.g.dart, where
/// the star denotes the source file name.
part 'TBBQuotationItem.g.dart';

/// An annotation for the code generator to know that this class needs the
/// JSON serialization logic to be generated.
@JsonSerializable(
    fieldRename: FieldRename.snake, nullable: true, explicitToJson: true)
class TBBQuotationItem {
  String id;
  String name;
  String salesPrice;
  String mrpPrice;
  String specialPrice;
  String note;

  TBBQuotationItem({
    this.id,
    this.name,
    this.salesPrice,
    this.mrpPrice,
    this.specialPrice,
    this.note,
  });

  /// A necessary factory constructor for creating a new User instance
  /// from a map. Pass the map to the generated `_$UserFromJson()` constructor.
  /// The constructor is named after the source class, in this case, User.
  factory TBBQuotationItem.fromJson(Map<String, dynamic> json) {
    json['id'] = json['id'].toString();
    json['sales_price'] = json['sales_price'].toString();
    json['mrp_price'] = json['mrp_price'].toString();
    json['special_price'] = json['special_price'].toString();
    return _$TBBQuotationItemFromJson(json);
  }

  static List<TBBQuotationItem> listFromJson(List<dynamic> listJson) {
    Iterable l = listJson;

    List<TBBQuotationItem> items = List<TBBQuotationItem>.from(
        l.map((model) => TBBQuotationItem.fromJson(model)));

    return items;
  }

  /// `toJson` is the convention for a class to declare support for serialization
  /// to JSON. The implementation simply calls the private, generated
  /// helper method `_$UserToJson`.
  Map<String, dynamic> toJson() => _$TBBQuotationItemToJson(this);

  @override
  toString() => this.toJson().toString();
}
