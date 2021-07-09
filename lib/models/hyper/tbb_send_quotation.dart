/// items : [{"name":"Product one","sale_price":"100","mrp_price":"100","special_price":"60","note":"product one note description"}]
/// note : "order note description"
/// address : {"address_line_one":"No.50 1/4,","address_line_two":"West Colony, Erode","state":"tamilnadu","city":"erode","pincode":"638011"}

class TbbSendQuotation {
  List<Items> _items;
  String _note;
  Address _address;

  List<Items> get items => _items;
  String get note => _note;
  Address get address => _address;

  TbbSendQuotation({
      List<Items> items, 
      String note, 
      Address address}){
    _items = items;
    _note = note;
    _address = address;
}

  TbbSendQuotation.fromJson(dynamic json) {
    if (json["items"] != null) {
      _items = [];
      json["items"].forEach((v) {
        _items.add(Items.fromJson(v));
      });
    }
    _note = json["note"];
    _address = json["address"] != null ? Address.fromJson(json["address"]) : null;
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    if (_items != null) {
      map["items"] = _items.map((v) => v.toJson()).toList();
    }
    map["note"] = _note;
    if (_address != null) {
      map["address"] = _address.toJson();
    }
    return map;
  }

}

/// address_line_one : "No.50 1/4,"
/// address_line_two : "West Colony, Erode"
/// state : "tamilnadu"
/// city : "erode"
/// pincode : "638011"

class Address {
  String _addressLineOne;
  String _addressLineTwo;
  String _state;
  String _city;
  String _pincode;

  String get addressLineOne => _addressLineOne;
  String get addressLineTwo => _addressLineTwo;
  String get state => _state;
  String get city => _city;
  String get pincode => _pincode;

  Address({
      String addressLineOne, 
      String addressLineTwo, 
      String state, 
      String city, 
      String pincode}){
    _addressLineOne = addressLineOne;
    _addressLineTwo = addressLineTwo;
    _state = state;
    _city = city;
    _pincode = pincode;
}

  Address.fromJson(dynamic json) {
    _addressLineOne = json["address_line_one"];
    _addressLineTwo = json["address_line_two"];
    _state = json["state"];
    _city = json["city"];
    _pincode = json["pincode"];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["address_line_one"] = _addressLineOne;
    map["address_line_two"] = _addressLineTwo;
    map["state"] = _state;
    map["city"] = _city;
    map["pincode"] = _pincode;
    return map;
  }

}

/// name : "Product one"
/// sale_price : "100"
/// mrp_price : "100"
/// special_price : "60"
/// note : "product one note description"

class Items {
  String _name;
  String _salePrice;
  String _mrpPrice;
  String _specialPrice;
  String _note;

  String get name => _name;
  String get salePrice => _salePrice;
  String get mrpPrice => _mrpPrice;
  String get specialPrice => _specialPrice;
  String get note => _note;

  Items({
      String name, 
      String salePrice, 
      String mrpPrice, 
      String specialPrice, 
      String note}){
    _name = name;
    _salePrice = salePrice;
    _mrpPrice = mrpPrice;
    _specialPrice = specialPrice;
    _note = note;
}

  Items.fromJson(dynamic json) {
    _name = json["name"];
    _salePrice = json["sale_price"];
    _mrpPrice = json["mrp_price"];
    _specialPrice = json["special_price"];
    _note = json["note"];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["name"] = _name;
    map["sale_price"] = _salePrice;
    map["mrp_price"] = _mrpPrice;
    map["special_price"] = _specialPrice;
    map["note"] = _note;
    return map;
  }

}