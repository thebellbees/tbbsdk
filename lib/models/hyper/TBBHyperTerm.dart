import 'package:json_annotation/json_annotation.dart';
import 'package:tbbsdk/models/TBBTaxonomy.dart';



/// This allows the `User` class to access private members in
/// the generated file. The value for this is *.g.dart, where
/// the star denotes the source file name.
part 'TBBHyperTerm.g.dart';

/// An annotation for the code generator to know that this class needs the
/// JSON serialization logic to be generated.
@JsonSerializable(
    fieldRename: FieldRename.snake, nullable: true, explicitToJson: true)
class TBBHyperTerm {
  String id;
  String name;
  String slug;
  String icon;
  String parent;
  String taxonomyId;
  TBBTaxonomy taxonomy;
  @JsonKey(name: "hy_terms")
  List<TBBHyperTerm> hyperTerms;
  String createdAt;
  String updatedAt;
  String deletedAt;

  TBBHyperTerm({
    this.id,
    this.name,
    this.slug,
    this.icon,
    this.parent,
    this.taxonomyId,
    this.taxonomy,
    this.hyperTerms,
    this.createdAt,
    this.updatedAt,
    this.deletedAt,
  });

  /// A necessary factory constructor for creating a new User instance
  /// from a map. Pass the map to the generated `_$UserFromJson()` constructor.
  /// The constructor is named after the source class, in this case, User.
  factory TBBHyperTerm.fromJson(Map<String, dynamic> json) {
    json['id'] = json['id'].toString();
    json['parent'] = json['parent'].toString();
    json['taxonomy_id'] = json['taxonomy_id'].toString();
    return _$TBBHyperTermFromJson(json);
  }

  /// `toJson` is the convention for a class to declare support for serialization
  /// to JSON. The implementation simply calls the private, generated
  /// helper method `_$UserToJson`.
  Map<String, dynamic> toJson() => _$TBBHyperTermToJson(this);

  @override
  toString() => this.toJson().toString();
}
