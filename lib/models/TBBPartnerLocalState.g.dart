// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'TBBPartnerLocalState.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TBBPartnerLocalState _$TBBPartnerLocalStateFromJson(Map<String, dynamic> json) {
  return TBBPartnerLocalState(
    accessId: json['access_id'] as String,
    refreshId: json['refresh_id'] as String,
    user: json['user'] == null
        ? null
        : TBBPartnerUser.fromJson(json['user'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$TBBPartnerLocalStateToJson(
        TBBPartnerLocalState instance) =>
    <String, dynamic>{
      'access_id': instance.accessId,
      'refresh_id': instance.refreshId,
      'user': instance.user?.toJson(),
    };
