
import 'dart:io';

import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:drift_example/src/tables/parked_bills.dart';
import 'package:drift_example/src/tables/products.dart';
import 'package:drift_example/src/daos/parked_bills_dao.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';

part 'schemas.g.dart';

@DriftDatabase(tables: [
  Products,
  ProductCategories,
  ProductCategoryLinks,
  ParkedBills,
  ParkedBillItems,
  ParkedBillItemTaxes
],
daos: [
  ParkedBillsDao
]
)
class AppDatabase extends _$AppDatabase {
  AppDatabase() : super(_openConnection());

  @override
  int get schemaVersion => 1;
}

LazyDatabase _openConnection() {
  // the LazyDatabase util lets us find the right location for the file async.
  return LazyDatabase(() async {
    // put the database file, called db.sqlite here, into the documents folder
    // for your app.
    final dbFolder = await getApplicationDocumentsDirectory();
    final file = File(join(dbFolder.path, 'db.sqlite'));
    return NativeDatabase.createInBackground(file);
  });
}
