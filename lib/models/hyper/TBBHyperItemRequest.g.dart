// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'TBBHyperItemRequest.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TBBHyperItemRequest _$TBBHyperItemRequestFromJson(Map<String, dynamic> json) {
  return TBBHyperItemRequest(
    id: json['id'] as String,
    hyperId: json['hyper_id'] as String,
    hyperDetail: json['hy_shop'] == null
        ? null
        : TBBHyperDetail.fromJson(json['hy_shop'] as Map<String, dynamic>),
    customerId: json['customer_id'] as String,
    totalRequestCount: json['total_request_count'] as String,
    user: json['customer'] == null
        ? null
        : TBBUser.fromJson(json['customer'] as Map<String, dynamic>),
    action: json['action'] as String,
    status: json['status'] as String,
    createdAt: json['created_at'] as String,
    updatedAt: json['updated_at'] as String,
    deletedAt: json['deleted_at'] as String,
  );
}

Map<String, dynamic> _$TBBHyperItemRequestToJson(
        TBBHyperItemRequest instance) =>
    <String, dynamic>{
      'id': instance.id,
      'hyper_id': instance.hyperId,
      'customer_id': instance.customerId,
      'action': instance.action,
      'status': instance.status,
      'customer': instance.user?.toJson(),
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'deleted_at': instance.deletedAt,
      'total_request_count': instance.totalRequestCount,
      'hy_shop': instance.hyperDetail?.toJson(),
    };
