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
    };
