import 'package:drift/drift.dart' as d;
import 'package:drift_example/src/daos/parked_bills_dao.dart';
import 'package:drift_example/src/data/parked_bill.dart';
import 'package:drift_example/src/data/parked_bill_item.dart';
import 'package:drift_example/src/data/parked_bill_item_tax.dart';
import 'package:drift_example/src/schemas/schemas.dart';
import 'package:flutter/material.dart';

final database = AppDatabase();

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await addProductCategories();
  await addProducts();
  await addProductCategoryLinks();
  await addParkedBills();
  await addParkedBillItems();
  await addParkedBillItemTaxes();

  await basicQueryTest1();

  runApp(const MyApp());
}

Future<void> addProductCategories() async {
  final categories = await database.select(database.productCategories).get();

  if (categories.isNotEmpty) {
    return;
  }

  await database
      .into(database.productCategories)
      .insert(ProductCategoriesCompanion.insert(name: 'Indian'));
  await database
      .into(database.productCategories)
      .insert(ProductCategoriesCompanion.insert(name: 'Chinese'));
  await database
      .into(database.productCategories)
      .insert(ProductCategoriesCompanion.insert(name: 'Mexican'));
  await database
      .into(database.productCategories)
      .insert(ProductCategoriesCompanion.insert(name: 'Continental'));
}

Future<void> addProducts() async {
  final products = await database.select(database.products).get();

  if (products.isNotEmpty) {
    return;
  }

  await database.into(database.products).insert(ProductsCompanion.insert(
      name: 'Tangerine',
      price: const d.Value(50),
      shortCode: const d.Value('A1'),
      sku: const d.Value('P1')));

  await database.into(database.products).insert(ProductsCompanion.insert(
      name: 'Banana',
      price: const d.Value(50),
      shortCode: const d.Value('A2'),
      sku: const d.Value('P2')));

  await database.into(database.products).insert(ProductsCompanion.insert(
      name: 'Mango',
      price: const d.Value(50),
      shortCode: const d.Value('A3'),
      sku: const d.Value('P3')));

  await database.into(database.products).insert(ProductsCompanion.insert(
      name: 'Strawberry',
      price: const d.Value(50),
      shortCode: const d.Value('A4'),
      sku: const d.Value('P4')));

  await database.into(database.products).insert(ProductsCompanion.insert(
      name: 'Pineapple',
      price: const d.Value(50),
      shortCode: const d.Value('A5'),
      sku: const d.Value('P5')));

  await database.into(database.products).insert(ProductsCompanion.insert(
      name: 'Apple Pie',
      price: const d.Value(50),
      shortCode: const d.Value('A6'),
      sku: const d.Value('P6')));

  await database.into(database.products).insert(ProductsCompanion.insert(
      name: 'Lemon Pie',
      price: const d.Value(50),
      shortCode: const d.Value('A7'),
      sku: const d.Value('P7')));

  await database.into(database.products).insert(ProductsCompanion.insert(
      name: 'Grapes',
      price: const d.Value(50),
      shortCode: const d.Value('A8'),
      sku: const d.Value('P8')));

  await database.into(database.products).insert(ProductsCompanion.insert(
      name: 'Sushi',
      price: const d.Value(50),
      shortCode: const d.Value('A9'),
      sku: const d.Value('P9')));

  await database.into(database.products).insert(ProductsCompanion.insert(
      name: 'Croissant',
      price: const d.Value(50),
      shortCode: const d.Value('A10'),
      sku: const d.Value('P10')));

  await database.into(database.products).insert(ProductsCompanion.insert(
      name: 'Chana',
      price: const d.Value(50),
      shortCode: const d.Value('A11'),
      sku: const d.Value('P11')));

  await database.into(database.products).insert(ProductsCompanion.insert(
      name: 'Black Grapes',
      price: const d.Value(50),
      shortCode: const d.Value('A12'),
      sku: const d.Value('P12')));

  await database.into(database.products).insert(ProductsCompanion.insert(
      name: 'Dal',
      price: const d.Value(50),
      shortCode: const d.Value('A13'),
      sku: const d.Value('P13')));

  await database.into(database.products).insert(ProductsCompanion.insert(
      name: 'Cranberry',
      price: const d.Value(50),
      shortCode: const d.Value('A14'),
      sku: const d.Value('P14')));

  await database.into(database.products).insert(ProductsCompanion.insert(
      name: 'Blueberry',
      price: const d.Value(50),
      shortCode: const d.Value('A15'),
      sku: const d.Value('P15')));

  await database.into(database.products).insert(ProductsCompanion.insert(
      name: 'Kiwi',
      price: const d.Value(50),
      shortCode: const d.Value('A16'),
      sku: const d.Value('P16')));

  await database.into(database.products).insert(ProductsCompanion.insert(
      name: 'Star Fruit',
      price: const d.Value(50),
      shortCode: const d.Value('A17'),
      sku: const d.Value('P17')));

  await database.into(database.products).insert(ProductsCompanion.insert(
      name: 'Avocado',
      price: const d.Value(50),
      shortCode: const d.Value('A18'),
      sku: const d.Value('P18')));

  await database.into(database.products).insert(ProductsCompanion.insert(
      name: 'Green Apple',
      price: const d.Value(50),
      shortCode: const d.Value('A19'),
      sku: const d.Value('P19')));

  await database.into(database.products).insert(ProductsCompanion.insert(
      name: 'Blackberry',
      price: const d.Value(50),
      shortCode: const d.Value('A20'),
      sku: const d.Value('P20')));

  await database.into(database.products).insert(ProductsCompanion.insert(
      name: 'Waterlili',
      price: const d.Value(50),
      shortCode: const d.Value('A21'),
      sku: const d.Value('P21')));
}

