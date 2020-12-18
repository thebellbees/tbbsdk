class TBBError {
  String type;
  String message;
  Map<String, dynamic> error;

  TBBError({String code, String message, Map<String, dynamic> data}) {
    this.type = code;
    this.message = message;
    this.error = data;
  }

  TBBError.fromJson(Map<String, dynamic> json) {
    type = json['type'].toString();
    message = json['message'];
    error = json['error'] != null ? json['error'] : null;
  }

  @override
  String toString() {
    return "TBB Error!\ntype: $type\nmessage: $message\n";
  }
}
