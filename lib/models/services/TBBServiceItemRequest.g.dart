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
    serviceItem: json['sr_item'] == null
        ? null
        : TBBServiceItem.fromJson(json['sr_item'] as Map<String, dynamic>),
    customerId: json['customer_id'] as String,
    totalRequest: json['total_request'] as String,
    user: json['user'] == null
        ? null
        : TBBUser.fromJson(json['user'] as Map<String, dynamic>),
    action: json['action'] as String,
  );
}

Map<String, dynamic> _$TBBServiceItemRequestToJson(
        TBBServiceItemRequest instance) =>
    <String, dynamic>{
      'id': instance.id,
      'service_id': instance.serviceId,
      'customer_id': instance.customerId,
      'action': instance.action,
      'user': instance.user?.toJson(),
      'total_request': instance.totalRequest,
      'sr_item': instance.serviceItem?.toJson(),
    };
