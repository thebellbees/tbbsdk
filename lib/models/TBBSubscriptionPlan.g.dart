// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'TBBSubscriptionPlan.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TBBSubscriptionPlan _$TBBSubscriptionPlanFromJson(Map<String, dynamic> json) {
  return TBBSubscriptionPlan(
    planId: json['plan_id'] as String,
    name: json['name'] as String,
    description: json['description'] as String,
    type: json['type'] as String,
    maxDayDuration: json['max_day_duration'] as int,
    dayPrice: (json['day_price'] as num)?.toDouble(),
    subscriptionVariants: (json['subscription_variants'] as List)
        ?.map((e) => e == null
            ? null
            : TBBSubscriptionVariant.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    createdAt: json['created_at'] as String,
    updatedAt: json['updated_at'] as String,
    deletedAt: json['deleted_at'] as String,
  );
}

Map<String, dynamic> _$TBBSubscriptionPlanToJson(
        TBBSubscriptionPlan instance) =>
    <String, dynamic>{
      'plan_id': instance.planId,
      'name': instance.name,
      'description': instance.description,
      'type': instance.type,
      'max_day_duration': instance.maxDayDuration,
      'day_price': instance.dayPrice,
      'subscription_variants':
          instance.subscriptionVariants?.map((e) => e?.toJson())?.toList(),
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'deleted_at': instance.deletedAt,
    };
