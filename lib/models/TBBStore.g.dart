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
    subCategory: json['sr_term'] == null
        ? null
        : TBBServiceTerm.fromJson(json['sr_term'] as Map<String, dynamic>),
    certificate: json['certificate'] as String,
    aadhar: json['aadhar'] as String,
    serviceDetail: json['sr_service'] == null
        ? null
        : TBBServiceDetail.fromJson(json['sr_service'] as Map<String, dynamic>),
    gst: json['gst'] as String,
    udyogAadhar: json['udyog_aadhar'] as String,
    country: json['country'] as String,
    pincode: json['pincode'] as String,
    state: json['state'] as String,
    city: json['city'] as String,
    proprietorName: json['proprietor_name'] as String,
    optionalDocuments: json['optional_documents'] == null
        ? null
        : TBBOptionalDocument.fromJson(
            json['optional_documents'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$TBBStoreToJson(TBBStore instance) => <String, dynamic>{
      'store_id': instance.storeId,
      'owner_id': instance.ownerId,
      'store_type': instance.storeType,
      'company': instance.company,
      'phone': instance.phone,
      'email': instance.email,
      'sr_term': instance.subCategory?.toJson(),
      'state': instance.state,
      'pincode': instance.pincode,
      'country': instance.country,
      'certificate': instance.certificate,
      'aadhar': instance.aadhar,
      'gst': instance.gst,
      'udyog_aadhar': instance.udyogAadhar,
      'address': instance.address,
      'enabled': instance.enabled,
      'sr_service': instance.serviceDetail?.toJson(),
      'customer': instance.customer?.toJson(),
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'deleted_at': instance.deletedAt,
      'city': instance.city,
      'proprietor_name': instance.proprietorName,
      'optional_documents': instance.optionalDocuments?.toJson(),
    };
