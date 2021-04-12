// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'TBBHyperCartItem.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TBBHyperCartItem _$TBBHyperCartItemFromJson(Map<String, dynamic> json) {
  return TBBHyperCartItem(
    id: json['id'] as String,
    hyperId: json['hyper_id'] as String,
    customerId: json['customer_id'] as String,
    action: json['action'] as String,
    status: json['status'] as String,
    hyperDetail: json['hy_service'] == null
        ? null
        : TBBHyperDetail.fromJson(json['hy_service'] as Map<String, dynamic>),
    hyperOrder: json['hy_order'] == null
        ? null
        : TBBHyperOrder.fromJson(json['hy_order'] as Map<String, dynamic>),
    createdAt: json['created_at'] as String,
    updatedAt: json['updated_at'] as String,
    deletedAt: json['deleted_at'] as String,
  );
}

Map<String, dynamic> _$TBBHyperCartItemToJson(TBBHyperCartItem instance) =>
    <String, dynamic>{
      'id': instance.id,
      'hyper_id': instance.hyperId,
      'customer_id': instance.customerId,
      'action': instance.action,
      'status': instance.status,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'deleted_at': instance.deletedAt,
      'hy_service': instance.hyperDetail?.toJson(),
      'hy_order': instance.hyperOrder?.toJson(),
    };
