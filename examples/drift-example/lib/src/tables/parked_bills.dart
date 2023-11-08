import 'package:drift/drift.dart';

@DataClassName('ParkedBill')
class ParkedBills extends Table {
  @override
  String? get tableName => 'parked_bills';

  IntColumn get id => integer().autoIncrement()();
  TextColumn get billId => text().nullable()();
  TextColumn get billName => text().nullable()();
  RealColumn get subtotal => real().withDefault(const Constant(0))();
  RealColumn get discount => real().withDefault(const Constant(0))();
  RealColumn get tax => real().withDefault(const Constant(0))();
  RealColumn get netAmount => real().withDefault(const Constant(0))();
}

@DataClassName('ParkedBillItem')
class ParkedBillItems extends Table {
  @override
  String? get tableName => 'parked_bill_items';

  IntColumn get id => integer().autoIncrement()();
  TextColumn get itemId => text().nullable()();
  IntColumn get pLocalBillId => integer().references(ParkedBills, #id)();
  TextColumn get pBillId =>
      text().nullable().references(ParkedBills, #billId)();
  TextColumn get name => text()();
  TextColumn get image => text().nullable()();
  RealColumn get quantity => real().withDefault(const Constant(0))();
  RealColumn get subtotal => real().withDefault(const Constant(0))();
  RealColumn get discount => real().withDefault(const Constant(0))();
  RealColumn get tax => real().withDefault(const Constant(0))();
  RealColumn get netAmount => real().withDefault(const Constant(0))();
}

@DataClassName('ParkedBillItemTax')
class ParkedBillItemTaxes extends Table {
  @override
  String? get tableName => 'parked_bill_item_taxes';

  IntColumn get id => integer().autoIncrement()();
  TextColumn get taxId => text().nullable()();
  IntColumn get pLocalItemId => integer().references(ParkedBillItems, #id)();
  TextColumn get pItemId =>
      text().nullable().references(ParkedBillItems, #itemId)();
  TextColumn get name => text()();
  TextColumn get method => text()();
  RealColumn get tax => real().withDefault(const Constant(0))();
}
