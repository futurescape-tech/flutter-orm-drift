import 'package:drift_example/src/data/parked_bill_item_tax.dart';

class ParkedBillItem {
  int id;
  String? itemId;
  int locBillId;
  String? billId;
  String name;
  String? image;
  double quantity;
  double subtotal;
  double tax;
  double discount;
  double netAmount;
  List<ParkedBillItemTax>? taxes;

  ParkedBillItem({
    required this.id,
    this.itemId,
    required this.locBillId,
    this.billId,
    required this.name,
    this.image,
    required this.quantity,
    required this.subtotal,
    required this.tax,
    required this.discount,
    required this.netAmount,
    this.taxes
  });

  factory ParkedBillItem.fromJson(Map<String, dynamic> json) {
    List<ParkedBillItemTax>? itemTaxes;
    if (json case {'taxes': List taxes?}) {
      itemTaxes = taxes.map<ParkedBillItemTax>((e) => ParkedBillItemTax.fromJson(e)).toList();
    }
    return ParkedBillItem(
      id: json['id'] ?? '',
      itemId: json['item_id'] ?? '',
      locBillId: json['loc_bill_id'] ?? -1,
      billId: json['bill_id'],
      name: json['name'] ?? '',
      image: json['image'],
      quantity: json['quantity']?.toDouble() ?? 0.0,
      subtotal: json['subtotal']?.toDouble() ?? 0.0,
      tax: json['tax']?.toDouble() ?? 0.0,
      discount: json['discount']?.toDouble() ?? 0.0,
      netAmount: json['net_amount']?.toDouble() ?? 0.0,
      taxes: itemTaxes
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'item_id': itemId,
      'loc_bill_id': locBillId,
      'bill_id': billId,
      'name': name,
      'image': image,
      'quantity': quantity,
      'subtotal': subtotal,
      'tax': tax,
      'discount': discount,
      'net_amount': netAmount,
      'taxes': taxes?.map((e) => e.toJson()).toList()
    };
  }
}

class AddParkedBillItemParams {
  String? itemId;
  int? locBillId;
  String? billId;
  String name;
  String? image;
  double quantity;
  double subtotal;
  double tax;
  double discount;
  double netAmount;
  List<AddParkedBillItemTaxParams>? taxes;

  AddParkedBillItemParams({
    this.itemId,
    this.locBillId,
    this.billId,
    required this.name,
    this.image,
    this.quantity = 1,
    this.subtotal = 0,
    this.tax = 0,
    this.discount = 0,
    this.netAmount = 0,
    this.taxes
  });

  factory AddParkedBillItemParams.fromJson(Map<String, dynamic> json) {
    List<AddParkedBillItemTaxParams>? itemTaxes;
    if (json case {'taxes': List taxes?}) {
      itemTaxes = taxes.map<AddParkedBillItemTaxParams>((e) => AddParkedBillItemTaxParams.fromJson(e)).toList();
    }
    return AddParkedBillItemParams(
        itemId: json['item_id'] ?? '',
        locBillId: json['loc_bill_id'],
        billId: json['bill_id'],
        name: json['name'] ?? '',
        image: json['image'],
        quantity: json['quantity']?.toDouble() ?? 1,
        subtotal: json['subtotal']?.toDouble() ?? 0,
        tax: json['tax']?.toDouble() ?? 0,
        discount: json['discount']?.toDouble() ?? 0,
        netAmount: json['net_amount']?.toDouble() ?? 0,
        taxes: itemTaxes
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'item_id': itemId,
      'loc_bill_id': locBillId,
      'bill_id': billId,
      'name': name,
      'image': image,
      'quantity': quantity,
      'subtotal': subtotal,
      'tax': tax,
      'discount': discount,
      'net_amount': netAmount,
      'taxes': taxes?.map((e) => e.toJson()).toList()
    };
  }
}