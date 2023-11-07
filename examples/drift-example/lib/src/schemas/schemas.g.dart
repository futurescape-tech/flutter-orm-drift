// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'schemas.dart';

// ignore_for_file: type=lint
class $ProductsTable extends Products with TableInfo<$ProductsTable, Product> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ProductsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _prodIdMeta = const VerificationMeta('prodId');
  @override
  late final GeneratedColumn<String> prodId = GeneratedColumn<String>(
      'prod_id', aliasedName, true,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      defaultConstraints: GeneratedColumn.constraintIsAlways('UNIQUE'));
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
      'name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _priceMeta = const VerificationMeta('price');
  @override
  late final GeneratedColumn<double> price = GeneratedColumn<double>(
      'price', aliasedName, false,
      type: DriftSqlType.double,
      requiredDuringInsert: false,
      defaultValue: const Constant(0));
  static const VerificationMeta _skuMeta = const VerificationMeta('sku');
  @override
  late final GeneratedColumn<String> sku = GeneratedColumn<String>(
      'sku', aliasedName, true,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      defaultConstraints: GeneratedColumn.constraintIsAlways('UNIQUE'));
  static const VerificationMeta _shortCodeMeta =
      const VerificationMeta('shortCode');
  @override
  late final GeneratedColumn<String> shortCode = GeneratedColumn<String>(
      'short_code', aliasedName, true,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      defaultConstraints: GeneratedColumn.constraintIsAlways('UNIQUE'));
  static const VerificationMeta _imageMeta = const VerificationMeta('image');
  @override
  late final GeneratedColumn<String> image = GeneratedColumn<String>(
      'image', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _statusMeta = const VerificationMeta('status');
  @override
  late final GeneratedColumn<bool> status = GeneratedColumn<bool>(
      'status', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('CHECK ("status" IN (0, 1))'),
      defaultValue: const Constant(false));
  @override
  List<GeneratedColumn> get $columns =>
      [id, prodId, name, price, sku, shortCode, image, status];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'products';
  @override
  VerificationContext validateIntegrity(Insertable<Product> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('prod_id')) {
      context.handle(_prodIdMeta,
          prodId.isAcceptableOrUnknown(data['prod_id']!, _prodIdMeta));
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('price')) {
      context.handle(
          _priceMeta, price.isAcceptableOrUnknown(data['price']!, _priceMeta));
    }
    if (data.containsKey('sku')) {
      context.handle(
          _skuMeta, sku.isAcceptableOrUnknown(data['sku']!, _skuMeta));
    }
    if (data.containsKey('short_code')) {
      context.handle(_shortCodeMeta,
          shortCode.isAcceptableOrUnknown(data['short_code']!, _shortCodeMeta));
    }
    if (data.containsKey('image')) {
      context.handle(
          _imageMeta, image.isAcceptableOrUnknown(data['image']!, _imageMeta));
    }
    if (data.containsKey('status')) {
      context.handle(_statusMeta,
          status.isAcceptableOrUnknown(data['status']!, _statusMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Product map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Product(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      prodId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}prod_id']),
      name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name'])!,
      price: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}price'])!,
      sku: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}sku']),
      shortCode: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}short_code']),
      image: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}image']),
      status: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}status'])!,
    );
  }

  @override
  $ProductsTable createAlias(String alias) {
    return $ProductsTable(attachedDatabase, alias);
  }
}

