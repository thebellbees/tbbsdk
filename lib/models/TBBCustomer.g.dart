// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'TBBCustomer.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TBBCustomer _$TBBCustomerFromJson(Map<String, dynamic> json) {
  return TBBCustomer(
    customerId: json['customer_id'] as String,
    createdAt: json['created_at'] as String,
    updatedAt: json['updated_at'] as String,
    deletedAt: json['deleted_at'] as String,
  );
}

Map<String, dynamic> _$TBBCustomerToJson(TBBCustomer instance) =>
    <String, dynamic>{
      'customer_id': instance.customerId,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'deleted_at': instance.deletedAt,
    };
