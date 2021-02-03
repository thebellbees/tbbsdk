class TBBCustomer {
  String customerId;
  String createdAt;
  String updatedAt;
  String deletedAt;

  TBBCustomer({
    this.customerId,
    this.createdAt,
    this.updatedAt,
    this.deletedAt,
  });

  TBBCustomer.fromJson(Map<String, dynamic> json) {
    customerId = json['customer_id'].toString();
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    deletedAt = json['deleted_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['customer_id'] = this.customerId;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    data['deleted_at'] = this.deletedAt;

    return data;
  }

  @override
  toString() => this.toJson().toString();
}
