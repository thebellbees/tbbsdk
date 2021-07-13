import 'package:json_annotation/json_annotation.dart';
import 'package:tbbsdk/models/TBBUser.dart';
import 'package:tbbsdk/tbbsdk.dart';

/// This allows the `User` class to access private members in
/// the generated file. The value for this is *.g.dart, where
/// the star denotes the source file name.
part 'TBBAccessToken.g.dart';

/// An annotation for the code generator to know that this class needs the
/// JSON serialization logic to be generated.
@JsonSerializable(
    fieldRename: FieldRename.snake, nullable: true, explicitToJson: true)
class TBBAccessToken {
  String accessId;
  String expires;

  String authorizeType;
  String refreshId;
  String userId;
  TBBUser user;

  TBBAccessToken({
    this.accessId,
    this.expires,
    this.authorizeType,
    this.refreshId,
    this.userId,
    this.user,
  });

  /// A necessary factory constructor for creating a new User instance
  /// from a map. Pass the map to the generated `_$UserFromJson()` constructor.
  /// The constructor is named after the source class, in this case, User.
  factory TBBAccessToken.fromJson(Map<String, dynamic> json) {
    json['user_id'] = json['user_id'].toString();
    json['expires'] = json['expires'].toString();
    json['access_id'] = json['access_id'].toString();
    json['refresh_id'] = json['refresh_id'].toString();
    return _$TBBAccessTokenFromJson(json);
  }

  /// `toJson` is the convention for a class to declare support for serialization
  /// to JSON. The implementation simply calls the private, generated
  /// helper method `_$UserToJson`.
  Map<String, dynamic> toJson() => _$TBBAccessTokenToJson(this);

  @override
  toString() => this.toJson().toString();
}
