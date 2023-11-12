
import 'package:drift/drift.dart';
import 'package:drift_example/src/data/parked_bill.dart';
import 'package:drift_example/src/data/parked_bill_item.dart';
import 'package:drift_example/src/data/parked_bill_item_tax.dart';

@UseRowClass(ParkedBill)
class ParkedBills extends Table {
  @override
  String? get tableName => "parked_bills";

  IntColumn get id => integer().autoIncrement()();
  TextColumn get billId => text().nullable()();
  TextColumn get name => text()();
  RealColumn get subtotal => real().withDefault(const Constant(0))();
  RealColumn get tax => real().withDefault(const Constant(0))();
  RealColumn get discount => real().withDefault(const Constant(0))();
  RealColumn get netAmount => real().withDefault(const Constant(0))();
}

@UseRowClass(ParkedBillItem)
class ParkedBillItems extends Table {

  @override
  String? get tableName => "parked_bill_items";

  IntColumn get id => integer().autoIncrement()();
  TextColumn get itemId => text().nullable()();
  IntColumn get locBillId => integer()();
  TextColumn get billId => text().nullable()();
  TextColumn get name => text()();
  TextColumn get image => text().nullable()();
  RealColumn get quantity => real().withDefault(const Constant(1))();
  RealColumn get subtotal => real().withDefault(const Constant(0))();
  RealColumn get tax => real().withDefault(const Constant(0))();
  RealColumn get discount => real().withDefault(const Constant(0))();
  RealColumn get netAmount => real().withDefault(const Constant(0))();
}

@UseRowClass(ParkedBillItemTax)
class ParkedBillItemTaxes extends Table {
  @override
  String? get tableName => "parked_bill_item_taxes";

  IntColumn get id => integer().autoIncrement()();
  TextColumn get taxId => text().nullable()();
  IntColumn get locTaxId => integer()();
  TextColumn get name => text()();
  RealColumn get tax => real().withDefault(const Constant(0))();
  TextColumn get itemId => text().nullable()();
  IntColumn get locItemId => integer()();
}