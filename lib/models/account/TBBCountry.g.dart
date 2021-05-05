// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'TBBCountry.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TBBCountry _$TBBCountryFromJson(Map<String, dynamic> json) {
  return TBBCountry(
    continent: json['continent'] as String,
    timezone: json['timezone'] as String,
    countryIso: json['country_iso'] as String,
    countryCode: json['country_code'] as String,
    name: json['name'] as String,
    states: (json['country_states'] as List)
        ?.map((e) =>
            e == null ? null : TBBState.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    createdAt: json['created_at'] as String,
    currency: json['currency'] as String,
    currencyIso: json['currency_iso'] as String,
    currencySymbol: json['currency_symbol'] as String,
    updatedAt: json['updated_at'] as String,
  );
}

Map<String, dynamic> _$TBBCountryToJson(TBBCountry instance) =>
    <String, dynamic>{
      'continent': instance.continent,
      'timezone': instance.timezone,
      'country_iso': instance.countryIso,
      'name': instance.name,
      'country_code': instance.countryCode,
      'currency': instance.currency,
      'currency_iso': instance.currencyIso,
      'currency_symbol': instance.currencySymbol,
      'country_states': instance.states?.map((e) => e?.toJson())?.toList(),
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
    };
