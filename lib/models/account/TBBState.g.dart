// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'TBBState.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TBBState _$TBBStateFromJson(Map<String, dynamic> json) {
  return TBBState(
    stateKey: json['state_key'] as String,
    country: json['country'] == null
        ? null
        : TBBCountry.fromJson(json['country'] as Map<String, dynamic>),
    stateIso: json['state_iso'] as String,
    countryIso: json['country_iso'] as String,
    name: json['name'] as String,
    createdAt: json['created_at'] as String,
    updatedAt: json['updated_at'] as String,
  )..cities = (json['country_state_cities'] as List)
      ?.map(
          (e) => e == null ? null : TBBCity.fromJson(e as Map<String, dynamic>))
      ?.toList();
}

Map<String, dynamic> _$TBBStateToJson(TBBState instance) => <String, dynamic>{
      'state_key': instance.stateKey,
      'state_iso': instance.stateIso,
      'country_iso': instance.countryIso,
      'name': instance.name,
      'country_state_cities':
          instance.cities?.map((e) => e?.toJson())?.toList(),
      'country': instance.country?.toJson(),
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
    };