Future<void> addProductCategoryLinks() async {
  final links = await database.select(database.productCategoryLinks).get();
  if (links.isNotEmpty) {
    return;
  }

  await database.into(database.productCategoryLinks).insert(
      ProductCategoryLinksCompanion.insert(pLocalCatId: 1, pLocalProdId: 1));
  await database.into(database.productCategoryLinks).insert(
      ProductCategoryLinksCompanion.insert(pLocalCatId: 1, pLocalProdId: 2));
  await database.into(database.productCategoryLinks).insert(
      ProductCategoryLinksCompanion.insert(pLocalCatId: 1, pLocalProdId: 3));

  await database.into(database.productCategoryLinks).insert(
      ProductCategoryLinksCompanion.insert(pLocalCatId: 2, pLocalProdId: 4));
  await database.into(database.productCategoryLinks).insert(
      ProductCategoryLinksCompanion.insert(pLocalCatId: 2, pLocalProdId: 5));
  await database.into(database.productCategoryLinks).insert(
      ProductCategoryLinksCompanion.insert(pLocalCatId: 2, pLocalProdId: 6));
  await database.into(database.productCategoryLinks).insert(
      ProductCategoryLinksCompanion.insert(pLocalCatId: 2, pLocalProdId: 7));

  await database.into(database.productCategoryLinks).insert(
      ProductCategoryLinksCompanion.insert(pLocalCatId: 3, pLocalProdId: 8));
  await database.into(database.productCategoryLinks).insert(
      ProductCategoryLinksCompanion.insert(pLocalCatId: 3, pLocalProdId: 9));
  await database.into(database.productCategoryLinks).insert(
      ProductCategoryLinksCompanion.insert(pLocalCatId: 3, pLocalProdId: 10));
  await database.into(database.productCategoryLinks).insert(
      ProductCategoryLinksCompanion.insert(pLocalCatId: 3, pLocalProdId: 11));
  await database.into(database.productCategoryLinks).insert(
      ProductCategoryLinksCompanion.insert(pLocalCatId: 3, pLocalProdId: 12));
  await database.into(database.productCategoryLinks).insert(
      ProductCategoryLinksCompanion.insert(pLocalCatId: 3, pLocalProdId: 13));

  await database.into(database.productCategoryLinks).insert(
      ProductCategoryLinksCompanion.insert(pLocalCatId: 4, pLocalProdId: 15));
  await database.into(database.productCategoryLinks).insert(
      ProductCategoryLinksCompanion.insert(pLocalCatId: 4, pLocalProdId: 17));
}

