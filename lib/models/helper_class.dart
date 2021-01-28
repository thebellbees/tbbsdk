class TBBUserUpdate {
  String firstname;
  String lastname;
  String email;

  TBBUserUpdate({this.firstname, this.lastname, this.email});

  TBBUserUpdate.fromJson(Map<String, dynamic> json) {
    firstname = json['firstname'];
    lastname = json['lastname'];
    email = json['email'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['firstname'] = this.firstname;
    data['lastname'] = this.lastname;
    data['email'] = this.email;

    return data;
  }
}
