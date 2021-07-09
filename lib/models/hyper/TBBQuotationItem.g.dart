// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'TBBQuotationItem.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TBBQuotationItem _$TBBQuotationItemFromJson(Map<String, dynamic> json) {
  return TBBQuotationItem(
    id: json['id'] as String,
    name: json['name'] as String,
    salesPrice: json['sales_price'] as String,
    mrpPrice: json['mrp_price'] as String,
    specialPrice: json['special_price'] as String,
    note: json['note'] as String,
  );
}

Map<String, dynamic> _$TBBQuotationItemToJson(TBBQuotationItem instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'sales_price': instance.salesPrice,
      'mrp_price': instance.mrpPrice,
      'special_price': instance.specialPrice,
      'note': instance.note,
    };
