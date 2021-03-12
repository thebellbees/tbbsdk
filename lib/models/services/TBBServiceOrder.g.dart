// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'TBBServiceOrder.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TBBServiceOrder _$TBBServiceOrderFromJson(Map<String, dynamic> json) {
  return TBBServiceOrder(
    id: json['id'] as String,
    serviceId: json['service_id'] as String,
    customerId: json['customer_id'] as String,
    requestedTime: json['requested_time'] as String,
    acceptedTime: json['accepted_time'] as String,
    cancelledTime: json['cancelled_time'] as String,
    reachedTime: json['reached_time'] as String,
    expired: json['expired'] as bool,
    serviceDetail: json['sr_service'] == null
        ? null
        : TBBServiceDetail.fromJson(json['sr_service'] as Map<String, dynamic>),
    status: json['status'] as String,
    createdAt: json['created_at'] as String,
    updatedAt: json['updated_at'] as String,
    deletedAt: json['deleted_at'] as String,
  )..orderReview = json['order_review'] == null
      ? null
      : TBBServiceOrderReview.fromJson(
          json['order_review'] as Map<String, dynamic>);
}

Map<String, dynamic> _$TBBServiceOrderToJson(TBBServiceOrder instance) =>
    <String, dynamic>{
      'id': instance.id,
      'service_id': instance.serviceId,
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
      'sr_service': instance.serviceDetail?.toJson(),
      'order_review': instance.orderReview?.toJson(),
    };
