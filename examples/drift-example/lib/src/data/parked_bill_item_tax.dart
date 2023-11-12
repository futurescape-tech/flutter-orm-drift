
class ParkedBillItemTax {
  int id;
  String? taxId;
  int locTaxId;
  int locItemId;
  String? itemId;
  String name;
  double tax;

  ParkedBillItemTax({
    required this.id,
    this.taxId,
    required this.locTaxId,
    this.itemId,
    required this.locItemId,
    required this.name,
    required this.tax
  });

  factory ParkedBillItemTax.fromJson(Map<String, dynamic> json) {
    return ParkedBillItemTax(
      id: json['id'] ?? '',
      taxId: json['tax_id'],
      locTaxId: json['loc_tax_id'],
      name: json['name'] ?? '',
      tax: json['tax']?.toDouble() ?? 0.0,
      itemId: json['item_id'],
      locItemId: json['loc_item_id'] ?? '',
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'tax_id': taxId,
      'loc_tax_id': locTaxId,
      'name': name,
      'tax': tax,
      'item_id': itemId,
      'loc_item_id': locItemId,
    };
  }
}

class AddParkedBillItemTaxParams {
  int locTaxId;
  String? taxId;
  int? locItemId;
  String? itemId;
  String name;
  double tax;

  AddParkedBillItemTaxParams({
    required this.locTaxId,
    this.taxId,
    this.itemId,
    this.locItemId,
    required this.name,
    this.tax = 0
  });

  factory AddParkedBillItemTaxParams.fromJson(Map<String, dynamic> json) {
    return AddParkedBillItemTaxParams(
      locTaxId: json['loc_tax_id'] ?? -1,
      taxId: json['tax_id'],
      name: json['name'] ?? '',
      tax: json['tax']?.toDouble() ?? 0.0,
      itemId: json['item_id'],
      locItemId: json['loc_item_id'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'loc_tax_id': locTaxId,
      'tax_id': taxId,
      'name': name,
      'tax': tax,
      'item_id': itemId,
      'loc_item_id': locItemId,
    };
  }
}