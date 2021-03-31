import 'package:tbbsdk/models/services/TBBServiceCartItem.dart';

class TBBUserUpdate {
  String firstName = "";
  String lastName = "";
  String email = "";

  TBBUserUpdate({this.firstName, this.lastName, this.email});

  TBBUserUpdate.fromJson(Map<String, dynamic> json) {
    firstName = json['first_name'];
    lastName = json['last_name'];
    email = json['email'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['first_name'] = this.firstName;
    data['last_name'] = this.lastName;
    data['email'] = this.email;

    return data;
  }
}

class CartList {
  String totalCount;
  List<TBBServiceCartItem> items;

  CartList({
    this.totalCount,
    this.items,
  });

  CartList.fromJson(Map<String, dynamic> json) {
    totalCount = json['total_count'] as String;
    items = json['items'] == null
        ? null
        : TBBServiceCartItem.listFromJson(json['items']);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['total_count'] = this.totalCount;
    data['items'] =
        data['items'] == null ? null : this.items.map((e) => e.toJson());

    return data;
  }
}
