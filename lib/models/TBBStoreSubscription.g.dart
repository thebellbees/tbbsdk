// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'TBBStoreSubscription.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TBBStoreSubscription _$TBBStoreSubscriptionFromJson(Map<String, dynamic> json) {
  return TBBStoreSubscription(
    subscriptionId: json['subscription_id'] as String,
    variantId: json['variant_id'] as String,
    storeId: json['store_id'] as String,
    dateOfPurchase: json['date_of_purchase'] as String,
    createdAt: json['created_at'] as String,
    updatedAt: json['updated_at'] as String,
    deletedAt: json['deleted_at'] as String,
  );
}

Map<String, dynamic> _$TBBStoreSubscriptionToJson(
        TBBStoreSubscription instance) =>
    <String, dynamic>{
      'subscription_id': instance.subscriptionId,
      'variant_id': instance.variantId,
      'store_id': instance.storeId,
      'date_of_purchase': instance.dateOfPurchase,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'deleted_at': instance.deletedAt,
    };
