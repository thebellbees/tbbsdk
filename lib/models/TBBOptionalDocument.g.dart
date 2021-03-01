// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'TBBOptionalDocument.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TBBOptionalDocument _$TBBOptionalDocumentFromJson(Map<String, dynamic> json) {
  return TBBOptionalDocument(
    aadharDoc: json['aadhar_doc'] as String,
    udyogAadharDoc: json['udyog_aadhar_doc'] as String,
    gstDoc: json['gst_doc'] as String,
    certificateDoc: json['certificate_doc'] as String,
  );
}

Map<String, dynamic> _$TBBOptionalDocumentToJson(
        TBBOptionalDocument instance) =>
    <String, dynamic>{
      'aadhar_doc': instance.aadharDoc,
      'gst_doc': instance.gstDoc,
      'udyog_aadhar_doc': instance.udyogAadharDoc,
      'certificate_doc': instance.certificateDoc,
    };
