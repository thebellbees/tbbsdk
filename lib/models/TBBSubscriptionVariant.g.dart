// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'TBBSubscriptionVariant.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TBBSubscriptionVariant _$TBBSubscriptionVariantFromJson(
    Map<String, dynamic> json) {
  return TBBSubscriptionVariant(
    planId: json['plan_id'] as String,
    variantId: json['variant_id'] as String,
    duration: (json['duration'] as num)?.toDouble(),
    createdAt: json['created_at'] as String,
    updatedAt: json['updated_at'] as String,
    deletedAt: json['deleted_at'] as String,
  );
}

Map<String, dynamic> _$TBBSubscriptionVariantToJson(
        TBBSubscriptionVariant instance) =>
    <String, dynamic>{
      'plan_id': instance.planId,
      'variant_id': instance.variantId,
      'duration': instance.duration,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'deleted_at': instance.deletedAt,
    };