Future<void> addParkedBills() async {
  final parkedBills = await database.select(database.parkedBills).get();
  if (parkedBills.isNotEmpty) {
    return;
  }

  await database.into(database.parkedBills).insert(ParkedBillsCompanion.insert(
      name: 'Wisconsin 101',
      subtotal: const d.Value(500),
      netAmount: const d.Value(200),
      tax: const d.Value(20),
      discount: const d.Value(10)));
  await database.into(database.parkedBills).insert(ParkedBillsCompanion.insert(
      name: 'Florida 102',
      subtotal: const d.Value(500),
      netAmount: const d.Value(200),
      tax: const d.Value(20),
      discount: const d.Value(10)));
  await database.into(database.parkedBills).insert(ParkedBillsCompanion.insert(
      name: 'Illinois 103',
      subtotal: const d.Value(500),
      netAmount: const d.Value(200),
      tax: const d.Value(20),
      discount: const d.Value(10)));
  await database.into(database.parkedBills).insert(ParkedBillsCompanion.insert(
      name: 'Washington 104',
      subtotal: const d.Value(500),
      netAmount: const d.Value(200),
      tax: const d.Value(20),
      discount: const d.Value(10)));
  await database.into(database.parkedBills).insert(ParkedBillsCompanion.insert(
      name: 'California 105',
      subtotal: const d.Value(500),
      netAmount: const d.Value(200),
      tax: const d.Value(20),
      discount: const d.Value(10)));
  await database.into(database.parkedBills).insert(ParkedBillsCompanion.insert(
      name: 'New Jersey 106',
      subtotal: const d.Value(500),
      netAmount: const d.Value(200),
      tax: const d.Value(20),
      discount: const d.Value(10)));
}

