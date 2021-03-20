import 'package:json_annotation/json_annotation.dart';

/// This allows the `User` class to access private members in
/// the generated file. The value for this is *.g.dart, where
/// the star denotes the source file name.
part 'TBBServiceLocation.g.dart';

/// An annotation for the code generator to know that this class needs the
/// JSON serialization logic to be generated.
@JsonSerializable(
    fieldRename: FieldRename.snake, nullable: true, explicitToJson: true)
class TBBServiceLocation {
  num latitude;
  num longitude;
  String availableAroundWithKm;

  TBBServiceLocation({this.longitude, this.latitude,this.availableAroundWithKm});

  /// A necessary factory constructor for creating a new User instance
  /// from a map. Pass the map to the generated `_$UserFromJson()` constructor.
  /// The constructor is named after the source class, in this case, User.
  factory TBBServiceLocation.fromJson(Map<String, dynamic> json) {
    json['latitude'] = json['latitude'].toString();
    json['longitude'] = json['longitude'].toString();
    json['available_around_with_km'] =
        json['available_around_with_km'].toString();

    return _$TBBServiceLocationFromJson(json);
  }

  static List<TBBServiceLocation> listFromJson(List<Map<String,dynamic>>  listJson) {
    Iterable l = listJson;
    List<TBBServiceLocation> items = List<TBBServiceLocation>.from(
        l.map((model) => TBBServiceLocation.fromJson(model)));
    return items;
  }

  /// `toJson` is the convention for a class to declare support for serialization
  /// to JSON. The implementation simply calls the private, generated
  /// helper method `_$UserToJson`.
  Map<String, dynamic> toJson() => _$TBBServiceLocationToJson(this);

  @override
  toString() => this.toJson().toString();
}
