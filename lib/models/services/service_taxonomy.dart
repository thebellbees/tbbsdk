import 'package:tbbsdk/models/services/service_term.dart';

class TBBServiceTaxonomy {
  String id;
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

  TBBServiceTaxonomy.fromJson(Map<String, dynamic> json) {
    id = json['id'].toString();
    taxonomy = json['taxonomy'];
    slug = json['slug'];
    icon = json['icon'];
    description = json['description'];
    print(
        json["sr_terms"].map((item) => TBBServiceTerm.fromJson(item)).toList());
    srTerms = json["sr_terms"] != null
        ? (json["sr_terms"] as List)
            .map((item) => TBBServiceTerm.fromJson(item))
            .toList()
        : null;
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    deletedAt = json['deleted_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['taxonomy'] = this.taxonomy;
    data['slug'] = this.slug;
    data['icon'] = this.icon;
    data['description'] = this.description;
    data['sr_terms'] = data['sr_terms'] != null
        ? this.srTerms.map((item) => item.toJson()).toList()
        : null;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    data['deleted_at'] = this.deletedAt;

    return data;
  }

  @override
  toString() => this.toJson().toString();
}