Future<void> addParkedBillItems() async {
  final parkedBillItems = await database.select(database.parkedBillItems).get();
  if (parkedBillItems.isNotEmpty) {
    return;
  }

  await database
      .into(database.parkedBillItems)
      .insert(ParkedBillItemsCompanion.insert(
        locBillId: 1,
        name: 'Milwaukee',
        subtotal: const d.Value(500),
        netAmount: const d.Value(200),
        tax: const d.Value(20),
        discount: const d.Value(10),
        quantity: const d.Value(3),
      ));
  await database
      .into(database.parkedBillItems)
      .insert(ParkedBillItemsCompanion.insert(
        locBillId: 1,
        name: 'Madison',
        subtotal: const d.Value(500),
        netAmount: const d.Value(200),
        tax: const d.Value(20),
        discount: const d.Value(10),
        quantity: const d.Value(3),
      ));

  await database
      .into(database.parkedBillItems)
      .insert(ParkedBillItemsCompanion.insert(
        locBillId: 2,
        name: 'Miami',
        subtotal: const d.Value(500),
        netAmount: const d.Value(200),
        tax: const d.Value(20),
        discount: const d.Value(10),
        quantity: const d.Value(2),
      ));
  await database
      .into(database.parkedBillItems)
      .insert(ParkedBillItemsCompanion.insert(
        locBillId: 2,
        name: 'Orlando',
        subtotal: const d.Value(500),
        netAmount: const d.Value(200),
        tax: const d.Value(20),
        discount: const d.Value(10),
        quantity: const d.Value(2),
      ));
  await database
      .into(database.parkedBillItems)
      .insert(ParkedBillItemsCompanion.insert(
        locBillId: 2,
        name: 'Fort Lauderdale',
        subtotal: const d.Value(500),
        netAmount: const d.Value(200),
        tax: const d.Value(20),
        discount: const d.Value(10),
        quantity: const d.Value(1),
      ));
  await database
      .into(database.parkedBillItems)
      .insert(ParkedBillItemsCompanion.insert(
        locBillId: 2,
        name: 'Tampa',
        subtotal: const d.Value(500),
        netAmount: const d.Value(200),
        tax: const d.Value(20),
        discount: const d.Value(10),
        quantity: const d.Value(1),
      ));
  await database
      .into(database.parkedBillItems)
      .insert(ParkedBillItemsCompanion.insert(
        locBillId: 2,
        name: 'Daytona',
        subtotal: const d.Value(500),
        netAmount: const d.Value(200),
        tax: const d.Value(20),
        discount: const d.Value(10),
        quantity: const d.Value(1),
      ));

  await database
      .into(database.parkedBillItems)
      .insert(ParkedBillItemsCompanion.insert(
        locBillId: 3,
        name: 'Chicago',
        subtotal: const d.Value(500),
        netAmount: const d.Value(200),
        tax: const d.Value(20),
        discount: const d.Value(10),
        quantity: const d.Value(3),
      ));

  await database
      .into(database.parkedBillItems)
      .insert(ParkedBillItemsCompanion.insert(
        locBillId: 4,
        name: 'Seattle',
        subtotal: const d.Value(500),
        netAmount: const d.Value(200),
        tax: const d.Value(20),
        discount: const d.Value(10),
        quantity: const d.Value(3),
      ));
  await database
      .into(database.parkedBillItems)
      .insert(ParkedBillItemsCompanion.insert(
        locBillId: 4,
        name: 'Everett',
        subtotal: const d.Value(500),
        netAmount: const d.Value(200),
        tax: const d.Value(20),
        discount: const d.Value(10),
        quantity: const d.Value(1),
      ));

  await database
      .into(database.parkedBillItems)
      .insert(ParkedBillItemsCompanion.insert(
        locBillId: 5,
        name: 'San Francisco',
        subtotal: const d.Value(500),
        netAmount: const d.Value(200),
        tax: const d.Value(20),
        discount: const d.Value(10),
        quantity: const d.Value(3),
      ));
  await database
      .into(database.parkedBillItems)
      .insert(ParkedBillItemsCompanion.insert(
        locBillId: 5,
        name: 'Los Angeles',
        subtotal: const d.Value(500),
        netAmount: const d.Value(200),
        tax: const d.Value(20),
        discount: const d.Value(10),
        quantity: const d.Value(4),
      ));
  await database
      .into(database.parkedBillItems)
      .insert(ParkedBillItemsCompanion.insert(
        locBillId: 5,
        name: 'San Diego',
        subtotal: const d.Value(500),
        netAmount: const d.Value(200),
        tax: const d.Value(20),
        discount: const d.Value(10),
        quantity: const d.Value(3),
      ));
  await database
      .into(database.parkedBillItems)
      .insert(ParkedBillItemsCompanion.insert(
        locBillId: 5,
        name: 'San Jose',
        subtotal: const d.Value(500),
        netAmount: const d.Value(200),
        tax: const d.Value(20),
        discount: const d.Value(10),
        quantity: const d.Value(1),
      ));
  await database
      .into(database.parkedBillItems)
      .insert(ParkedBillItemsCompanion.insert(
        locBillId: 5,
        name: 'Danville',
        subtotal: const d.Value(500),
        netAmount: const d.Value(200),
        tax: const d.Value(20),
        discount: const d.Value(10),
        quantity: const d.Value(3),
      ));
  await database
      .into(database.parkedBillItems)
      .insert(ParkedBillItemsCompanion.insert(
        locBillId: 5,
        name: 'Glendale',
        subtotal: const d.Value(500),
        netAmount: const d.Value(200),
        tax: const d.Value(20),
        discount: const d.Value(10),
        quantity: const d.Value(1),
      ));
}

