class TBBUser {
  String id;
  String firstname;
  String lastname;
  String email;
  String phone;
  bool enabled;
  String image;
  List user_meta;

  TBBUser(
      {this.id = "",
      this.firstname = "",
      this.lastname = "",
      this.email = "",
      this.phone = "",
      this.enabled = false,
      this.image = "",
      this.user_meta});

  TBBUser.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    firstname = json['firstname'];
    lastname = json['lastname'];
    email = json['email'];
    phone = json['phone'];
    enabled = json['enabled'];
    image = json['image'];
    user_meta = json['user_meta'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['firstname'] = this.firstname;
    data['lastname'] = this.lastname;
    data['email'] = this.email;
    data['phone'] = this.phone;
    data['enabled'] = this.enabled;
    data['image'] = this.image;
    data['user_meta'] = this.user_meta;

    return data;
  }

  bool get isEmpty {
    List values = [id, firstname, lastname, email, phone];
    values.removeWhere((val) {
      return val == null || val == '';
    });
    return values.isEmpty;
  }

  @override
  toString() => this.toJson().toString();
}
