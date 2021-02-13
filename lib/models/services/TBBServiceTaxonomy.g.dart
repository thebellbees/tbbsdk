// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'TBBServiceTaxonomy.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TBBServiceTaxonomy _$TBBServiceTaxonomyFromJson(Map<String, dynamic> json) {
  return TBBServiceTaxonomy(
    id: json['id'] as String,
    taxonomy: json['taxonomy'] as String,
    slug: json['slug'] as String,
    icon: json['icon'] as String,
    description: json['description'] as String,
    serviceTerms: (json['sr_terms'] as List)
        ?.map((e) => e == null
            ? null
            : TBBServiceTerm.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    createdAt: json['created_at'] as String,
    updatedAt: json['updated_at'] as String,
    deletedAt: json['deleted_at'] as String,
  );
}

Map<String, dynamic> _$TBBServiceTaxonomyToJson(TBBServiceTaxonomy instance) =>
    <String, dynamic>{
      'id': instance.id,
      'taxonomy': instance.taxonomy,
      'slug': instance.slug,
      'icon': instance.icon,
      'description': instance.description,
      'sr_terms': instance.serviceTerms?.map((e) => e?.toJson())?.toList(),
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'deleted_at': instance.deletedAt,
    };
