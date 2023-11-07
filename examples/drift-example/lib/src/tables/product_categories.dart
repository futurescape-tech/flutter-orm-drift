import 'package:drift/drift.dart';

@DataClassName('ProductCategory')
class ProductCategories extends Table {

  @override
  String? get tableName => 'product_categories';

  IntColumn get id => integer().autoIncrement()();
  TextColumn get catId => text().nullable()();
  TextColumn get name => text()();
  BoolColumn get status => boolean().withDefault(const Constant(true))();
}
