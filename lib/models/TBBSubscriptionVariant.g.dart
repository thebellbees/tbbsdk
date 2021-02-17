// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'TBBSubscriptionVariant.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TBBSubscriptionVariant _$TBBSubscriptionVariantFromJson(
    Map<String, dynamic> json) {
  return TBBSubscriptionVariant(
    planId: json['plan_id'] as String,
    variantId: json['id'] as String,
    duration: (json['duration'] as num)?.toDouble(),
  );
}

Map<String, dynamic> _$TBBSubscriptionVariantToJson(
        TBBSubscriptionVariant instance) =>
    <String, dynamic>{
      'plan_id': instance.planId,
      'id': instance.variantId,
      'duration': instance.duration,
    };
