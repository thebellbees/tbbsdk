import 'dart:convert';

import 'package:tbbsdk/models/hyper/TBBHyperCartItem.dart';
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
    totalCount = json['total_count'].toString();
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

class HyperCartList {
  String totalCount;
  List<TBBHyperCartItem> items;

  HyperCartList({
    this.totalCount,
    this.items,
  });

  HyperCartList.fromJson(Map<String, dynamic> json) {
    totalCount = json['total_count'].toString();
    items = json['items'] == null
        ? null
        : TBBHyperCartItem.listFromJson(json['items']);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['total_count'] = this.totalCount;
    data['items'] =
        data['items'] == null ? null : this.items.map((e) => e.toJson());

    return data;
  }
}

class ModelHelper {
  static bool toBool(dynamic value) {
    try {
      if (value == 1 || value == true || value == "true") {
        return true;
      } else {
        return false;
      }
    } catch (err) {
      print(err);
      return false;
    }
  }

  static Map<String, dynamic> jsonParse(dynamic v) {
    if (v != null && v.isNotEmpty) {
      return jsonDecode(v) as Map<String, dynamic>;
    } else {
      return null;
    }
  }
}
