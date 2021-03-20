import 'package:tbbsdk/models/TBBPartnerUser.dart';
import 'package:tbbsdk/utilities/local_database.dart';
import 'package:json_annotation/json_annotation.dart';

/// This allows the `User` class to access private members in
/// the generated file. The value for this is *.g.dart, where
/// the star denotes the source file name.
part 'TBBPartnerLocalState.g.dart';

/// An annotation for the code generator to know that this class needs the
/// JSON serialization logic to be generated.
@JsonSerializable(
    fieldRename: FieldRename.snake, nullable: true, explicitToJson: true)
class TBBPartnerLocalState {
  String accessId;
  String refreshId;
  TBBPartnerUser user;

  bool get loggedIn => user != null && user.isEmpty == false;

  Future<String> get otpFrom async => await _getProp("otp_from");

  TBBPartnerLocalState({
    this.accessId,
    this.refreshId,
    this.user,
  });

  /// A necessary factory constructor for creating a new User instance
  /// from a map. Pass the map to the generated `_$UserFromJson()` constructor.
  /// The constructor is named after the source class, in this case, User.
  factory TBBPartnerLocalState.fromJson(Map<String, dynamic> json) {
    json['access_id'] = json['access_id'].toString();
    json['refresh_id'] = json['refresh_id'].toString();

    return _$TBBPartnerLocalStateFromJson(json);
  }

  static List<TBBPartnerLocalState> listFromJson(List<Map<String,dynamic>> listJson) {
    Iterable l = listJson;
    List<TBBPartnerLocalState> items = List<TBBPartnerLocalState>.from(
        l.map((model) => TBBPartnerLocalState.fromJson(model)));
    return items;
  }

  /// `toJson` is the convention for a class to declare support for serialization
  /// to JSON. The implementation simply calls the private, generated
  /// helper method `_$UserToJson`.
  Map<String, dynamic> toJson() => _$TBBPartnerLocalStateToJson(this);

  @override
  toString() => this.toJson().toString();

  _getProp(String key) async {
    TBBLocalDatabaseService localDatabaseService =
        new TBBLocalDatabaseService();
    return await localDatabaseService.getLocalStateProp(key);
  }
}
