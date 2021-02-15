import 'package:tbbsdk/models/TBBCustomer.dart';

import 'package:json_annotation/json_annotation.dart';

/// This allows the `User` class to access private members in
/// the generated file. The value for this is *.g.dart, where
/// the star denotes the source file name.
part 'TBBStore.g.dart';

/// An annotation for the code generator to know that this class needs the
/// JSON serialization logic to be generated.
@JsonSerializable(
    fieldRename: FieldRename.snake, nullable: true, explicitToJson: true)
class TBBStore {
  String storeId;
  String ownerId;
  String storeType;
  String name;
  String company;
  String phone;
  String email;
  String address;
  bool enabled;
  TBBCustomer customer;
  String createdAt;
  String updatedAt;
  String deletedAt;

  TBBStore({
    this.storeId,
    this.ownerId,
    this.storeType,
    this.name,
    this.company,
    this.phone,
    this.email,
    this.address,
    this.enabled,
    this.customer,
    this.createdAt,
    this.updatedAt,
    this.deletedAt,
  });

  /// A necessary factory constructor for creating a new User instance
  /// from a map. Pass the map to the generated `_$UserFromJson()` constructor.
  /// The constructor is named after the source class, in this case, User.
  factory TBBStore.fromJson(Map<String, dynamic> json) {
    json['service_id'] = json['service_id'].toString();
    json['available_around_with_km'] =
        json['available_around_with_km'].toString();
    json['reach_time'] = json['reach_time'].toString();
    json['distance'] = json['distance'].toString();
    return _$TBBStoreFromJson(json);
  }

  static List<TBBStore> listFromJson(List<dynamic> listJson) {
    Iterable l = listJson;

    List<TBBStore> items =
        List<TBBStore>.from(l.map((model) => TBBStore.fromJson(model)));

    return items;
  }

  /// `toJson` is the convention for a class to declare support for serialization
  /// to JSON. The implementation simply calls the private, generated
  /// helper method `_$UserToJson`.
  Map<String, dynamic> toJson() => _$TBBStoreToJson(this);

  @override
  toString() => this.toJson().toString();
}
