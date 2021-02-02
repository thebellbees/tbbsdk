class TBBServiceTaxonomy {
  String taxonomy;
  String slug;
  String icon;
  String description;
  String createdAt;
  String updatedAt;
  String deletedAt;

  TBBServiceTaxonomy({
    this.taxonomy,
    this.slug,
    this.icon,
    this.description,
    this.createdAt,
    this.updatedAt,
    this.deletedAt,
  });

  TBBServiceTaxonomy.fromJson(Map<String, dynamic> json) {
    taxonomy = json['taxonomy'];
    slug = json['slug'];
    icon = json['icon'];
    description = json['description'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    deletedAt = json['deleted_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['taxonomy'] = this.taxonomy;
    data['slug'] = this.slug;
    data['icon'] = this.icon;
    data['description'] = this.description;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    data['deleted_at'] = this.deletedAt;

    return data;
  }

  @override
  toString() => this.toJson().toString();
}
