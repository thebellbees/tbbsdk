import 'package:json_annotation/json_annotation.dart';
import 'package:tbbsdk/models/TBBTaxonomy.dart';
import 'package:tbbsdk/models/TBBTerm.dart';

/// This allows the `User` class to access private members in
/// the generated file. The value for this is *.g.dart, where
/// the star denotes the source file name.
part 'TBBServiceTerm.g.dart';

/// An annotation for the code generator to know that this class needs the
/// JSON serialization logic to be generated.
@JsonSerializable(
    fieldRename: FieldRename.snake, nullable: true, explicitToJson: true)
class TBBServiceTerm extends TBBTerm {
  String id;
  String name;
  String slug;
  String icon;
  String parent;
  String taxonomyId;
  TBBTaxonomy taxonomy;
  String createdAt;
  String updatedAt;
  String deletedAt;

  TBBServiceTerm({
    this.id,
    this.name,
    this.slug,
    this.icon,
    this.parent,
    this.taxonomyId,
    this.taxonomy,
    this.createdAt,
    this.updatedAt,
    this.deletedAt,
  });

  /// A necessary factory constructor for creating a new User instance
  /// from a map. Pass the map to the generated `_$UserFromJson()` constructor.
  /// The constructor is named after the source class, in this case, User.
  factory TBBServiceTerm.fromJson(Map<String, dynamic> json) {
    json['id'] = json['id'].toString();
    json['parent'] = json['parent'].toString();
    json['taxonomy_id'] = json['taxonomy_id'].toString();
    return _$TBBServiceTermFromJson(json);
  }

  /// `toJson` is the convention for a class to declare support for serialization
  /// to JSON. The implementation simply calls the private, generated
  /// helper method `_$UserToJson`.
  Map<String, dynamic> toJson() => _$TBBServiceTermToJson(this);

  @override
  toString() => this.toJson().toString();
}
