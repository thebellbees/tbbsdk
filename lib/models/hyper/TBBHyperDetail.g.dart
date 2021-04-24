// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'TBBHyperDetail.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TBBHyperDetail _$TBBHyperDetailFromJson(Map<String, dynamic> json) {
  return TBBHyperDetail(
    storeId: json['store_id'] as String,
    id: json['id'] as String,
    phone: json['phone'] as String,
    name: json['name'] as String,
    description: json['description'] as String,
    enabled: json['enabled'] as bool,
    shopPic: json['shop_pic'] as String,
    store: json['store'] == null
        ? null
        : TBBStore.fromJson(json['store'] as Map<String, dynamic>),
    hyperTerm: json['hy_term'] == null
        ? null
        : TBBHyperTerm.fromJson(json['hy_term'] as Map<String, dynamic>),
    isFavourite: ModelHelpers.boolParse(json['is_favourite']),
    gender: json['gender'] as String,
    reviews: (json['reviews'] as List)
        ?.map((e) => e == null
            ? null
            : TBBHyperOrderReview.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    createdAt: json['created_at'] as String,
    updatedAt: json['updated_at'] as String,
    deletedAt: json['deleted_at'] as String,
  );
}

Map<String, dynamic> _$TBBHyperDetailToJson(TBBHyperDetail instance) =>
    <String, dynamic>{
      'id': instance.id,
      'store_id': instance.storeId,
      'name': instance.name,
      'phone': instance.phone,
      'shop_pic': instance.shopPic,
      'description': instance.description,
      'gender': instance.gender,
      'enabled': instance.enabled,
      'store': instance.store?.toJson(),
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'deleted_at': instance.deletedAt,
      'hy_term': instance.hyperTerm?.toJson(),
      'is_favourite': instance.isFavourite,
      'reviews': instance.reviews?.map((e) => e?.toJson())?.toList(),
    };
