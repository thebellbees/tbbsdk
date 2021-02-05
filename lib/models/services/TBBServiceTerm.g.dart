// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'TBBServiceTerm.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TBBServiceTerm _$TBBServiceTermFromJson(Map<String, dynamic> json) {
  return TBBServiceTerm(
    id: json['id'] as String,
    name: json['name'] as String,
    slug: json['slug'] as String,
    icon: json['icon'] as String,
    parent: json['parent'] as String,
    taxonomyId: json['taxonomy_id'] as String,
    taxonomy: json['taxonomy'] == null
        ? null
        : TBBServiceTaxonomy.fromJson(json['taxonomy'] as Map<String, dynamic>),
    srTerms: (json['sr_terms'] as List)
        ?.map((e) => e == null
            ? null
            : TBBServiceTerm.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    createdAt: json['created_at'] as String,
    updatedAt: json['updated_at'] as String,
    deletedAt: json['deleted_at'] as String,
  );
}

Map<String, dynamic> _$TBBServiceTermToJson(TBBServiceTerm instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'slug': instance.slug,
      'icon': instance.icon,
      'parent': instance.parent,
      'taxonomy_id': instance.taxonomyId,
      'taxonomy': instance.taxonomy?.toJson(),
      'sr_terms': instance.srTerms?.map((e) => e?.toJson())?.toList(),
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'deleted_at': instance.deletedAt,
    };
