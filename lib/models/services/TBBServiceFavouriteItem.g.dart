// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'TBBServiceFavouriteItem.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TBBServiceFavouriteItem _$TBBServiceFavouriteItemFromJson(
    Map<String, dynamic> json) {
  return TBBServiceFavouriteItem(
    id: json['id'] as String,
    itemId: json['item_id'] as String,
    storeType: json['store_type'] as String,
    customerId: json['customer_id'] as String,
    customer: json['customer'] == null
        ? null
        : TBBUser.fromJson(json['customer'] as Map<String, dynamic>),
    serviceDetail: json['sr_service'] == null
        ? null
        : TBBServiceDetail.fromJson(json['sr_service'] as Map<String, dynamic>),
    createdAt: json['created_at'] as String,
    updatedAt: json['updated_at'] as String,
    deletedAt: json['deleted_at'] as String,
  );
}

Map<String, dynamic> _$TBBServiceFavouriteItemToJson(
        TBBServiceFavouriteItem instance) =>
    <String, dynamic>{
      'id': instance.id,
      'item_id': instance.itemId,
      'store_type': instance.storeType,
      'customer_id': instance.customerId,
      'customer': instance.customer?.toJson(),
      'sr_service': instance.serviceDetail?.toJson(),
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'deleted_at': instance.deletedAt,
    };
