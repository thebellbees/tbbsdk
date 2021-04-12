// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'TBBHyperFavourite.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TBBHyperFavourite _$TBBHyperFavouriteFromJson(Map<String, dynamic> json) {
  return TBBHyperFavourite(
    id: json['id'] as String,
    itemId: json['item_id'] as String,
    storeType: json['store_type'] as String,
    customerId: json['customer_id'] as String,
    customer: json['customer'] == null
        ? null
        : TBBUser.fromJson(json['customer'] as Map<String, dynamic>),
    item: json['hyper_favourite_item'] as Map<String, dynamic>,
    createdAt: json['created_at'] as String,
    updatedAt: json['updated_at'] as String,
    deletedAt: json['deleted_at'] as String,
  );
}

Map<String, dynamic> _$TBBHyperFavouriteToJson(TBBHyperFavourite instance) =>
    <String, dynamic>{
      'id': instance.id,
      'item_id': instance.itemId,
      'store_type': instance.storeType,
      'customer_id': instance.customerId,
      'customer': instance.customer?.toJson(),
      'hyper_favourite_item': instance.item,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'deleted_at': instance.deletedAt,
    };
