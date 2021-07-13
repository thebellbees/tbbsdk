// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'TBBHyperSendQuotation.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TBBHyperSendQuotation _$TBBHyperSendQuotationFromJson(
    Map<String, dynamic> json) {
  return TBBHyperSendQuotation(
    id: json['id'] as String,
    items: (json['items'] as List)
        ?.map((e) => e == null
            ? null
            : TBBHyperOrderItem.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    address: json['address'] == null
        ? null
        : TBBAddress.fromJson(json['address'] as Map<String, dynamic>),
    note: json['note'] as String,
  );
}

Map<String, dynamic> _$TBBHyperSendQuotationToJson(
        TBBHyperSendQuotation instance) =>
    <String, dynamic>{
      'id': instance.id,
      'note': instance.note,
      'address': instance.address?.toJson(),
      'items': instance.items?.map((e) => e?.toJson())?.toList(),
    };
