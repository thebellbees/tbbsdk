// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'TBBHyperItemRequest.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TBBHyperItemRequest _$TBBHyperItemRequestFromJson(Map<String, dynamic> json) {
  return TBBHyperItemRequest(
    id: json['id'] as String,
    shopId: json['shop_id'] as String,
    hyperDetail: json['hy_shop'] == null
        ? null
        : TBBHyperDetail.fromJson(json['hy_shop'] as Map<String, dynamic>),
    addressData: json['address_data'] as Map<String, dynamic>,
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
    listData: json['list_data'] as String,
    listImage: json['list_image'] as String,
    expired: json['expired'] as String,
    note: json['note'] as String,
    quoteRequested: json['quote_requested'] as String,
    quoteSent: json['quote_sent'] as String,
  );
}

Map<String, dynamic> _$TBBHyperItemRequestToJson(
        TBBHyperItemRequest instance) =>
    <String, dynamic>{
      'id': instance.id,
      'shop_id': instance.shopId,
      'customer_id': instance.customerId,
      'list_data': instance.listData,
      'list_image': instance.listImage,
      'address_data': instance.addressData,
      'note': instance.note,
      'expired': instance.expired,
      'quote_requested': instance.quoteRequested,
      'quote_sent': instance.quoteSent,
      'action': instance.action,
      'status': instance.status,
      'customer': instance.user?.toJson(),
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'deleted_at': instance.deletedAt,
      'total_request_count': instance.totalRequestCount,
      'hy_shop': instance.hyperDetail?.toJson(),
    };
