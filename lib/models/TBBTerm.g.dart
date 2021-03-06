// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'TBBTerm.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TBBTerm _$TBBTermFromJson(Map<String, dynamic> json) {
  return TBBTerm(
    id: json['id'] as String,
    name: json['name'] as String,
    slug: json['slug'] as String,
    icon: json['icon'] as String,
    parent: json['parent'] as String,
    taxonomyId: json['taxonomy_id'] as String,
    terms: (json['terms'] as List)
        ?.map((e) =>
            e == null ? null : TBBTerm.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    taxonomy: json['taxonomy'] == null
        ? null
        : TBBTaxonomy.fromJson(json['taxonomy'] as Map<String, dynamic>),
    createdAt: json['created_at'] as String,
    updatedAt: json['updated_at'] as String,
    deletedAt: json['deleted_at'] as String,
  );
}

Map<String, dynamic> _$TBBTermToJson(TBBTerm instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'slug': instance.slug,
      'icon': instance.icon,
      'parent': instance.parent,
      'taxonomy_id': instance.taxonomyId,
      'taxonomy': instance.taxonomy?.toJson(),
      'terms': instance.terms?.map((e) => e?.toJson())?.toList(),
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'deleted_at': instance.deletedAt,
    };
