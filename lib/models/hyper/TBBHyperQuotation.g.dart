// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'TBBHyperQuotation.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TBBHyperQuotation _$TBBHyperQuotationFromJson(Map<String, dynamic> json) {
  return TBBHyperQuotation(
    id: json['id'] as String,
    note: json['note'] as String,
    addressLineOne: json['address_line_one'] as String,
    addressLineTwo: json['address_line_two'] as String,
    pincode: json['pincode'] as String,
    state: json['state'] as String,
    city: json['city'] as String,
    hyperQuotationItem: (json['hyper_quotation_item'] as List)
        ?.map((e) => e == null
            ? null
            : TBBQuotationItem.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$TBBHyperQuotationToJson(TBBHyperQuotation instance) =>
    <String, dynamic>{
      'id': instance.id,
      'note': instance.note,
      'address_line_one': instance.addressLineOne,
      'address_line_two': instance.addressLineTwo,
      'state': instance.state,
      'city': instance.city,
      'hyper_quotation_item':
          instance.hyperQuotationItem?.map((e) => e?.toJson())?.toList(),
      'pincode': instance.pincode,
    };
