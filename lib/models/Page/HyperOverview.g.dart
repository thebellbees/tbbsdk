// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'HyperOverview.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HyperOverview _$HyperOverviewFromJson(Map<String, dynamic> json) {
  return HyperOverview(
    newQuoatesCount: json['new_quoates_count'] as num,
    totalOrdersCount: json['total_orders_count'] as num,
    completedOrdersCount: json['completed_orders_count'] as num,
  );
}

Map<String, dynamic> _$HyperOverviewToJson(HyperOverview instance) =>
    <String, dynamic>{
      'new_quoates_count': instance.newQuoatesCount,
      'total_orders_count': instance.totalOrdersCount,
      'completed_orders_count': instance.completedOrdersCount,
    };
