import 'package:json_annotation/json_annotation.dart';
import 'package:tbbsdk/models/TBBPartnerToken.dart';
import 'package:tbbsdk/models/TBBStore.dart';

/// This allows the `User` class to access private members in
/// the generated file. The value for this is *.g.dart, where
/// the star denotes the source file name.
part 'TBBPartnerUser.g.dart';

/// An annotation for the code generator to know that this class needs the
/// JSON serialization logic to be generated.
@JsonSerializable(
    fieldRename: FieldRename.snake, nullable: true, explicitToJson: true)
class TBBPartnerUser {
  String id;
  String firstName;
  String lastName;
  String email;
  String phone;
  bool enabled;
  String image;
  TBBPartnerToken partnerToken;
  List<TBBStore> stores;

  TBBPartnerUser(
      {this.id,
      this.firstName,
      this.lastName,
      this.email,
      this.phone,
      this.enabled,
      this.image,
      this.partnerToken,
      this.stores});

  /// A necessary factory constructor for creating a new User instance
  /// from a map. Pass the map to the generated `_$UserFromJson()` constructor.
  /// The constructor is named after the source class, in this case, User.
  factory TBBPartnerUser.fromJson(Map<String, dynamic> json) {
    json['id'] = json['id'].toString();
    json['phone'] = json['phone'].toString();

    return _$TBBPartnerUserFromJson(json);
  }

  /// `toJson` is the convention for a class to declare support for serialization
  /// to JSON. The implementation simply calls the private, generated
  /// helper method `_$UserToJson`.
  Map<String, dynamic> toJson() => _$TBBPartnerUserToJson(this);

  @override
  toString() => this.toJson().toString();

  String get fullName =>
      "${this.firstName.toString()} ${this.lastName.toString()}";

  bool get isEmpty {
    List values = [id, firstName, lastName, email, phone];
    values.removeWhere((val) {
      return val == null || val == '';
    });
    return values.isEmpty;
  }
}
