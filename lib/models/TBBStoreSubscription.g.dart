// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'TBBStoreSubscription.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TBBStoreSubscription _$TBBStoreSubscriptionFromJson(Map<String, dynamic> json) {
  return TBBStoreSubscription(
    id: json['id'] as String,
    subscriptionId: json['subscription_id'] as String,
    transactionId: json['transaction_id'] as String,
    variantId: json['variant_id'] as String,
    storeId: json['store_id'] as String,
    beginDate: json['begin_date'] as int,
    endDate: json['end_date'] as int,
    duration: json['duration'] as int,
    price: (json['price'] as num)?.toDouble(),
    status: json['status'] as String,
    createdAt: json['created_at'] as String,
    updatedAt: json['updated_at'] as String,
    deletedAt: json['deleted_at'] as String,
  );
}

Map<String, dynamic> _$TBBStoreSubscriptionToJson(
        TBBStoreSubscription instance) =>
    <String, dynamic>{
      'id': instance.id,
      'subscription_id': instance.subscriptionId,
      'transaction_id': instance.transactionId,
      'variant_id': instance.variantId,
      'store_id': instance.storeId,
      'duration': instance.duration,
      'begin_date': instance.beginDate,
      'end_date': instance.endDate,
      'price': instance.price,
      'status': instance.status,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'deleted_at': instance.deletedAt,
    };
