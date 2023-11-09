
import 'package:drift/drift.dart';
import 'package:drift_example/src/schemas/schemas.dart';
import 'package:drift_example/src/tables/parked_bills.dart';

part 'parked_bills_dao.g.dart';

@DriftAccessor(tables: [ParkedBills])
class ParkedBillsDao extends DatabaseAccessor<AppDatabase> with _$ParkedBillsDaoMixin {

  ParkedBillsDao(super.attachedDatabase);

  Future<List<ParkedBill>> getParkedBills() {
    return select(parkedBills).get();
  }
}