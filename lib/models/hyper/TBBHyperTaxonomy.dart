import 'package:tbbsdk/models/hyper/TBBHyperTerm.dart';


import 'package:json_annotation/json_annotation.dart';

/// This allows the `User` class to access private members in
/// the generated file. The value for this is *.g.dart, where
/// the star denotes the source file name.
part 'TBBHyperTaxonomy.g.dart';

/// An annotation for the code generator to know that this class needs the
/// JSON serialization logic to be generated.
@JsonSerializable(
    fieldRename: FieldRename.snake, nullable: true, explicitToJson: true)
class TBBHyperTaxonomy {
  String id;
  String taxonomy;
  String slug;
  String icon;
  String description;
  @JsonKey(name: "hy_terms")
  List<TBBHyperTerm> hyperTerms;
  String createdAt;
  String updatedAt;
  String deletedAt;

  TBBHyperTaxonomy({
    this.id,
    this.taxonomy,
    this.slug,
    this.icon,
    this.description,
    this.hyperTerms,
    this.createdAt,
    this.updatedAt,
    this.deletedAt,
  });

  /// A necessary factory constructor for creating a new User instance
  /// from a map. Pass the map to the generated `_$UserFromJson()` constructor.
  /// The constructor is named after the source class, in this case, User.
  factory TBBHyperTaxonomy.fromJson(Map<String, dynamic> json) {
    json['id'] = json['id'].toString();
    json['icon'] = json['icon'].toString();
    json['taxonomy'] = json['taxonomy'].toString();
    return _$TBBHyperTaxonomyFromJson(json);
  }

  static List<TBBHyperTaxonomy> listFromJson(List<dynamic> listJson) {
    Iterable l = listJson;

    List<TBBHyperTaxonomy> items = List<TBBHyperTaxonomy>.from(
        l.map((model) => TBBHyperTaxonomy.fromJson(model)));

    return items;
  }
  /// `toJson` is the convention for a class to declare support for serialization
  /// to JSON. The implementation simply calls the private, generated
  /// helper method `_$UserToJson`.
  Map<String, dynamic> toJson() => _$TBBHyperTaxonomyToJson(this);

  @override
  toString() => this.toJson().toString();
}
