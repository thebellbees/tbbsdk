// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'TBBServiceDetail.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TBBServiceDetail _$TBBServiceDetailFromJson(Map<String, dynamic> json) {
  return TBBServiceDetail(
    storeId: json['store_id'] as String,
    name: json['name'] as String,
    description: json['description'] as String,
    responseMinute: json['response_minute'] as String,
    enabled: json['enabled'] as bool,
    store: json['store'] == null
        ? null
        : TBBStore.fromJson(json['store'] as Map<String, dynamic>),
    serviceTerm: json['sr_term'] == null
        ? null
        : TBBServiceTerm.fromJson(json['sr_term'] as Map<String, dynamic>),
    reviews: (json['reviews'] as List)
        ?.map((e) => e == null
            ? null
            : TBBServiceOrderReview.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    createdAt: json['created_at'] as String,
    updatedAt: json['updated_at'] as String,
    deletedAt: json['deleted_at'] as String,
  );
}

Map<String, dynamic> _$TBBServiceDetailToJson(TBBServiceDetail instance) =>
    <String, dynamic>{
      'store_id': instance.storeId,
      'name': instance.name,
      'description': instance.description,
      'response_minute': instance.responseMinute,
      'enabled': instance.enabled,
      'store': instance.store?.toJson(),
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'deleted_at': instance.deletedAt,
      'sr_term': instance.serviceTerm?.toJson(),
      'reviews': instance.reviews?.map((e) => e?.toJson())?.toList(),
    };
