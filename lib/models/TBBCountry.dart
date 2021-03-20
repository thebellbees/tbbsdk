import 'package:json_annotation/json_annotation.dart';
import 'package:tbbsdk/models/TBBState.dart';

/// This allows the `User` class to access private members in
/// the generated file. The value for this is *.g.dart, where
/// the star denotes the source file name.
part 'TBBCountry.g.dart';

/// An annotation for the code generator to know that this class needs the
/// JSON serialization logic to be generated.
@JsonSerializable(
    fieldRename: FieldRename.snake, nullable: true, explicitToJson: true)
class TBBCountry {
  String continent;
  String timezone;
  String countryIso;
  String name;
  String countryCode;
  String currency;
  String currencyIso;
  String currencySymbol;
  @JsonKey(name: "country_states")
  List<TBBState> states;
  String createdAt;
  String updatedAt;

  TBBCountry({
    this.continent,
    this.timezone,
    this.countryIso,
    this.countryCode,
    this.name,
    this.states,
    this.createdAt,
    this.currency,
    this.currencyIso,
    this.currencySymbol,
    this.updatedAt,
  });

  /// A necessary factory constructor for creating a new User instance
  /// from a map. Pass the map to the generated `_$UserFromJson()` constructor.
  /// The constructor is named after the source class, in this case, User.
  factory TBBCountry.fromJson(Map<String, dynamic> json) {
    json['name'] = json['name'].toString();
    json['continent'] = json['continent'].toString();
    json['timezone'] = json['timezone'].toString();
    json['country_iso'] = json['country_iso'].toString();
    json['currency_iso'] = json['currency_iso'].toString();
    json['currency'] = json['currency'].toString();
    json['currency_symbol'] = json['currency_symbol'].toString();
    json['country_code'] = json['country_code'].toString();
    json['updated_at'] = json['updated_at'].toString();
    json['created_at'] = json['created_at'].toString();
    return _$TBBCountryFromJson(json);
  }

  static List<TBBCountry> listFromJson(List<Map<String,dynamic>>  listJson) {
    Iterable l = listJson;
    List<TBBCountry> items =
        List<TBBCountry>.from(l.map((model) => TBBCountry.fromJson(model)));
    return items;
  }

  /// `toJson` is the convention for a class to declare support for serialization
  /// to JSON. The implementation simply calls the private, generated
  /// helper method `_$UserToJson`.
  Map<String, dynamic> toJson() => _$TBBCountryToJson(this);

  @override
  toString() => this.toJson().toString();
}
