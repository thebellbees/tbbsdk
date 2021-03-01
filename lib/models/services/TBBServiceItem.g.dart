// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'TBBServiceItem.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TBBServiceItem _$TBBServiceItemFromJson(Map<String, dynamic> json) {
  return TBBServiceItem(
    serviceId: json['service_id'] as String,
    latitude: json['latitude'] as String,
    longitude: json['longitude'] as String,
    availableAroundWithKm: json['available_around_with_km'] as String,
    reachTime: json['reach_time'] as String,
    distance: json['distance'] as String,
    detail: json['sr_service'] == null
        ? null
        : TBBServiceDetail.fromJson(json['sr_service'] as Map<String, dynamic>),
    serviceManPic: json['service_man_pic'] as String,
    workerOne: json['worker_one'] as String,
    workerTwo: json['worker_two'] as String,
    serviceLocation: json['locations'] == null
        ? null
        : TBBServiceLocation.fromJson(
            json['locations'] as Map<String, dynamic>),
    gender: json['gender'] as String,
    createdAt: json['created_at'] as String,
    updatedAt: json['updated_at'] as String,
    deletedAt: json['deleted_at'] as String,
  );
}

Map<String, dynamic> _$TBBServiceItemToJson(TBBServiceItem instance) =>
    <String, dynamic>{
      'service_id': instance.serviceId,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'service_man_pic': instance.serviceManPic,
      'worker_one': instance.workerOne,
      'worker_two': instance.workerTwo,
      'available_around_with_km': instance.availableAroundWithKm,
      'gender': instance.gender,
      'reach_time': instance.reachTime,
      'distance': instance.distance,
      'sr_service': instance.detail?.toJson(),
      'locations': instance.serviceLocation?.toJson(),
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'deleted_at': instance.deletedAt,
    };
