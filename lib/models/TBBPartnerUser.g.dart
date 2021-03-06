// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'TBBPartnerUser.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TBBPartnerUser _$TBBPartnerUserFromJson(Map<String, dynamic> json) {
  return TBBPartnerUser(
    id: json['id'] as String,
    firstName: json['first_name'] as String,
    lastName: json['last_name'] as String,
    email: json['email'] as String,
    phone: json['phone'] as String,
    enabled: json['enabled'] as bool,
    image: json['image'] as String,
    partnerToken: json['partner_token'] == null
        ? null
        : TBBPartnerToken.fromJson(
            json['partner_token'] as Map<String, dynamic>),
    stores: (json['stores'] as List)
        ?.map((e) =>
            e == null ? null : TBBStore.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$TBBPartnerUserToJson(TBBPartnerUser instance) =>
    <String, dynamic>{
      'id': instance.id,
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'email': instance.email,
      'phone': instance.phone,
      'enabled': instance.enabled,
      'image': instance.image,
      'partner_token': instance.partnerToken?.toJson(),
      'stores': instance.stores?.map((e) => e?.toJson())?.toList(),
    };
