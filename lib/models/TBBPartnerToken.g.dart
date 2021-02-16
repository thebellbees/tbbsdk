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
  )..tbbStoreSubscription = json['tbb_store_subscription'] == null
      ? null
      : TBBStoreSubscription.fromJson(
          json['tbb_store_subscription'] as Map<String, dynamic>);
}

Map<String, dynamic> _$TBBPartnerTokenToJson(TBBPartnerToken instance) =>
    <String, dynamic>{
      'access_id': instance.accessId,
      'id': instance.tokenId,
      'owner_id': instance.ownerId,
      'store_id': instance.storeId,
      'tbb_store_subscription': instance.tbbStoreSubscription?.toJson(),
    };
