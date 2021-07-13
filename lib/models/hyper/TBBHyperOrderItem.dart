class TBBHyperOrderItem {
  String _name;
  double _salePrice;
  double _mrpPrice;
  double _specialPrice;
  String _note;

  TBBHyperOrderItem(String name, double salePrice,
      {double mrpPrice, double specialPrice, String note}) {
    this._name = name;
    this._salePrice = salePrice;
    this._mrpPrice = mrpPrice;
    this._specialPrice = specialPrice;
    this._note = note;
  }

  String get name => _name ?? "";

  double get salePrice => _salePrice != null ? _salePrice : 0;

  double get mrpPrice => _mrpPrice ?? 0;

  double get specialPrice => _specialPrice ?? 0;

  String get note => _note ?? "";

  factory TBBHyperOrderItem.fromJson(Map<String, dynamic> json) {
    return TBBHyperOrderItem(
      json['name'] as String,
      json['sale_price'] as double,
      mrpPrice: json['mrp_price'] as double,
      specialPrice: json['special_price'] as double,
      note: json['note'] as String,
    );
  }

  Map<String, dynamic> toJson() => <String, dynamic>{
        'name': this.name,
        'sale_price': this.salePrice,
        'mrp_price': this.mrpPrice,
        'special_price': this.specialPrice,
        'note': this.note
      };

  static List<TBBHyperOrderItem> listFromJson(List<dynamic> listJson) {
    Iterable l = listJson;
    List<TBBHyperOrderItem> items = List<TBBHyperOrderItem>.from(l.map(
            (model) =>
                TBBHyperOrderItem.fromJson(model as Map<String, dynamic>)))
        .toList();
    return items;
  }

  static OrderAmount calculate(List<TBBHyperOrderItem> items) {
    double total = 0;
    items.forEach((i) {
      total = total + i.salePrice ?? 0;
    });

    return new OrderAmount(
        items: items.length ?? 0, subTotal: total, netAmount: total);
  }
}

class OrderAmount {
  int items;
  double netAmount;
  double subTotal;
  double deliveryCharge;

  OrderAmount({this.items, this.netAmount, this.subTotal, this.deliveryCharge});

  factory OrderAmount.fromJson(Map<String, dynamic> json) {
    return OrderAmount(
        items: json['items'] as int,
        netAmount: json['net_amount'] as double,
        subTotal: json['sub_total'] as double,
        deliveryCharge: json['delivery_charge'] as double);
  }

  Map<String, dynamic> toJson(OrderAmount instance) => <String, dynamic>{
        'items': instance.items,
        'net_amount': instance.netAmount,
        'sub_total': instance.subTotal,
        'delivery_charge': instance.deliveryCharge
      };
}
