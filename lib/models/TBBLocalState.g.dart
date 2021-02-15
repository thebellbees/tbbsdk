// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'TBBLocalState.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TBBLocalState _$TBBLocalStateFromJson(Map<String, dynamic> json) {
  return TBBLocalState(
    accessId: json['access_id'] as String,
    refreshId: json['refresh_id'] as String,
    user: json['user'] == null
        ? null
        : TBBUser.fromJson(json['user'] as Map<String, dynamic>),
    serviceTaxonomy: json['service_taxonomy'] == null
        ? null
        : TBBServiceTaxonomy.fromJson(
            json['service_taxonomy'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$TBBLocalStateToJson(TBBLocalState instance) =>
    <String, dynamic>{
      'access_id': instance.accessId,
      'refresh_id': instance.refreshId,
      'user': instance.user?.toJson(),
      'service_taxonomy': instance.serviceTaxonomy?.toJson(),
    };
