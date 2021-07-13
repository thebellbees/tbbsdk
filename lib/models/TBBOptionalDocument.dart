import 'package:json_annotation/json_annotation.dart';

/// This allows the `User` class to access private members in
/// the generated file. The value for this is *.g.dart, where
/// the star denotes the source file name.
part 'TBBOptionalDocument.g.dart';

/// An annotation for the code generator to know that this class needs the
/// JSON serialization logic to be generated.
@JsonSerializable(
    fieldRename: FieldRename.snake, nullable: true, explicitToJson: true)
class TBBOptionalDocument {
  String aadharDoc;
  String gstDoc;
  String udyogAadharDoc;
  String certificateDoc;

  TBBOptionalDocument({
    this.aadharDoc,
    this.udyogAadharDoc,
    this.gstDoc,
    this.certificateDoc,
  });

  /// A necessary factory constructor for creating a new User instance
  /// from a map. Pass the map to the generated `_$UserFromJson()` constructor.
  /// The constructor is named after the source class, in this case, User.
  factory TBBOptionalDocument.fromJson(Map<String, dynamic> json) {
    json['aadhar_doc'] = json['aadhar_doc'].toString();
    json['udyog_aadhar_doc'] = json['udyog_aadhar_doc'].toString();
    json['gst_doc'] = json['gst_iso'].toString();
    json['certificate_doc'] = json['certificate_doc'].toString();

    return _$TBBOptionalDocumentFromJson(json);
  }

  static List<TBBOptionalDocument> listFromJson(List<dynamic> listJson) {
    Iterable l = listJson;
    List<TBBOptionalDocument> items = List<TBBOptionalDocument>.from(
        l.map((model) => TBBOptionalDocument.fromJson(model)));
    return items;
  }

  /// `toJson` is the convention for a class to declare support for serialization
  /// to JSON. The implementation simply calls the private, generated
  /// helper method `_$UserToJson`.
  Map<String, dynamic> toJson() => _$TBBOptionalDocumentToJson(this);

  @override
  toString() => this.toJson().toString();
}
