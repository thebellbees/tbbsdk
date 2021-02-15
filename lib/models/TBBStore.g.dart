// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'TBBStore.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TBBStore _$TBBStoreFromJson(Map<String, dynamic> json) {
  return TBBStore(
    storeId: json['store_id'] as String,
    ownerId: json['owner_id'] as String,
    storeType: json['store_type'] as String,
    name: json['name'] as String,
    company: json['company'] as String,
    phone: json['phone'] as String,
    email: json['email'] as String,
    address: json['address'] as String,
    enabled: json['enabled'] as bool,
    customer: json['customer'] == null
        ? null
        : TBBCustomer.fromJson(json['customer'] as Map<String, dynamic>),
    createdAt: json['created_at'] as String,
    updatedAt: json['updated_at'] as String,
    deletedAt: json['deleted_at'] as String,
    category: json['category'] as String,
    certificate: json['certificate'] as String,
    gst: json['gst'] as String,
    udyogAadhar: json['udyog_aadhar'] as String,
    country: json['country'] as String,
    pincode: json['pincode'] as String,
    state: json['state'] as String,
    city: json['city'] as String,
  )..aadhar = json['aadhar'] as String;
}

Map<String, dynamic> _$TBBStoreToJson(TBBStore instance) => <String, dynamic>{
      'store_id': instance.storeId,
      'owner_id': instance.ownerId,
      'store_type': instance.storeType,
      'name': instance.name,
      'company': instance.company,
      'phone': instance.phone,
      'email': instance.email,
      'category': instance.category,
      'state': instance.state,
      'pincode': instance.pincode,
      'country': instance.country,
      'certificate': instance.certificate,
      'aadhar': instance.aadhar,
      'gst': instance.gst,
      'udyog_aadhar': instance.udyogAadhar,
      'address': instance.address,
      'enabled': instance.enabled,
      'customer': instance.customer?.toJson(),
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'deleted_at': instance.deletedAt,
      'city': instance.city,
    };
