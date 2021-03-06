// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'TBBServiceDetail.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TBBServiceDetail _$TBBServiceDetailFromJson(Map<String, dynamic> json) {
  return TBBServiceDetail(
    storeId: json['store_id'] as String,
    phone: json['phone'] as String,
    description: json['description'] as String,
    responseMinute: json['response_minute'] as String,
    enabled: json['enabled'] as bool,
    store: json['store'] == null
        ? null
        : TBBStore.fromJson(json['store'] as Map<String, dynamic>),
    serviceTerm: json['sr_term'] == null
        ? null
        : TBBServiceTerm.fromJson(json['sr_term'] as Map<String, dynamic>),
    serviceManPic: json['service_man_pic'] as String,
    workerOne: json['worker_one'] as String,
    workerTwo: json['worker_two'] as String,
    gender: json['gender'] as String,
    reviews: (json['reviews'] as List)
        ?.map((e) => e == null
            ? null
            : TBBServiceOrderReview.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    createdAt: json['created_at'] as String,
    updatedAt: json['updated_at'] as String,
    deletedAt: json['deleted_at'] as String,
  )..name = json['name'] as String;
}

Map<String, dynamic> _$TBBServiceDetailToJson(TBBServiceDetail instance) =>
    <String, dynamic>{
      'store_id': instance.storeId,
      'name': instance.name,
      'phone': instance.phone,
      'service_man_pic': instance.serviceManPic,
      'worker_one': instance.workerOne,
      'worker_two': instance.workerTwo,
      'description': instance.description,
      'gender': instance.gender,
      'response_minute': instance.responseMinute,
      'enabled': instance.enabled,
      'store': instance.store?.toJson(),
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'deleted_at': instance.deletedAt,
      'sr_term': instance.serviceTerm?.toJson(),
      'reviews': instance.reviews?.map((e) => e?.toJson())?.toList(),
    };
