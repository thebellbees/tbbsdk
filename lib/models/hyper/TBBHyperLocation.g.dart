// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'TBBHyperLocation.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TBBHyperLocation _$TBBHyperLocationFromJson(Map<String, dynamic> json) {
  return TBBHyperLocation(
    longitude: json['longitude'] as num,
    latitude: json['latitude'] as num,
    availableAroundWithKm: json['available_around_with_km'] as String,
  );
}

Map<String, dynamic> _$TBBHyperLocationToJson(TBBHyperLocation instance) =>
    <String, dynamic>{
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'available_around_with_km': instance.availableAroundWithKm,
    };
