import 'package:json_annotation/json_annotation.dart';
import 'package:tbbsdk/models/account/TBBState.dart';

/// This allows the `User` class to access private members in
/// the generated file. The value for this is *.g.dart, where
/// the star denotes the source file name.
part 'TBBCity.g.dart';

/// An annotation for the code generator to know that this class needs the
/// JSON serialization logic to be generated.
@JsonSerializable(
    fieldRename: FieldRename.snake, nullable: true, explicitToJson: true)
class TBBCity {
  String id;
  String pincode;
  String stateKey;
  String city;
  @JsonKey(name: "country_state")
  TBBState state;
  String createdAt;
  String updatedAt;

  TBBCity({
    this.stateKey,
    this.state,
    this.pincode,
    this.id,
    this.city,
    this.createdAt,
    this.updatedAt,
  });

  /// A necessary factory constructor for creating a new User instance
  /// from a map. Pass the map to the generated `_$UserFromJson()` constructor.
  /// The constructor is named after the source class, in this case, User.
  factory TBBCity.fromJson(Map<String, dynamic> json) {
    json['id'] = json['id'].toString();
    json['pincode'] = json['pincode'].toString();
    json['state_key'] = json['state_key'].toString();
    json['city'] = json['city'].toString();
    json['created_at'] = json['created_at'].toString();
    json['updated_at'] = json['updated_at'].toString();
    return _$TBBCityFromJson(json);
  }

  static List<TBBCity> listFromJson(List<dynamic> listJson) {
    Iterable l = listJson;
    List<TBBCity> items =
        List<TBBCity>.from(l.map((model) => TBBCity.fromJson(model)));
    return items;
  }

  /// `toJson` is the convention for a class to declare support for serialization
  /// to JSON. The implementation simply calls the private, generated
  /// helper method `_$UserToJson`.
  Map<String, dynamic> toJson() => _$TBBCityToJson(this);

  @override
  toString() => this.toJson().toString();
}
