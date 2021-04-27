// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'TBBHyperTerm.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TBBHyperTerm _$TBBHyperTermFromJson(Map<String, dynamic> json) {
  return TBBHyperTerm(
    id: json['id'] as String,
    name: json['name'] as String,
    slug: json['slug'] as String,
    icon: json['icon'] as String,
    parent: json['parent'] as String,
    taxonomyId: json['taxonomy_id'] as String,
    taxonomy: json['taxonomy'] == null
        ? null
        : TBBTaxonomy.fromJson(json['taxonomy'] as Map<String, dynamic>),
    hyperTerms: (json['hy_terms'] as List)
        ?.map((e) =>
            e == null ? null : TBBHyperTerm.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    createdAt: json['created_at'] as String,
    updatedAt: json['updated_at'] as String,
    deletedAt: json['deleted_at'] as String,
  );
}

Map<String, dynamic> _$TBBHyperTermToJson(TBBHyperTerm instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'slug': instance.slug,
      'icon': instance.icon,
      'parent': instance.parent,
      'taxonomy_id': instance.taxonomyId,
      'taxonomy': instance.taxonomy?.toJson(),
      'hy_terms': instance.hyperTerms?.map((e) => e?.toJson())?.toList(),
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'deleted_at': instance.deletedAt,
    };
