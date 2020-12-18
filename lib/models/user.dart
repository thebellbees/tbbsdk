class User {
  String id;
  String firstname;
  String lastname;
  String email;
  String phone;
  bool enabled;
  String image;
  List<Map<String, dynamic>> user_meta;

  User(
      {this.id,
      this.firstname,
      this.lastname,
      this.email,
      this.phone,
      this.enabled,
      this.image,
      this.user_meta});

  User.fromJson(Map<String, dynamic> json) {
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

  @override
  toString() => this.toJson().toString();
}
