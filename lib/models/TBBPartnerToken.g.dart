// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'TBBPartnerToken.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TBBPartnerToken _$TBBPartnerTokenFromJson(Map<String, dynamic> json) {
  return TBBPartnerToken(
    accessId: json['access_id'] as String,
    tokenId: json['id'] as String,
    ownerId: json['owner_id'] as String,
    storeId: json['store_id'] as String,
  );
}

Map<String, dynamic> _$TBBPartnerTokenToJson(TBBPartnerToken instance) =>
    <String, dynamic>{
      'access_id': instance.accessId,
      'id': instance.tokenId,
      'owner_id': instance.ownerId,
      'store_id': instance.storeId,
    };
