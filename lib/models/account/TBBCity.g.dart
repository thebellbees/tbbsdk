// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'TBBCity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TBBCity _$TBBCityFromJson(Map<String, dynamic> json) {
  return TBBCity(
    stateKey: json['state_key'] as String,
    state: json['country_state'] == null
        ? null
        : TBBState.fromJson(json['country_state'] as Map<String, dynamic>),
    pincode: json['pincode'] as String,
    id: json['id'] as String,
    city: json['city'] as String,
    createdAt: json['created_at'] as String,
    updatedAt: json['updated_at'] as String,
  );
}

Map<String, dynamic> _$TBBCityToJson(TBBCity instance) => <String, dynamic>{
      'id': instance.id,
      'pincode': instance.pincode,
      'state_key': instance.stateKey,
      'city': instance.city,
      'country_state': instance.state?.toJson(),
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
    };
