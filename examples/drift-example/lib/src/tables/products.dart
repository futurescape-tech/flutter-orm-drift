
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

@DataClassName('ProductCategoryLink')
class ProductCategoryLinks extends Table {

  @override
  String? get tableName => 'product_category_links';

  IntColumn get id => integer().autoIncrement()();
  IntColumn get pLocalCatId => integer().references(ProductCategories, #id)();
  IntColumn get pLocalProdId => integer().references(Products, #id)();
}