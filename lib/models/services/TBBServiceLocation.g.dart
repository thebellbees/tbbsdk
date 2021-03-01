// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'TBBServiceLocation.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TBBServiceLocation _$TBBServiceLocationFromJson(Map<String, dynamic> json) {
  return TBBServiceLocation(
    longitude: json['longitude'] as num,
    latitude: json['latitude'] as num,
    availableAroundWithKm: json['available_around_with_km'] as String,
  );
}

Map<String, dynamic> _$TBBServiceLocationToJson(TBBServiceLocation instance) =>
    <String, dynamic>{
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'available_around_with_km': instance.availableAroundWithKm,
    };