Future<void> addParkedBillItemTaxes() async {
  final parkedBillItemTaxes =
      await database.select(database.parkedBillItemTaxes).get();
  if (parkedBillItemTaxes.isNotEmpty) {
    return;
  }

  await database.into(database.parkedBillItemTaxes).insert(
      ParkedBillItemTaxesCompanion.insert(
          locTaxId: 2, locItemId: 1, name: 'GST 12', tax: const d.Value(10)));
  await database.into(database.parkedBillItemTaxes).insert(
      ParkedBillItemTaxesCompanion.insert(
          locTaxId: 1, locItemId: 1, name: 'GST 5', tax: const d.Value(5)));
  await database.into(database.parkedBillItemTaxes).insert(
      ParkedBillItemTaxesCompanion.insert(
          locTaxId: 4, locItemId: 1, name: 'GST 9', tax: const d.Value(12)));

  await database.into(database.parkedBillItemTaxes).insert(
      ParkedBillItemTaxesCompanion.insert(
          locTaxId: 2, locItemId: 2, name: 'GST 12', tax: const d.Value(10)));

  await database.into(database.parkedBillItemTaxes).insert(
      ParkedBillItemTaxesCompanion.insert(
          locTaxId: 2, locItemId: 3, name: 'GST 12', tax: const d.Value(10)));

  await database.into(database.parkedBillItemTaxes).insert(
      ParkedBillItemTaxesCompanion.insert(
          locTaxId: 2, locItemId: 4, name: 'GST 12', tax: const d.Value(10)));

  await database.into(database.parkedBillItemTaxes).insert(
      ParkedBillItemTaxesCompanion.insert(
          locTaxId: 2, locItemId: 5, name: 'GST 12', tax: const d.Value(10)));

  await database.into(database.parkedBillItemTaxes).insert(
      ParkedBillItemTaxesCompanion.insert(
          locTaxId: 2, locItemId: 6, name: 'GST 12', tax: const d.Value(10)));

  await database.into(database.parkedBillItemTaxes).insert(
      ParkedBillItemTaxesCompanion.insert(
          locTaxId: 2, locItemId: 7, name: 'GST 12', tax: const d.Value(10)));

  await database.into(database.parkedBillItemTaxes).insert(
      ParkedBillItemTaxesCompanion.insert(
          locTaxId: 2, locItemId: 8, name: 'GST 12', tax: const d.Value(10)));

  await database.into(database.parkedBillItemTaxes).insert(
      ParkedBillItemTaxesCompanion.insert(
          locTaxId: 2, locItemId: 9, name: 'GST 12', tax: const d.Value(10)));

  await database.into(database.parkedBillItemTaxes).insert(
      ParkedBillItemTaxesCompanion.insert(
          locTaxId: 2, locItemId: 10, name: 'GST 12', tax: const d.Value(10)));

  await database.into(database.parkedBillItemTaxes).insert(
      ParkedBillItemTaxesCompanion.insert(
          locTaxId: 2, locItemId: 11, name: 'GST 12', tax: const d.Value(10)));

  await database.into(database.parkedBillItemTaxes).insert(
      ParkedBillItemTaxesCompanion.insert(
          locTaxId: 2, locItemId: 12, name: 'GST 12', tax: const d.Value(10)));
  await database.into(database.parkedBillItemTaxes).insert(
      ParkedBillItemTaxesCompanion.insert(
          locTaxId: 3, locItemId: 12, name: 'GST 18', tax: const d.Value(20)));

  await database.into(database.parkedBillItemTaxes).insert(
      ParkedBillItemTaxesCompanion.insert(
          locTaxId: 2, locItemId: 13, name: 'GST 12', tax: const d.Value(10)));

  await database.into(database.parkedBillItemTaxes).insert(
      ParkedBillItemTaxesCompanion.insert(
          locTaxId: 2, locItemId: 14, name: 'GST 12', tax: const d.Value(10)));

  await database.into(database.parkedBillItemTaxes).insert(
      ParkedBillItemTaxesCompanion.insert(
          locTaxId: 2, locItemId: 15, name: 'GST 12', tax: const d.Value(10)));

  await database.into(database.parkedBillItemTaxes).insert(
      ParkedBillItemTaxesCompanion.insert(
          locTaxId: 2, locItemId: 16, name: 'GST 12', tax: const d.Value(10)));
}

