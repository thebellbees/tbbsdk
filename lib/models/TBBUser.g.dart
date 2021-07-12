// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'TBBUser.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TBBUser _$TBBUserFromJson(Map<String, dynamic> json) {
  return TBBUser(
    id: json['id'] as String,
    firstName: json['first_name'] as String,
    lastName: json['last_name'] as String,
    email: json['email'] as String,
    address: json['address'] == null
        ? null
        : TBBAddress.fromJson(json['address'] as Map<String, dynamic>),
    phone: json['phone'] as String,
    enabled: json['enabled'] as bool,
    image: json['image'] as String,
    userMeta: json['user_meta'] as List,
  );
}

Map<String, dynamic> _$TBBUserToJson(TBBUser instance) => <String, dynamic>{
      'id': instance.id,
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'email': instance.email,
      'phone': instance.phone,
      'enabled': instance.enabled,
      'image': instance.image,
      'address': instance.address?.toJson(),
      'user_meta': instance.userMeta,
    };
