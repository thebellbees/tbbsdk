import 'package:json_annotation/json_annotation.dart';
import 'package:tbbsdk/models/TBBTaxonomy.dart';
import 'package:tbbsdk/models/hyper/TBBQuotationItem.dart';

/// This allows the `User` class to access private members in
/// the generated file. The value for this is *.g.dart, where
/// the star denotes the source file name.
part 'TBBHyperQuotation.g.dart';

/// An annotation for the code generator to know that this class needs the
/// JSON serialization logic to be generated.
@JsonSerializable(
    fieldRename: FieldRename.snake, nullable: true, explicitToJson: true)
class TBBHyperQuotation {
  String id;
  String note;
  String addressLineOne;
  String addressLineTwo;
  String state;
  String city;
  List<TBBQuotationItem> hyperQuotationItem;
  String pincode;

  TBBHyperQuotation({
    this.id,
    this.note,
    this.addressLineOne,
    this.addressLineTwo,
    this.pincode,
    this.state,
    this.city,
    this.hyperQuotationItem,
  });

  /// A necessary factory constructor for creating a new User instance
  /// from a map. Pass the map to the generated `_$UserFromJson()` constructor.
  /// The constructor is named after the source class, in this case, User.
  factory TBBHyperQuotation.fromJson(Map<String, dynamic> json) {
    json['id'] = json['id'].toString();
    return _$TBBHyperQuotationFromJson(json);
  }

  static List<TBBHyperQuotation> listFromJson(List<dynamic> listJson) {
    Iterable l = listJson;

    List<TBBHyperQuotation> items = List<TBBHyperQuotation>.from(
        l.map((model) => TBBHyperQuotation.fromJson(model)));

    return items;
  }

  /// `toJson` is the convention for a class to declare support for serialization
  /// to JSON. The implementation simply calls the private, generated
  /// helper method `_$UserToJson`.
  Map<String, dynamic> toJson() => _$TBBHyperQuotationToJson(this);

  @override
  toString() => this.toJson().toString();
}
