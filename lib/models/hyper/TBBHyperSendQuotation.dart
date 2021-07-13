import 'package:json_annotation/json_annotation.dart';
import 'package:tbbsdk/models/account/TBBAddress.dart';
import 'package:tbbsdk/models/hyper/TBBHyperOrderItem.dart';

/// This allows the `User` class to access private members in
/// the generated file. The value for this is *.g.dart, where
/// the star denotes the source file name.
part 'TBBHyperSendQuotation.g.dart';

/// An annotation for the code generator to know that this class needs the
/// JSON serialization logic to be generated.
@JsonSerializable(
    fieldRename: FieldRename.snake, nullable: true, explicitToJson: true)
class TBBHyperSendQuotation {
  String id;
  String note;
  TBBAddress address;
  List<TBBHyperOrderItem> items;

  TBBHyperSendQuotation({this.id, this.items, this.address, this.note});

  /// A necessary factory constructor for creating a new User instance
  /// from a map. Pass the map to the generated `_$UserFromJson()` constructor.
  /// The constructor is named after the source class, in this case, User.
  factory TBBHyperSendQuotation.fromJson(Map<String, dynamic> json) {
    return _$TBBHyperSendQuotationFromJson(json);
  }

  static List<TBBHyperSendQuotation> listFromJson(List<dynamic> listJson) {
    Iterable l = listJson;
    List<TBBHyperSendQuotation> items = List<TBBHyperSendQuotation>.from(l.map(
            (model) =>
                TBBHyperSendQuotation.fromJson(model as Map<String, dynamic>)))
        .toList();
    return items;
  }

  /// `toJson` is the convention for a class to declare support for serialization
  /// to JSON. The implementation simply calls the private, generated
  /// helper method `_$UserToJson`.
  Map<String, dynamic> toJson() => _$TBBHyperSendQuotationToJson(this);

  @override
  toString() => this.toJson().toString();
}
