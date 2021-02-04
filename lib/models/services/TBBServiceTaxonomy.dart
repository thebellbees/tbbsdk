import 'package:tbbsdk/models/services/service_term.dart';

import 'package:json_annotation/json_annotation.dart';

/// This allows the `User` class to access private members in
/// the generated file. The value for this is *.g.dart, where
/// the star denotes the source file name.
part 'TBBServiceTaxonomy.g.dart';

/// An annotation for the code generator to know that this class needs the
/// JSON serialization logic to be generated.
@JsonSerializable()
class TBBServiceTaxonomy {
  dynamic id;
  String taxonomy;
  String slug;
  String icon;
  String description;
  List<TBBServiceTerm> srTerms;
  String createdAt;
  String updatedAt;
  String deletedAt;

  TBBServiceTaxonomy({
    this.id,
    this.taxonomy,
    this.slug,
    this.icon,
    this.description,
    this.srTerms,
    this.createdAt,
    this.updatedAt,
    this.deletedAt,
  });

  /// A necessary factory constructor for creating a new User instance
  /// from a map. Pass the map to the generated `_$UserFromJson()` constructor.
  /// The constructor is named after the source class, in this case, User.
  factory TBBServiceTaxonomy.fromJson(Map<String, dynamic> json) =>
      _$TBBServiceTaxonomyFromJson(json);

  /// `toJson` is the convention for a class to declare support for serialization
  /// to JSON. The implementation simply calls the private, generated
  /// helper method `_$UserToJson`.
  Map<String, dynamic> toJson() => _$TBBServiceTaxonomyToJson(this);

  @override
  toString() => this.toJson().toString();
}
