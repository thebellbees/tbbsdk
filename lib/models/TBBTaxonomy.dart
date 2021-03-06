import 'package:json_annotation/json_annotation.dart';
import 'package:tbbsdk/models/TBBTerm.dart';

/// This allows the `User` class to access private members in
/// the generated file. The value for this is *.g.dart, where
/// the star denotes the source file name.
part 'TBBTaxonomy.g.dart';

/// An annotation for the code generator to know that this class needs the
/// JSON serialization logic to be generated.
@JsonSerializable(
    fieldRename: FieldRename.snake, nullable: true, explicitToJson: true)
class TBBTaxonomy {
  String id;
  String taxonomy;
  String slug;
  String icon;
  String description;
  List<TBBTerm> terms;
  String createdAt;
  String updatedAt;
  String deletedAt;

  TBBTaxonomy({
    this.id,
    this.taxonomy,
    this.slug,
    this.icon,
    this.description,
    this.terms,
    this.createdAt,
    this.updatedAt,
    this.deletedAt,
  });

  /// A necessary factory constructor for creating a new User instance
  /// from a map. Pass the map to the generated `_$UserFromJson()` constructor.
  /// The constructor is named after the source class, in this case, User.
  factory TBBTaxonomy.fromJson(Map<String, dynamic> json) {
    json['id'] = json['id'].toString();
    json['icon'] = json['icon'].toString();
    json['taxonomy'] = json['taxonomy'].toString();
    json['terms'] = json['sr_terms'];
    if (json['sr_terms'] == null ||
        json['terms'] != null && json['terms'].length == 0) {
      json['terms'] = json['hy_terms'];
    }
    return _$TBBTaxonomyFromJson(json);
  }

  static List<TBBTaxonomy> listFromJson(List<dynamic> listJson) {
    Iterable l = listJson;

    List<TBBTaxonomy> items =
        List<TBBTaxonomy>.from(l.map((model) => TBBTaxonomy.fromJson(model)));

    return items;
  }

  /// `toJson` is the convention for a class to declare support for serialization
  /// to JSON. The implementation simply calls the private, generated
  /// helper method `_$UserToJson`.
  Map<String, dynamic> toJson() => _$TBBTaxonomyToJson(this);

  @override
  toString() => this.toJson().toString();
}
