import 'package:tbbsdk/models/TBBCustomer.dart';

import 'package:json_annotation/json_annotation.dart';
import 'package:tbbsdk/models/TBBOptionalDocument.dart';
import 'package:tbbsdk/models/services/TBBServiceDetail.dart';
import 'package:tbbsdk/models/services/TBBServiceItem.dart';
import 'package:tbbsdk/models/services/TBBServiceTerm.dart';
import 'package:tbbsdk/utilities/PropValidator.dart';

/// This allows the `User` class to access private members in
/// the generated file. The value for this is *.g.dart, where
/// the star denotes the source file name.
part 'TBBStore.g.dart';

extension StringExtension on String {
  String capitalize() {
    return "${this[0].toUpperCase()}${this.substring(1)}";
  }
}

/// An annotation for the code generator to know that this class needs the
/// JSON serialization logic to be generated.
@JsonSerializable(
    fieldRename: FieldRename.snake, nullable: true, explicitToJson: true)
class TBBStore {
  String storeId;
  String ownerId;
  String storeType;
  String company;
  String phone;
  String email;
  @JsonKey(name: "sr_term")
  TBBServiceTerm subCategory;
  String state;
  String pincode;
  String country;
  String certificate;
  String aadhar;
  String gst;
  String udyogAadhar;
  String address;
  bool enabled;
  @JsonKey(name: "sr_service")
  TBBServiceDetail serviceDetail;
  TBBCustomer customer;
  String createdAt;
  String updatedAt;
  String deletedAt;
  String city;
  String proprietorName;
  TBBOptionalDocument optionalDocuments;

  TBBStore({
    this.storeId,
    this.ownerId,
    this.storeType,
    this.company,
    this.phone,
    this.email,
    this.address,
    this.enabled,
    this.customer,
    this.createdAt,
    this.updatedAt,
    this.deletedAt,
    this.subCategory,
    this.certificate,
    this.aadhar,
    this.serviceDetail,
    this.gst,
    this.udyogAadhar,
    this.country,
    this.pincode,
    this.state,
    this.city,
    this.proprietorName,
    this.optionalDocuments,
  });

  /// A necessary factory constructor for creating a new User instance
  /// from a map. Pass the map to the generated `_$UserFromJson()` constructor.
  /// The constructor is named after the source class, in this case, User.
  factory TBBStore.fromJson(Map<String, dynamic> json) {
    json['phone'] = json['phone'].toString();
    json['store_id'] = json['store_id'].toString();
    json['owner_id'] = json['owner_id'].toString();
    json['proprietor_name'] = json['proprietor_name'].toString();
    json['pincode'] = json['pincode'].toString();
    json['gst'] = json['gst'].toString();
    json['udyog_aadhar'] = json['udyog_aadhar'].toString();

    return _$TBBStoreFromJson(json);
  }
  static List<TBBStore> listFromJson(List<Map<String,dynamic>>  listJson) {
    Iterable l = listJson;

    List<TBBStore> items =
        List<TBBStore>.from(l.map((model) => TBBStore.fromJson(model)));

    return items;
  }

  Future<TBBStore> validateProps(
      {List<String> excludeNull,
      List<String> excludeValidators,
      Map<String, PropValidation> validators,
      bool checkNull = true,
      bool validate = true}) async {
    List<String> _excludeNull = [
      "store_id",
      "owner_id",
      "created_at",
      "updated_at",
      "deleted_at",
      "gst",
      "udyog_aadhar"
    ];

    Map<String, PropValidation> _excludeValidators = {
      "gst": GSTValidation(),
      "aadhar": AadharValidation(),
      "udyog_aadhar": UdyogAadharValidation()
    };

    if (excludeNull != null) {
      _excludeNull.addAll(excludeNull);
    }

    if (validators != null) {
      _excludeValidators.addAll(validators);
    }

    return TBBStore.fromJson(await validatePropsFunc(this.toJson(),
        excludeNull: _excludeNull,
        excludeValidator: excludeValidators,
        validators: _excludeValidators,
        validate: validate,
        checkNull: checkNull));
  }

  /// `toJson` is the convention for a class to declare support for serialization
  /// to JSON. The implementation simply calls the private, generated
  /// helper method `_$UserToJson`.
  Map<String, dynamic> toJson() => _$TBBStoreToJson(this);

  @override
  toString() => this.toJson().toString();
}
