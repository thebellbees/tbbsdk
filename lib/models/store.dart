import 'package:tbbsdk/models/customer.dart';

class TBBStore {
  String storeId;
  String ownerId;
  String storeType;
  String name;
  String company;
  String phone;
  String email;
  String address;
  bool enabled;
  TBBCustomer customer;
  String createdAt;
  String updatedAt;
  String deletedAt;

  TBBStore({
    this.storeId,
    this.ownerId,
    this.storeType,
    this.name,
    this.company,
    this.phone,
    this.email,
    this.address,
    this.enabled,
    this.customer,
    this.createdAt,
    this.updatedAt,
    this.deletedAt,
  });

  TBBStore.fromJson(Map<String, dynamic> json) {
    storeId = json['store_id'].toString();
    ownerId = json['owner_id'].toString();
    storeType = json['store_type'];
    name = json['name'];
    company = json['company'];
    phone = json['phone'];
    email = json['email'];
    address = json['address'];
    enabled = json['enabled'];
    customer = json['customer'] != null
        ? TBBCustomer.fromJson(json['customer'])
        : null;
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    deletedAt = json['deleted_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['store_id'] = this.storeId;
    data['owner_id'] = this.ownerId;
    data['store_type'] = this.storeType;
    data['name'] = this.name;
    data['company'] = this.company;
    data['phone'] = this.phone;
    data['email'] = this.email;
    data['address'] = this.address;
    data['enabled'] = this.enabled;
    data['customer'] = this.customer != null ? this.customer.toJson() : null;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    data['deleted_at'] = this.deletedAt;

    return data;
  }

  @override
  toString() => this.toJson().toString();
}