Future<void> basicQueryTest1() async {
  final categories = await database.select(database.productCategories).get();
  debugPrint('categories = $categories');

  final categoryNames = await database
      .select(database.productCategories)
      .map<String>((category) => category.name)
      .get();
  debugPrint('category names = $categoryNames');

  int categoryId = 1;
  final category = await (database.select(database.productCategories)
        ..where((tbl) => tbl.id.equals(categoryId)))
      .getSingleOrNull();
  debugPrint('category = $category');

  final products = await database.select(database.products).get();
  debugPrint('products = $products');

  final products1 = await (database.select(database.products)
        ..where((tbl) => tbl.price.isBiggerOrEqual(const d.Constant(50))))
      .get();
  debugPrint('products1 = $products1');

  final products2 = await (database.select(database.products)
        ..where((tbl) => tbl.id.isIn(<int>[1, 2, 3])))
      .get();
  debugPrint('products2 = $products2');

  final products3 = await (database.select(database.products)
        ..where((tbl) => tbl.id.isInExp(<d.Expression<int>>[
              const d.Constant(4),
              const d.Constant(5),
              const d.Constant(6)
            ])))
      .get();
  debugPrint('products3 = $products3');

  final products4 = await (database.select(database.products)
        ..where((tbl) => tbl.name.likeExp(const d.Constant('%pie'))))
      .get();
  debugPrint('products4 = $products4');

  final products5 = await (database.select(database.products)
        ..where((tbl) =>
            tbl.name.likeExp(const d.Constant('%apple')) |
            tbl.name.likeExp(const d.Constant('%berry'))))
      .get();
  debugPrint('products5 = $products5');

  final products6 = await (database.select(database.products)
        ..where((tbl) => d.Expression.or(<d.Expression<bool>>[
              tbl.name.likeExp(const d.Constant('%apple')),
              tbl.name.likeExp(const d.Constant('%pie')),
              tbl.name.likeExp(const d.Constant('%berry'))
            ])))
      .get();
  debugPrint('products6 = $products6');

  int catId = 3;
  final products7 = await (database.select(database.productCategoryLinks).join([
    d.innerJoin(
        database.products,
        database.productCategoryLinks.pLocalProdId
            .equalsExp(database.products.id))
  ])
        ..where(database.productCategoryLinks.pLocalCatId.equals(catId)))
      .map<Product>((e) {
    return e.readTable(database.products);
  }).get();
  debugPrint('products7 = $products7');

  final parkedBills = await ParkedBillsDao(database).getParkedBills();
  debugPrint('parked bills = $parkedBills');

  int pageSize = 3;
  int page = 3;
  int offset = pageSize * page;
  final products8 = await ((database.select(database.products)
            ..limit(pageSize, offset: offset)
          // ..orderBy([
          //   (t) => d.OrderingTerm.desc(t.name)
          // ])
          ))
      .get();
  debugPrint('products8 = $products8');

  // int productId = 21;
  // int count = await database.products.deleteWhere((tbl) => tbl.id.equals(productId));
  // int count = await (database.delete(database.products)
  //   ..where((tbl) => tbl.id.equals(productId)))
  //     .go();
  // List<Product> deletedProducts = await (database.delete(database.products)
  //       ..where((tbl) => tbl.id.equalsExp(d.Variable<int>(productId))))
  //     .goAndReturn();
  // debugPrint('Delete ProductId $productId, count = $count');

  final products9 = await database.select(database.products).get();
  debugPrint('products9 = $products9');

  // int product10Id = 2;
  // String product10Name = 'Strawberry Pie';
  // double product10Price = 100;
  // int count10 = await (database.update(database.products)
  //   ..where((tbl) => tbl.id.equals(product10Id)))
  // .write(ProductsCompanion(
  //   name: d.Value<String>(product10Name),
  //   price: d.Value<double>(product10Price),
  // ));
  // debugPrint('count10 = $count10');

  int product11Id = 2;
  String product11Name = 'Banana Pie';
  double product11Price = 150;
  List<Product> products11 = await (database.update(database.products)
        ..where((tbl) => tbl.id.equals(product11Id)))
      .writeReturning(ProductsCompanion(
    name: d.Value<String>(product11Name),
    price: d.Value<double>(product11Price),
  ));
  debugPrint('products11 = $products11');

  final products12 = await database.select(database.products).get();
  debugPrint('products12 = $products12');

  final parkedBills1 = await ParkedBillsDao(database).getParkedBills();
  debugPrint('parkedBills = $parkedBills1');

  AddParkedBillParams params =
      AddParkedBillParams(items: <AddParkedBillItemParams>[
    AddParkedBillItemParams(
        name: 'Huntsville',
        quantity: 2,
        taxes: <AddParkedBillItemTaxParams>[
          AddParkedBillItemTaxParams(locTaxId: 3, name: 'GST 18')
        ]),
    AddParkedBillItemParams(
        name: 'Mobile',
        quantity: 1,
        taxes: <AddParkedBillItemTaxParams>[
          AddParkedBillItemTaxParams(locTaxId: 2, name: 'GST 12'),
          AddParkedBillItemTaxParams(locTaxId: 4, name: 'GST 9')
        ])
  ]);

  // ParkedBill? parkedBill2 =
  //     await ParkedBillsDao(database).createParkedBill(params: params);
  // debugPrint('parkedBill2 = $parkedBill2');

  List<ParkedBill>? parkedBills3 =
      await ParkedBillsDao(database).getParkedBills();
  debugPrint('parkedBills3 = $parkedBills3');

  // await database
  //     .into(database.parkedBillItems)
  //     .insert(ParkedBillItemsCompanion.insert(
  //   locBillId: 5,
  //   name: 'ABC',
  //   subtotal: const d.Value(500),
  //   netAmount: const d.Value(200),
  //   tax: const d.Value(20),
  //   discount: const d.Value(10),
  //   quantity: const d.Value(1),
  // ));
  // await database
  //     .into(database.parkedBillItems)
  //     .insert(ParkedBillItemsCompanion.insert(
  //   locBillId: 5,
  //   name: 'DEF',
  //   subtotal: const d.Value(500),
  //   netAmount: const d.Value(200),
  //   tax: const d.Value(20),
  //   discount: const d.Value(10),
  //   quantity: const d.Value(1),
  // ));

  // await database.into(database.parkedBillItemTaxes).insert(
  //       ParkedBillItemTaxesCompanion.insert(
  //           locTaxId: 2, locItemId: 25, name: 'GST 12', tax: const d.Value(10)));
  //   await database.into(database.parkedBillItemTaxes).insert(
  //       ParkedBillItemTaxesCompanion.insert(
  //           locTaxId: 3, locItemId: 25, name: 'GST 18', tax: const d.Value(20)));
  //   await database.into(database.parkedBillItemTaxes).insert(
  //       ParkedBillItemTaxesCompanion.insert(
  //           locTaxId: 4, locItemId: 26, name: 'GST 9', tax: const d.Value(20)));
  
  // List<ParkedBillItem> deletedItems = await (database.delete(database.parkedBillItems)
  // ..where((tbl) => tbl.id.isIn(<int>[25, 26])))
  // .goAndReturn();
  // debugPrint('deletedItems = $deletedItems');

  int parkedBillId4 = 2;
  List<ParkedBillItemTax> taxes4 =
      await (database.select(database.parkedBillItemTaxes)
            ..where((tbl) => tbl.locItemId.isInQuery(
                database.selectOnly(database.parkedBillItems)
                  ..addColumns([database.parkedBillItems.id])
                  ..where(database.parkedBillItems.locBillId.equals(parkedBillId4))
      ))).get();
  debugPrint('taxes4 = $taxes4');

  var parkedBillsTable = database.alias(database.parkedBills, 'bills');
  final query = database.selectOnly(parkedBillsTable)
  ..addColumns([
    parkedBillsTable.id,
    parkedBillsTable.name
  ]);

  List<ParkedBill> bills = await query.map<ParkedBill>((row) {
    return ParkedBill(
        id: row.rawData.data['bills.id'],
        name: row.rawData.data['bills.name'],
        subtotal: 0, tax: 0, discount: 0, netAmount: 0);
  }).get();

  debugPrint('bills = $bills');

  var parkedBillsTable1 = database.alias(database.parkedBills, 'bills');
  final query1 = database.selectOnly(parkedBillsTable1)
  ..addColumns([
    parkedBillsTable1.id
  ]);

  List<int> ids1 = await query1
      .map<int>((row) => row.rawData.data['bills.id']).get();
  debugPrint('ids1 = $ids1');

  final query2 = database.selectOnly(database.parkedBills)
    ..addColumns([
      database.parkedBills.id
    ]);

  List<int> ids2 = await query2
      .map<int>((row) => row.rawData.data['parked_bills.id']).get();
  debugPrint('ids2 = $ids2');
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a blue toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // TRY THIS: Try changing the color here to a specific color (to
        // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
        // change color while the other colors stay the same.
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          //
          // TRY THIS: Invoke "debug painting" (choose the "Toggle Debug Paint"
          // action in the IDE, or press "p" in the console), to see the
          // wireframe for each widget.
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
