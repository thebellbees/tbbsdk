// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'TBBServiceOrderReview.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TBBServiceOrderReview _$TBBServiceOrderReviewFromJson(
    Map<String, dynamic> json) {
  return TBBServiceOrderReview(
    id: json['id'] as String,
    orderId: json['order_id'] as String,
    rate: json['rate'] as String,
    review: json['review'] as String,
    createdAt: json['created_at'] as String,
    updatedAt: json['updated_at'] as String,
    deletedAt: json['deleted_at'] as String,
  );
}

Map<String, dynamic> _$TBBServiceOrderReviewToJson(
        TBBServiceOrderReview instance) =>
    <String, dynamic>{
      'id': instance.id,
      'order_id': instance.orderId,
      'rate': instance.rate,
      'review': instance.review,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'deleted_at': instance.deletedAt,
    };
