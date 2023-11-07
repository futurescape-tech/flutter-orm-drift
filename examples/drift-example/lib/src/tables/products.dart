
import 'package:drift/drift.dart';

@DataClassName('Product')
class Products extends Table {

  @override
  String? get tableName => 'products';

  IntColumn get id => integer().autoIncrement()();
  TextColumn get prodId => text().unique().nullable()();
  TextColumn get name => text()();
  RealColumn get price => real().withDefault(const Constant(0))();
  TextColumn get sku => text().unique().nullable()();
  TextColumn get shortCode => text().unique().nullable()();
  TextColumn get image => text().nullable()();
  BoolColumn get status => boolean().withDefault(const Constant(false))();
}