
import 'dart:io';

import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';

part 'schemas.g.dart';

class ProductTable extends Table {

  IntColumn get id => integer().autoIncrement()();
  TextColumn get prodId => text().nullable()();
  TextColumn get name => text()();
  RealColumn get price => real().withDefault(const Constant(0))();
  TextColumn get sku => text().nullable()();
  TextColumn get shortCode => text().nullable()();
  TextColumn get image => text().nullable()();
  BoolColumn get status => boolean().withDefault(const Constant(false))();
}

@DriftDatabase(tables: [ProductTable])
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