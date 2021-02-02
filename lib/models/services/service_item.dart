import 'package:tbbsdk/models/store.dart';

class TBBServiceItem {
  String id;
  String storeId;
  String name;
  String slug;
  String responseMinute;
  TBBStore store;
  String createdAt;
  String updatedAt;
  String deletedAt;

  TBBServiceItem({
    this.id,
    this.storeId,
    this.name,
    this.slug,
    this.responseMinute,
    this.store,
    this.createdAt,
    this.updatedAt,
    this.deletedAt,
  });

  TBBServiceItem.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    storeId = json['store_id'];
    name = json['name'];
    slug = json['slug'];
    responseMinute = json['response_minute'];
    store = json['store'] != null ? TBBStore.fromJson(json['store']) : null;
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    deletedAt = json['deleted_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['store_id'] = this.storeId;
    data['name'] = this.name;
    data['slug'] = this.slug;
    data['response_minute'] = this.responseMinute;
    data['store'] = this.store != null ? this.store.toJson() : null;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    data['deleted_at'] = this.deletedAt;

    return data;
  }

  @override
  toString() => this.toJson().toString();
}
