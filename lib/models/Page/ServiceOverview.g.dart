// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ServiceOverview.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ServiceOverview _$ServiceOverviewFromJson(Map<String, dynamic> json) {
  return ServiceOverview(
    newJobsCount: json['new_jobs_count'] as num,
    totalOrdersCount: json['total_orders_count'] as num,
    completedOrdersCount: json['completed_orders_count'] as num,
  );
}

Map<String, dynamic> _$ServiceOverviewToJson(ServiceOverview instance) =>
    <String, dynamic>{
      'new_jobs_count': instance.newJobsCount,
      'total_orders_count': instance.totalOrdersCount,
      'completed_orders_count': instance.completedOrdersCount,
    };
