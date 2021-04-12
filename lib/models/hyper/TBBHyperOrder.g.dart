// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'TBBHyperOrder.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TBBHyperOrder _$TBBHyperOrderFromJson(Map<String, dynamic> json) {
  return TBBHyperOrder(
    id: json['id'] as String,
    hyperId: json['hyper_id'] as String,
    customerId: json['customer_id'] as String,
    requestedTime: json['requested_time'] as String,
    acceptedTime: json['accepted_time'] as String,
    cancelledTime: json['cancelled_time'] as String,
    reachedTime: json['reached_time'] as String,
    expired: json['expired'] as bool,
    hyperDetail: json['hy_shop'] == null
        ? null
        : TBBHyperDetail.fromJson(json['hy_shop'] as Map<String, dynamic>),
    status: json['status'] as String,
    createdAt: json['created_at'] as String,
    updatedAt: json['updated_at'] as String,
    deletedAt: json['deleted_at'] as String,
  )..orderReview = json['order_review'] == null
      ? null
      : TBBHyperOrderReview.fromJson(
          json['order_review'] as Map<String, dynamic>);
}

Map<String, dynamic> _$TBBHyperOrderToJson(TBBHyperOrder instance) =>
    <String, dynamic>{
      'id': instance.id,
      'hyper_id': instance.hyperId,
      'customer_id': instance.customerId,
      'requested_time': instance.requestedTime,
      'accepted_time': instance.acceptedTime,
      'cancelled_time': instance.cancelledTime,
      'reached_time': instance.reachedTime,
      'expired': instance.expired,
      'status': instance.status,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'deleted_at': instance.deletedAt,
      'hy_shop': instance.hyperDetail?.toJson(),
      'order_review': instance.orderReview?.toJson(),
    };
