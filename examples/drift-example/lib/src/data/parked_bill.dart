
import 'package:drift_example/src/data/parked_bill_item.dart';

class ParkedBill {
  int id;
  String? billId;
  String name;
  double subtotal;
  double tax;
  double discount;
  double netAmount;
  List<ParkedBillItem>? items;

  ParkedBill({
    required this.id,
    this.billId,
    required this.name,
    required this.subtotal,
    required this.tax,
    required this.discount,
    required this.netAmount,
    this.items
  });

  factory ParkedBill.fromJson(Map<String, dynamic> json) {
    List<ParkedBillItem>? billItems;
    if (json case {'items': List items?}) {
      billItems = items
          .map<ParkedBillItem>((e) => ParkedBillItem.fromJson(e))
          .toList();
    }

    return ParkedBill(
      id: json['id'] ?? '',
      billId: json['bill_id'],
      name: json['name'] ?? '',
      subtotal: json['subtotal']?.toDouble() ?? 0.0,
      tax: json['tax']?.toDouble() ?? 0.0,
      discount: json['discount']?.toDouble() ?? 0.0,
      netAmount: json['net_amount']?.toDouble() ?? 0.0,
      items: billItems
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'bill_id': billId,
      'name': name,
      'subtotal': subtotal,
      'tax': tax,
      'discount': discount,
      'net_amount': netAmount,
      'items': items?.map((e) => e.toJson()).toList()
    };
  }
}



class AddParkedBillParams {
  String? billId;
  String? name;
  double subtotal;
  double tax;
  double discount;
  double netAmount;
  List<AddParkedBillItemParams>? items;

  AddParkedBillParams({
    this.billId,
    this.name,
    this.subtotal = 0,
    this.tax = 0,
    this.discount = 0,
    this.netAmount = 0,
    this.items
  });

  factory AddParkedBillParams.fromJson(Map<String, dynamic> json) {
    List<AddParkedBillItemParams>? billItems;
    if (json case {'items': List items?}) {
      billItems = items
          .map<AddParkedBillItemParams>((e) => AddParkedBillItemParams.fromJson(e))
          .toList();
    }

    return AddParkedBillParams(
        billId: json['bill_id'],
        name: json['name'] ?? '',
        subtotal: json['subtotal']?.toDouble() ?? 0.0,
        tax: json['tax']?.toDouble() ?? 0.0,
        discount: json['discount']?.toDouble() ?? 0.0,
        netAmount: json['net_amount']?.toDouble() ?? 0.0,
        items: billItems
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'bill_id': billId,
      'name': name,
      'subtotal': subtotal,
      'tax': tax,
      'discount': discount,
      'net_amount': netAmount,
      'items': items?.map((e) => e.toJson()).toList()
    };
  }
}
