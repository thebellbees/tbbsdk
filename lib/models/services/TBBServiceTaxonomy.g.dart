// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'TBBServiceTaxonomy.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TBBServiceTaxonomy _$TBBServiceTaxonomyFromJson(Map<String, dynamic> json) {
  return TBBServiceTaxonomy(
    id: json['id'],
    taxonomy: json['taxonomy'] as String,
    slug: json['slug'] as String,
    icon: json['icon'] as String,
    description: json['description'] as String,
    srTerms: (json['srTerms'] as List)
        ?.map((e) => e == null
            ? null
            : TBBServiceTerm.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    createdAt: json['createdAt'] as String,
    updatedAt: json['updatedAt'] as String,
    deletedAt: json['deletedAt'] as String,
  );
}

Map<String, dynamic> _$TBBServiceTaxonomyToJson(TBBServiceTaxonomy instance) =>
    <String, dynamic>{
      'id': instance.id,
      'taxonomy': instance.taxonomy,
      'slug': instance.slug,
      'icon': instance.icon,
      'description': instance.description,
      'srTerms': instance.srTerms,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      'deletedAt': instance.deletedAt,
    };
