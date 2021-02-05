// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'TBBServiceItem.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TBBServiceItem _$TBBServiceItemFromJson(Map<String, dynamic> json) {
  return TBBServiceItem(
    id: json['id'] as String,
    storeId: json['store_id'] as String,
    name: json['name'] as String,
    slug: json['slug'] as String,
    responseMinute: json['response_minute'] as String,
    store: json['store'] == null
        ? null
        : TBBStore.fromJson(json['store'] as Map<String, dynamic>),
    createdAt: json['created_at'] as String,
    updatedAt: json['updated_at'] as String,
    deletedAt: json['deleted_at'] as String,
  );
}

Map<String, dynamic> _$TBBServiceItemToJson(TBBServiceItem instance) =>
    <String, dynamic>{
      'id': instance.id,
      'store_id': instance.storeId,
      'name': instance.name,
      'slug': instance.slug,
      'response_minute': instance.responseMinute,
      'store': instance.store?.toJson(),
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'deleted_at': instance.deletedAt,
    };
