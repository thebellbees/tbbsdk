// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'TBBAddress.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TBBAddress _$TBBAddressFromJson(Map<String, dynamic> json) {
  return TBBAddress(
    label: json['label'] as String,
    name: json['name'] as String,
    phone: json['phone'] as String,
    isDefault: ModelHelper.toBool(json['is_default']),
    addressLine1: json['address_line1'] as String,
    addressLine2: json['address_line2'] as String,
    state: json['state'] as String,
    pincode: json['pincode'] as String,
    id: json['id'] as String,
    city: json['city'] as String,
    createdAt: json['created_at'] as String,
    updatedAt: json['updated_at'] as String,
  );
}

Map<String, dynamic> _$TBBAddressToJson(TBBAddress instance) =>
    <String, dynamic>{
      'id': instance.id,
      'label': instance.label,
      'name': instance.name,
      'city': instance.city,
      'phone': instance.phone,
      'pincode': instance.pincode,
      'address_line1': instance.addressLine1,
      'address_line2': instance.addressLine2,
      'state': instance.state,
      'is_default': ModelHelper.toBool(instance.isDefault),
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
    };
