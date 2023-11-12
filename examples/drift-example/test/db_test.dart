
import 'package:drift_example/main.dart';
import 'package:drift_example/src/daos/parked_bills_dao.dart';
import 'package:drift_example/src/data/parked_bill.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  print('ABC');
  test1();
}

void test1() {
  test('test1', () async {
    List<ParkedBill>? parkedBills =
        await ParkedBillsDao(database).getParkedBills();
    debugPrint('parkedBills = $parkedBills');
  });
}