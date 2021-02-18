import 'package:json_annotation/json_annotation.dart';
import 'package:tbbsdk/models/TBBCity.dart';
import 'package:tbbsdk/models/TBBCountry.dart';

/// This allows the `User` class to access private members in
/// the generated file. The value for this is *.g.dart, where
/// the star denotes the source file name.
part 'TBBState.g.dart';

/// An annotation for the code generator to know that this class needs the
/// JSON serialization logic to be generated.
@JsonSerializable(
    fieldRename: FieldRename.snake, nullable: true, explicitToJson: true)
class TBBState {
  String stateKey;
  String stateIso;
  String countryIso;
  String name;
  @JsonKey(name: "country_state_cities")
  List<TBBCity> cities;
  TBBCountry country;
  String createdAt;
  String updatedAt;

  TBBState({
    this.stateKey,
    this.country,
    this.stateIso,
    this.countryIso,
    this.name,
    this.createdAt,
    this.updatedAt,
  });

  /// A necessary factory constructor for creating a new User instance
  /// from a map. Pass the map to the generated `_$UserFromJson()` constructor.
  /// The constructor is named after the source class, in this case, User.
  factory TBBState.fromJson(Map<String, dynamic> json) {
    json['name'] = json['name'].toString();
    json['state_iso'] = json['state_iso'].toString();
    json['state_key'] = json['state_key'].toString();
    json['country_iso'] = json['country_iso'].toString();
    json['updated_at'] = json['updated_at'].toString();
    json['created_at'] = json['created_at'].toString();
    return _$TBBStateFromJson(json);
  }

  static List<TBBState> listFromJson(List<dynamic> listJson) {
    Iterable l = listJson;
    List<TBBState> items =
        List<TBBState>.from(l.map((model) => TBBState.fromJson(model)));
    return items;
  }

  /// `toJson` is the convention for a class to declare support for serialization
  /// to JSON. The implementation simply calls the private, generated
  /// helper method `_$UserToJson`.
  Map<String, dynamic> toJson() => _$TBBStateToJson(this);

  @override
  toString() => this.toJson().toString();
}
