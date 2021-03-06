// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'TBBServiceItem.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TBBServiceItem _$TBBServiceItemFromJson(Map<String, dynamic> json) {
  return TBBServiceItem(
    serviceId: json['id'] as String,
    latitude: json['latitude'] as String,
    longitude: json['longitude'] as String,
    enabled: json['enabled'] as bool,
    responseMinute: json['response_minute'] as String,
    description: json['description'] as String,
    availableAroundWithKm: json['available_around_with_km'] as String,
    reachTime: json['reach_time'] as String,
    distance: json['distance'] as String,
    detail: json['sr_service'] == null
        ? null
        : TBBServiceDetail.fromJson(json['sr_service'] as Map<String, dynamic>),
    serviceLocations: (json['locations'] as List)
        ?.map((e) => e == null
            ? null
            : TBBServiceLocation.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    tags: (json['tags'] as List)?.map((e) => e as String)?.toList(),
    createdAt: json['created_at'] as String,
    updatedAt: json['updated_at'] as String,
    deletedAt: json['deleted_at'] as String,
  );
}

Map<String, dynamic> _$TBBServiceItemToJson(TBBServiceItem instance) =>
    <String, dynamic>{
      'id': instance.serviceId,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'available_around_with_km': instance.availableAroundWithKm,
      'response_minute': instance.responseMinute,
      'description': instance.description,
      'reach_time': instance.reachTime,
      'distance': instance.distance,
      'enabled': instance.enabled,
      'sr_service': instance.detail?.toJson(),
      'locations': instance.serviceLocations?.map((e) => e?.toJson())?.toList(),
      'tags': instance.tags,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'deleted_at': instance.deletedAt,
    };
