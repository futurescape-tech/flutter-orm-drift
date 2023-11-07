import 'package:drift/drift.dart' as d;
import 'package:drift_example/src/schemas/schemas.dart';
import 'package:flutter/material.dart';

final database = AppDatabase();

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await addProductCategories();
  await addProducts();
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

Future<void> basicQueryTest1() async {
  final categories = await database.select(database.productCategories).get();
  debugPrint('categories = $categories');

  final categoryNames = await database
      .select(database.productCategories)
      .map<String>((category) => category.name)
      .get();
  debugPrint('category names = $categoryNames');

  int categoryId = 1;
  final catagory = await (database.select(database.productCategories)
        ..where((tbl) => tbl.id.equals(categoryId)))
      .getSingleOrNull();
  debugPrint('category = $catagory');

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
  ..where((tbl) => tbl.name.likeExp(const d.Constant('%pie')))
  ).get();
  debugPrint('products4 = $products4');

  final products5 = await (database.select(database.products)
    ..where((tbl) => tbl.name.likeExp(const d.Constant('%apple'))
        | tbl.name.likeExp(const d.Constant('%berry')))
  ).get();
  debugPrint('products5 = $products5');
  
  final products6 = await (database.select(database.products)
  ..where((tbl) => d.Expression.or(
    <d.Expression<bool>>[
      tbl.name.likeExp(const d.Constant('%apple')),
      tbl.name.likeExp(const d.Constant('%pie')),
      tbl.name.likeExp(const d.Constant('%berry'))
    ]
  ))).get();
  debugPrint('products6 = $products6');
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
