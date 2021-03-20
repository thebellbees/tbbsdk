import 'package:tbbsdk/models/services/TBBServiceTaxonomy.dart';
import 'package:tbbsdk/models/TBBUser.dart';
import 'package:tbbsdk/utilities/local_database.dart';
import 'package:json_annotation/json_annotation.dart';

/// This allows the `User` class to access private members in
/// the generated file. The value for this is *.g.dart, where
/// the star denotes the source file name.
part 'TBBLocalState.g.dart';

/// An annotation for the code generator to know that this class needs the
/// JSON serialization logic to be generated.
@JsonSerializable(
    fieldRename: FieldRename.snake, nullable: true, explicitToJson: true)
class TBBLocalState {
  String accessId;
  String refreshId;
  TBBUser user;
  TBBServiceTaxonomy serviceTaxonomy;

  bool get loggedIn => user != null && user.isEmpty == false;

  Future<String> get otpFrom async => await _getProp("otp_from");

  TBBLocalState(
      {this.accessId, this.refreshId, this.user, this.serviceTaxonomy});

  /// A necessary factory constructor for creating a new User instance
  /// from a map. Pass the map to the generated `_$UserFromJson()` constructor.
  /// The constructor is named after the source class, in this case, User.
  factory TBBLocalState.fromJson(Map<String, dynamic> json) {
    json['access_id'] = json['access_id'].toString();
    json['refresh_id'] = json['refresh_id'].toString();
    return _$TBBLocalStateFromJson(json);
  }

  static List<TBBLocalState> listFromJson(List<Map<String,dynamic>>  listJson) {
    Iterable l = listJson;
    List<TBBLocalState> items = List<TBBLocalState>.from(
        l.map((model) => TBBLocalState.fromJson(model)));
    return items;
  }

  /// `toJson` is the convention for a class to declare support for serialization
  /// to JSON. The implementation simply calls the private, generated
  /// helper method `_$UserToJson`.
  Map<String, dynamic> toJson() => _$TBBLocalStateToJson(this);

  @override
  toString() => this.toJson().toString();

  _getProp(String key) async {
    TBBLocalDatabaseService localDatabaseService =
        new TBBLocalDatabaseService();
    return await localDatabaseService.getLocalStateProp(key);
  }
}
