// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'TBBServiceItemRequest.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TBBServiceItemRequest _$TBBServiceItemRequestFromJson(
    Map<String, dynamic> json) {
  return TBBServiceItemRequest(
    id: json['id'] as String,
    serviceId: json['service_id'] as String,
    serviceDetail: json['sr_service'] == null
        ? null
        : TBBServiceDetail.fromJson(json['sr_service'] as Map<String, dynamic>),
    customerId: json['customer_id'] as String,
    totalRequest: json['total_request'] as String,
    user: json['customer'] == null
        ? null
        : TBBUser.fromJson(json['customer'] as Map<String, dynamic>),
    action: json['action'] as String,
    createdAt: json['created_at'] as String,
    updatedAt: json['updated_at'] as String,
    deletedAt: json['deleted_at'] as String,
  );
}

Map<String, dynamic> _$TBBServiceItemRequestToJson(
        TBBServiceItemRequest instance) =>
    <String, dynamic>{
      'id': instance.id,
      'service_id': instance.serviceId,
      'customer_id': instance.customerId,
      'action': instance.action,
      'customer': instance.user?.toJson(),
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'deleted_at': instance.deletedAt,
      'total_request': instance.totalRequest,
      'sr_service': instance.serviceDetail?.toJson(),
    };
