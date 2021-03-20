import 'package:json_annotation/json_annotation.dart';

/// This allows the `User` class to access private members in
/// the generated file. The value for this is *.g.dart, where
/// the star denotes the source file name.
part 'TBBUser.g.dart';

/// An annotation for the code generator to know that this class needs the
/// JSON serialization logic to be generated.
@JsonSerializable(
    fieldRename: FieldRename.snake, nullable: true, explicitToJson: true)
class TBBUser {
  String id;
  String firstName;
  String lastName;
  String email;
  String phone;
  bool enabled;
  String image;
  List userMeta;

  TBBUser(
      {this.id,
      this.firstName,
      this.lastName,
      this.email,
      this.phone,
      this.enabled,
      this.image,
      this.userMeta});

  /// A necessary factory constructor for creating a new User instance
  /// from a map. Pass the map to the generated `_$UserFromJson()` constructor.
  /// The constructor is named after the source class, in this case, User.
  factory TBBUser.fromJson(Map<String, dynamic> json) {
    json['id'] = json['id'].toString();
    json['phone'] = json['phone'].toString();
    return _$TBBUserFromJson(json);
  }

  static List<TBBUser> listFromJson(List<dynamic> listJson) {
    Iterable l = listJson;
    List<TBBUser> items =
        List<TBBUser>.from(l.map((model) => TBBUser.fromJson(model)));
    return items;
  }

  /// `toJson` is the convention for a class to declare support for serialization
  /// to JSON. The implementation simply calls the private, generated
  /// helper method `_$UserToJson`.
  Map<String, dynamic> toJson() => _$TBBUserToJson(this);

  @override
  toString() => this.toJson().toString();

  bool get isEmpty {
    List values = [id, firstName, lastName, email, phone];
    values.removeWhere((val) {
      return val == null || val == '';
    });
    return values.isEmpty;
  }
}