class Product extends DataClass implements Insertable<Product> {
  final int id;
  final String? prodId;
  final String name;
  final double price;
  final String? sku;
  final String? shortCode;
  final String? image;
  final bool status;
  const Product(
      {required this.id,
      this.prodId,
      required this.name,
      required this.price,
      this.sku,
      this.shortCode,
      this.image,
      required this.status});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    if (!nullToAbsent || prodId != null) {
      map['prod_id'] = Variable<String>(prodId);
    }
    map['name'] = Variable<String>(name);
    map['price'] = Variable<double>(price);
    if (!nullToAbsent || sku != null) {
      map['sku'] = Variable<String>(sku);
    }
    if (!nullToAbsent || shortCode != null) {
      map['short_code'] = Variable<String>(shortCode);
    }
    if (!nullToAbsent || image != null) {
      map['image'] = Variable<String>(image);
    }
    map['status'] = Variable<bool>(status);
    return map;
  }

  ProductsCompanion toCompanion(bool nullToAbsent) {
    return ProductsCompanion(
      id: Value(id),
      prodId:
          prodId == null && nullToAbsent ? const Value.absent() : Value(prodId),
      name: Value(name),
      price: Value(price),
      sku: sku == null && nullToAbsent ? const Value.absent() : Value(sku),
      shortCode: shortCode == null && nullToAbsent
          ? const Value.absent()
          : Value(shortCode),
      image:
          image == null && nullToAbsent ? const Value.absent() : Value(image),
      status: Value(status),
    );
  }

  factory Product.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Product(
      id: serializer.fromJson<int>(json['id']),
      prodId: serializer.fromJson<String?>(json['prodId']),
      name: serializer.fromJson<String>(json['name']),
      price: serializer.fromJson<double>(json['price']),
      sku: serializer.fromJson<String?>(json['sku']),
      shortCode: serializer.fromJson<String?>(json['shortCode']),
      image: serializer.fromJson<String?>(json['image']),
      status: serializer.fromJson<bool>(json['status']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'prodId': serializer.toJson<String?>(prodId),
      'name': serializer.toJson<String>(name),
      'price': serializer.toJson<double>(price),
      'sku': serializer.toJson<String?>(sku),
      'shortCode': serializer.toJson<String?>(shortCode),
      'image': serializer.toJson<String?>(image),
      'status': serializer.toJson<bool>(status),
    };
  }

  Product copyWith(
          {int? id,
          Value<String?> prodId = const Value.absent(),
          String? name,
          double? price,
          Value<String?> sku = const Value.absent(),
          Value<String?> shortCode = const Value.absent(),
          Value<String?> image = const Value.absent(),
          bool? status}) =>
      Product(
        id: id ?? this.id,
        prodId: prodId.present ? prodId.value : this.prodId,
        name: name ?? this.name,
        price: price ?? this.price,
        sku: sku.present ? sku.value : this.sku,
        shortCode: shortCode.present ? shortCode.value : this.shortCode,
        image: image.present ? image.value : this.image,
        status: status ?? this.status,
      );
  @override
  String toString() {
    return (StringBuffer('Product(')
          ..write('id: $id, ')
          ..write('prodId: $prodId, ')
          ..write('name: $name, ')
          ..write('price: $price, ')
          ..write('sku: $sku, ')
          ..write('shortCode: $shortCode, ')
          ..write('image: $image, ')
          ..write('status: $status')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(id, prodId, name, price, sku, shortCode, image, status);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Product &&
          other.id == this.id &&
          other.prodId == this.prodId &&
          other.name == this.name &&
          other.price == this.price &&
          other.sku == this.sku &&
          other.shortCode == this.shortCode &&
          other.image == this.image &&
          other.status == this.status);
}

