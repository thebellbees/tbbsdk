import 'package:json_annotation/json_annotation.dart';

/// This allows the `User` class to access private members in
/// the generated file. The value for this is *.g.dart, where
/// the star denotes the source file name.
part 'TBBHyperLocation.g.dart';

/// An annotation for the code generator to know that this class needs the
/// JSON serialization logic to be generated.
@JsonSerializable(
    fieldRename: FieldRename.snake, nullable: true, explicitToJson: true)
class TBBHyperLocation {
  num latitude;
  num longitude;
  String availableAroundWithKm;

  TBBHyperLocation({this.longitude, this.latitude, this.availableAroundWithKm});

  /// A necessary factory constructor for creating a new User instance
  /// from a map. Pass the map to the generated `_$UserFromJson()` constructor.
  /// The constructor is named after the source class, in this case, User.
  factory TBBHyperLocation.fromJson(Map<String, dynamic> json) {
    json['latitude'] = json['latitude'].toString();
    json['longitude'] = json['longitude'].toString();
    json['available_around_with_km'] =
        json['available_around_with_km'].toString();

    return _$TBBHyperLocationFromJson(json);
  }

  static List<TBBHyperLocation> listFromJson(List<dynamic> listJson) {
    Iterable l = listJson;
    List<TBBHyperLocation> items = List<TBBHyperLocation>.from(
        l.map((model) => TBBHyperLocation.fromJson(model)));
    return items;
  }

  /// `toJson` is the convention for a class to declare support for serialization
  /// to JSON. The implementation simply calls the private, generated
  /// helper method `_$UserToJson`.
  Map<String, dynamic> toJson() => _$TBBHyperLocationToJson(this);

  @override
  toString() => this.toJson().toString();
}
