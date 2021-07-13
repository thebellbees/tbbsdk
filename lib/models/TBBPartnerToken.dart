import 'package:json_annotation/json_annotation.dart';
import 'package:tbbsdk/models/TBBStore.dart';
import 'package:tbbsdk/models/TBBStoreSubscription.dart';

/// This allows the `User` class to access private members in
/// the generated file. The value for this is *.g.dart, where
/// the star denotes the source file name.
part 'TBBPartnerToken.g.dart';

/// An annotation for the code generator to know that this class needs the
/// JSON serialization logic to be generated.
@JsonSerializable(
    fieldRename: FieldRename.snake, nullable: true, explicitToJson: true)
class TBBPartnerToken {
  String accessId;
  @JsonKey(name: "id")
  String tokenId;
  String ownerId;
  String storeId;
  TBBStore store;
  TBBStoreSubscription tbbStoreSubscription;

  TBBPartnerToken(
      {this.accessId, this.tokenId, this.ownerId, this.storeId, this.store});

  /// A necessary factory constructor for creating a new User instance
  /// from a map. Pass the map to the generated `_$UserFromJson()` constructor.
  /// The constructor is named after the source class, in this case, User.
  factory TBBPartnerToken.fromJson(Map<String, dynamic> json) {
    json['id'] = json['id'].toString();
    json['access_id'] = json['access_id'].toString();
    json['owner_id'] = json['owner_id'].toString();
    json['store_id'] = json['store_id'].toString();
    return _$TBBPartnerTokenFromJson(json);
  }

  /// `toJson` is the convention for a class to declare support for serialization
  /// to JSON. The implementation simply calls the private, generated
  /// helper method `_$UserToJson`.
  Map<String, dynamic> toJson() => _$TBBPartnerTokenToJson(this);

  @override
  toString() => this.toJson().toString();
}
