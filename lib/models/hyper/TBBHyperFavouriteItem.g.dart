// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'TBBHyperFavouriteItem.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TBBHyperFavouriteItem _$TBBHyperFavouriteItemFromJson(
    Map<String, dynamic> json) {
  return TBBHyperFavouriteItem(
    id: json['id'] as String,
    itemId: json['item_id'] as String,
    storeType: json['store_type'] as String,
    customerId: json['customer_id'] as String,
    customer: json['customer'] == null
        ? null
        : TBBUser.fromJson(json['customer'] as Map<String, dynamic>),
    hyperDetail: json['hr_shop'] == null
        ? null
        : TBBHyperDetail.fromJson(json['hr_shop'] as Map<String, dynamic>),
    createdAt: json['created_at'] as String,
    updatedAt: json['updated_at'] as String,
    deletedAt: json['deleted_at'] as String,
  );
}

Map<String, dynamic> _$TBBHyperFavouriteItemToJson(
        TBBHyperFavouriteItem instance) =>
    <String, dynamic>{
      'id': instance.id,
      'item_id': instance.itemId,
      'store_type': instance.storeType,
      'customer_id': instance.customerId,
      'customer': instance.customer?.toJson(),
      'hr_shop': instance.hyperDetail?.toJson(),
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'deleted_at': instance.deletedAt,
    };
