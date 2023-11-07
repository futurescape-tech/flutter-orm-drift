
import 'package:drift/drift.dart';

class ParkedBills extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get billId => text().nullable()();
  TextColumn get billName => text().nullable()();
  RealColumn get subtotal => real().withDefault(const Constant(0))();
  RealColumn get discount => real().withDefault(const Constant(0))();
  RealColumn get tax => real().withDefault(const Constant(0))();
  RealColumn get netAmount => real().withDefault(const Constant(0))();
}

class ParkedBillItems extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get itemId => text().nullable()();
  IntColumn get pLocalBillId => integer()();
  TextColumn get pBillId => text().nullable()();
  TextColumn get name => text()();
  TextColumn get image => text().nullable()();
  RealColumn get quantity => real().withDefault(const Constant(0))();
  RealColumn get subtotal => real().withDefault(const Constant(0))();
  RealColumn get discount => real().withDefault(const Constant(0))();
  RealColumn get tax => real().withDefault(const Constant(0))();
  RealColumn get netAmount => real().withDefault(const Constant(0))();
}

class ParkedBillItemTaxes extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get taxId => text().nullable()();
  IntColumn get pLocalItemId => integer()();
  TextColumn get pItemId => text().nullable()();
  TextColumn get name => text()();
  TextColumn get method => text()();
  RealColumn get tax => real().withDefault(const Constant(0))();
}