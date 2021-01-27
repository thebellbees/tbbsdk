import 'dart:convert';

class TBBResponse {
  String type;
  String resource;
  String message;
  dynamic data;

  TBBResponse({
    this.type,
    this.resource,
    this.message,
    this.data,
  });

  TBBResponse.fromJson(Map<String, dynamic> json) {
    type = json['type'];
    resource = json['resource'];
    message = json['message'];
    data = json['data'] is String ? jsonDecode(json['data']) : json['data'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['type'] = this.type;
    data['resource'] = this.resource;
    data['message'] = this.message;
    data['data'] = this.data;

    return data;
  }

  @override
  toString() => this.toJson().toString();
}
