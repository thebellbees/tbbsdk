import 'package:tbbsdk/models/services/TBBServiceTaxonomy.dart';

class TBBServiceTerm {
  String name;
  String slug;
  String icon;
  String parent;
  String taxonomyId;
  TBBServiceTaxonomy taxonomy;
  String createdAt;
  String updatedAt;
  String deletedAt;

  TBBServiceTerm({
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

  TBBServiceTerm.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    slug = json['slug'];
    icon = json['icon'];
    parent = json['parent'];
    taxonomyId = json['taxonomy_id'].toString();
    taxonomy = json['taxonomy'] != null
        ? TBBServiceTaxonomy.fromJson(json['taxonomy'])
        : null;
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    deletedAt = json['deleted_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['slug'] = this.slug;
    data['icon'] = this.icon;
    data['parent'] = this.parent;
    data['taxonomy_id'] = this.taxonomyId;
    data['taxonomy'] = this.taxonomy != null ? this.taxonomy.toJson() : null;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    data['deleted_at'] = this.deletedAt;

    return data;
  }

  @override
  toString() => this.toJson().toString();
}
