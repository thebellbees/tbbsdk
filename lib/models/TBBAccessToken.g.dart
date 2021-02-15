// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'TBBAccessToken.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TBBAccessToken _$TBBAccessTokenFromJson(Map<String, dynamic> json) {
  return TBBAccessToken(
    accessId: json['access_id'] as String,
    expires: json['expires'] as String,
    authorizeType: json['authorize_type'] as String,
    refreshId: json['refresh_id'] as String,
    userId: json['user_id'] as String,
    user: json['user'] == null
        ? null
        : TBBUser.fromJson(json['user'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$TBBAccessTokenToJson(TBBAccessToken instance) =>
    <String, dynamic>{
      'access_id': instance.accessId,
      'expires': instance.expires,
      'authorize_type': instance.authorizeType,
      'refresh_id': instance.refreshId,
      'user_id': instance.userId,
      'user': instance.user?.toJson(),
    };
