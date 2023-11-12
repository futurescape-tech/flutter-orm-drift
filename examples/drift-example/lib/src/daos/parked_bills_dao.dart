import 'dart:math';

import 'package:drift/drift.dart';
import 'package:drift_example/src/data/parked_bill.dart';
import 'package:drift_example/src/data/parked_bill_item.dart';
import 'package:drift_example/src/data/parked_bill_item_tax.dart';
import 'package:drift_example/src/schemas/schemas.dart';
import 'package:drift_example/src/tables/parked_bills.dart';
import 'package:flutter/material.dart';

part 'parked_bills_dao.g.dart';

@DriftAccessor(tables: [ParkedBills, ParkedBillItems, ParkedBillItemTaxes])
class ParkedBillsDao extends DatabaseAccessor<AppDatabase>
    with _$ParkedBillsDaoMixin {
  ParkedBillsDao(super.attachedDatabase);

  Future<List<ParkedBill>?> getParkedBills() async {
    var bills = <int, ParkedBill>{};
    var items = <String, ParkedBillItem>{};

    final results = await select(parkedBills).join([
      leftOuterJoin(
          parkedBillItems, parkedBillItems.locBillId.equalsExp(parkedBills.id)),
      leftOuterJoin(parkedBillItemTaxes,
          parkedBillItemTaxes.locItemId.equalsExp(parkedBillItems.id))
    ]).get();

    for (var result in results) {
      ParkedBill bill = result.readTable(parkedBills);
      ParkedBillItem? item = result.readTableOrNull(parkedBillItems);
      ParkedBillItemTax? tax = result.readTableOrNull(parkedBillItemTaxes);

      if (!bills.containsKey(bill.id)) {
        bills[bill.id] = bill;
      }

      if (item == null) {
        continue;
      }

      String itemIdentifier = '${bill.id}\$${item.id}';
      if (!items.containsKey(itemIdentifier)) {
        var bill_ = bills[bill.id];
        bill_?.items ??= <ParkedBillItem>[];
        bill_?.items?.add(item);
        items[itemIdentifier] = item;
      }

      if (tax == null) {
        continue;
      }

      var item_ = items[itemIdentifier];
      item_?.taxes ??= <ParkedBillItemTax>[];
      item_?.taxes?.add(tax);
    }

    return bills.values.toList();
  }

  Future<ParkedBill?> createParkedBill({AddParkedBillParams? params}) async {
    ParkedBill? parkedBill;
    try {
      parkedBill = await transaction<ParkedBill?>(() async {
            ParkedBill? bill = await into(parkedBills).insertReturning(
                const ParkedBillsCompanion().copyWith(
                  name: Value('B-${Random().nextInt(50)}'),
                  billId: params?.billId != null ? Value(params!.billId) : null,
                  subtotal: params?.subtotal != null ? Value(params!.subtotal) : null,
                  discount: params?.discount != null ? Value(params!.discount) : null,
                  tax: params?.tax != null ? Value(params!.tax) : null,
                  netAmount:
                      params?.netAmount != null ? Value(params!.netAmount) : null,
                ),
                mode: InsertMode.insert);

            if (params
                case AddParkedBillParams(
                  items: List<AddParkedBillItemParams> itemParams?
                ) when itemParams.isNotEmpty) {
              List<ParkedBillItem>? items;
              for (var itemParam in itemParams) {
                ParkedBillItem item = await into(parkedBillItems).insertReturning(
                    const ParkedBillItemsCompanion().copyWith(
                        itemId:
                            itemParam.itemId != null ? Value(itemParam.itemId) : null,
                        name: Value(itemParam.name),
                        billId:
                            itemParam.billId != null ? Value(itemParam.billId) : null,
                        locBillId: Value(bill.id),
                        image:
                            itemParam.image != null ? Value(itemParam.image) : null,
                        subtotal: Value(itemParam.subtotal),
                        discount: Value(itemParam.discount),
                        tax: Value(itemParam.tax),
                        netAmount: Value(itemParam.netAmount)),
                    mode: InsertMode.insert);

                List<ParkedBillItemTax>? taxes;
                if (itemParam
                    case AddParkedBillItemParams(
                      taxes: List<AddParkedBillItemTaxParams> taxParams?
                    ) when taxParams.isNotEmpty) {
                  for (var taxParam in taxParams) {
                    ParkedBillItemTax tax = await into(parkedBillItemTaxes).insertReturning(
                      const ParkedBillItemTaxesCompanion().copyWith(
                        name: Value(taxParam.name),
                        tax: Value(taxParam.tax),
                        itemId: taxParam.itemId != null ? Value(taxParam.itemId) : null,
                        locTaxId: Value(taxParam.locTaxId),
                        locItemId: Value(item.id)
                      ), mode: InsertMode.insert
                    );

                    taxes ??= [];
                    taxes.add(tax);
                  }
                  item.taxes = taxes;
                }

                items ??= [];
                items.add(item);
              }

              bill.items = items;
            }

            return bill;
          });
    } catch (e) {
      debugPrint(e.toString());
    }

    return parkedBill;
  }
}
