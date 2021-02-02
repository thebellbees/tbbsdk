class TBBUser {
  String id;
  String firstName;
  String lastName;
  String email;
  String phone;
  bool enabled;
  String image;
  List userMeta;

  TBBUser(
      {this.id,
      this.firstName,
      this.lastName,
      this.email,
      this.phone,
      this.enabled,
      this.image,
      this.userMeta});

  TBBUser.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    firstName = json['first_name'];
    lastName = json['last_name'];
    email = json['email'];
    phone = json['phone'];
    enabled = json['enabled'];
    image = json['image'];
    userMeta = json['user_meta'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['first_name'] = this.firstName;
    data['last_name'] = this.lastName;
    data['email'] = this.email;
    data['phone'] = this.phone;
    data['enabled'] = this.enabled;
    data['image'] = this.image;
    data['user_meta'] = this.userMeta;

    return data;
  }

  bool get isEmpty {
    List values = [id, firstName, lastName, email, phone];
    values.removeWhere((val) {
      return val == null || val == '';
    });
    return values.isEmpty;
  }

  @override
  toString() => this.toJson().toString();
}