class ProductsCompanion extends UpdateCompanion<Product> {
  final Value<int> id;
  final Value<String?> prodId;
  final Value<String> name;
  final Value<double> price;
  final Value<String?> sku;
  final Value<String?> shortCode;
  final Value<String?> image;
  final Value<bool> status;
  const ProductsCompanion({
    this.id = const Value.absent(),
    this.prodId = const Value.absent(),
    this.name = const Value.absent(),
    this.price = const Value.absent(),
    this.sku = const Value.absent(),
    this.shortCode = const Value.absent(),
    this.image = const Value.absent(),
    this.status = const Value.absent(),
  });
  ProductsCompanion.insert({
    this.id = const Value.absent(),
    this.prodId = const Value.absent(),
    required String name,
    this.price = const Value.absent(),
    this.sku = const Value.absent(),
    this.shortCode = const Value.absent(),
    this.image = const Value.absent(),
    this.status = const Value.absent(),
  }) : name = Value(name);
  static Insertable<Product> custom({
    Expression<int>? id,
    Expression<String>? prodId,
    Expression<String>? name,
    Expression<double>? price,
    Expression<String>? sku,
    Expression<String>? shortCode,
    Expression<String>? image,
    Expression<bool>? status,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (prodId != null) 'prod_id': prodId,
      if (name != null) 'name': name,
      if (price != null) 'price': price,
      if (sku != null) 'sku': sku,
      if (shortCode != null) 'short_code': shortCode,
      if (image != null) 'image': image,
      if (status != null) 'status': status,
    });
  }

  ProductsCompanion copyWith(
      {Value<int>? id,
      Value<String?>? prodId,
      Value<String>? name,
      Value<double>? price,
      Value<String?>? sku,
      Value<String?>? shortCode,
      Value<String?>? image,
      Value<bool>? status}) {
    return ProductsCompanion(
      id: id ?? this.id,
      prodId: prodId ?? this.prodId,
      name: name ?? this.name,
      price: price ?? this.price,
      sku: sku ?? this.sku,
      shortCode: shortCode ?? this.shortCode,
      image: image ?? this.image,
      status: status ?? this.status,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (prodId.present) {
      map['prod_id'] = Variable<String>(prodId.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (price.present) {
      map['price'] = Variable<double>(price.value);
    }
    if (sku.present) {
      map['sku'] = Variable<String>(sku.value);
    }
    if (shortCode.present) {
      map['short_code'] = Variable<String>(shortCode.value);
    }
    if (image.present) {
      map['image'] = Variable<String>(image.value);
    }
    if (status.present) {
      map['status'] = Variable<bool>(status.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ProductsCompanion(')
          ..write('id: $id, ')
          ..write('prodId: $prodId, ')
          ..write('name: $name, ')
          ..write('price: $price, ')
          ..write('sku: $sku, ')
          ..write('shortCode: $shortCode, ')
          ..write('image: $image, ')
          ..write('status: $status')
          ..write(')'))
        .toString();
  }
}

class $ProductCategoriesTable extends ProductCategories
    with TableInfo<$ProductCategoriesTable, ProductCategory> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ProductCategoriesTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _catIdMeta = const VerificationMeta('catId');
  @override
  late final GeneratedColumn<String> catId = GeneratedColumn<String>(
      'cat_id', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
      'name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _statusMeta = const VerificationMeta('status');
  @override
  late final GeneratedColumn<bool> status = GeneratedColumn<bool>(
      'status', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('CHECK ("status" IN (0, 1))'),
      defaultValue: const Constant(true));
  @override
  List<GeneratedColumn> get $columns => [id, catId, name, status];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'product_categories';
  @override
  VerificationContext validateIntegrity(Insertable<ProductCategory> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('cat_id')) {
      context.handle(
          _catIdMeta, catId.isAcceptableOrUnknown(data['cat_id']!, _catIdMeta));
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('status')) {
      context.handle(_statusMeta,
          status.isAcceptableOrUnknown(data['status']!, _statusMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  ProductCategory map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return ProductCategory(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      catId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}cat_id']),
      name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name'])!,
      status: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}status'])!,
    );
  }

  @override
  $ProductCategoriesTable createAlias(String alias) {
    return $ProductCategoriesTable(attachedDatabase, alias);
  }
}

class ProductCategory extends DataClass implements Insertable<ProductCategory> {
  final int id;
  final String? catId;
  final String name;
  final bool status;
  const ProductCategory(
      {required this.id, this.catId, required this.name, required this.status});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    if (!nullToAbsent || catId != null) {
      map['cat_id'] = Variable<String>(catId);
    }
    map['name'] = Variable<String>(name);
    map['status'] = Variable<bool>(status);
    return map;
  }

  ProductCategoriesCompanion toCompanion(bool nullToAbsent) {
    return ProductCategoriesCompanion(
      id: Value(id),
      catId:
          catId == null && nullToAbsent ? const Value.absent() : Value(catId),
      name: Value(name),
      status: Value(status),
    );
  }

  factory ProductCategory.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return ProductCategory(
      id: serializer.fromJson<int>(json['id']),
      catId: serializer.fromJson<String?>(json['catId']),
      name: serializer.fromJson<String>(json['name']),
      status: serializer.fromJson<bool>(json['status']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'catId': serializer.toJson<String?>(catId),
      'name': serializer.toJson<String>(name),
      'status': serializer.toJson<bool>(status),
    };
  }

  ProductCategory copyWith(
          {int? id,
          Value<String?> catId = const Value.absent(),
          String? name,
          bool? status}) =>
      ProductCategory(
        id: id ?? this.id,
        catId: catId.present ? catId.value : this.catId,
        name: name ?? this.name,
        status: status ?? this.status,
      );
  @override
  String toString() {
    return (StringBuffer('ProductCategory(')
          ..write('id: $id, ')
          ..write('catId: $catId, ')
          ..write('name: $name, ')
          ..write('status: $status')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, catId, name, status);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ProductCategory &&
          other.id == this.id &&
          other.catId == this.catId &&
          other.name == this.name &&
          other.status == this.status);
}

class ProductCategoriesCompanion extends UpdateCompanion<ProductCategory> {
  final Value<int> id;
  final Value<String?> catId;
  final Value<String> name;
  final Value<bool> status;
  const ProductCategoriesCompanion({
    this.id = const Value.absent(),
    this.catId = const Value.absent(),
    this.name = const Value.absent(),
    this.status = const Value.absent(),
  });
  ProductCategoriesCompanion.insert({
    this.id = const Value.absent(),
    this.catId = const Value.absent(),
    required String name,
    this.status = const Value.absent(),
  }) : name = Value(name);
  static Insertable<ProductCategory> custom({
    Expression<int>? id,
    Expression<String>? catId,
    Expression<String>? name,
    Expression<bool>? status,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (catId != null) 'cat_id': catId,
      if (name != null) 'name': name,
      if (status != null) 'status': status,
    });
  }

  ProductCategoriesCompanion copyWith(
      {Value<int>? id,
      Value<String?>? catId,
      Value<String>? name,
      Value<bool>? status}) {
    return ProductCategoriesCompanion(
      id: id ?? this.id,
      catId: catId ?? this.catId,
      name: name ?? this.name,
      status: status ?? this.status,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (catId.present) {
      map['cat_id'] = Variable<String>(catId.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (status.present) {
      map['status'] = Variable<bool>(status.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ProductCategoriesCompanion(')
          ..write('id: $id, ')
          ..write('catId: $catId, ')
          ..write('name: $name, ')
          ..write('status: $status')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(e);
  late final $ProductsTable products = $ProductsTable(this);
  late final $ProductCategoriesTable productCategories =
      $ProductCategoriesTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities =>
      [products, productCategories];
}
