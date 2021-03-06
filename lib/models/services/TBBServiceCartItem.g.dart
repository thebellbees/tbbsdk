// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'TBBServiceCartItem.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TBBServiceCartItem _$TBBServiceCartItemFromJson(Map<String, dynamic> json) {
  return TBBServiceCartItem(
    id: json['id'] as String,
    serviceId: json['service_id'] as String,
    customerId: json['customer_id'] as String,
    action: json['action'] as String,
    status: json['status'] as String,
    serviceDetail: json['sr_service'] == null
        ? null
        : TBBServiceDetail.fromJson(json['sr_service'] as Map<String, dynamic>),
    serviceOrder: json['sr_order'] == null
        ? null
        : TBBServiceOrder.fromJson(json['sr_order'] as Map<String, dynamic>),
    createdAt: json['created_at'] as String,
    updatedAt: json['updated_at'] as String,
    deletedAt: json['deleted_at'] as String,
  );
}

Map<String, dynamic> _$TBBServiceCartItemToJson(TBBServiceCartItem instance) =>
    <String, dynamic>{
      'id': instance.id,
      'service_id': instance.serviceId,
      'customer_id': instance.customerId,
      'action': instance.action,
      'status': instance.status,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'deleted_at': instance.deletedAt,
      'sr_service': instance.serviceDetail?.toJson(),
      'sr_order': instance.serviceOrder?.toJson(),
    };
