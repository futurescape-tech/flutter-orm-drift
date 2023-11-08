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

class $ProductCategoryLinksTable extends ProductCategoryLinks
    with TableInfo<$ProductCategoryLinksTable, ProductCategoryLink> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ProductCategoryLinksTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _pLocalCatIdMeta =
      const VerificationMeta('pLocalCatId');
  @override
  late final GeneratedColumn<int> pLocalCatId = GeneratedColumn<int>(
      'p_local_cat_id', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: true,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'REFERENCES product_categories (id)'));
  static const VerificationMeta _pLocalProdIdMeta =
      const VerificationMeta('pLocalProdId');
  @override
  late final GeneratedColumn<int> pLocalProdId = GeneratedColumn<int>(
      'p_local_prod_id', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: true,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('REFERENCES products (id)'));
  @override
  List<GeneratedColumn> get $columns => [id, pLocalCatId, pLocalProdId];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'product_category_links';
  @override
  VerificationContext validateIntegrity(
      Insertable<ProductCategoryLink> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('p_local_cat_id')) {
      context.handle(
          _pLocalCatIdMeta,
          pLocalCatId.isAcceptableOrUnknown(
              data['p_local_cat_id']!, _pLocalCatIdMeta));
    } else if (isInserting) {
      context.missing(_pLocalCatIdMeta);
    }
    if (data.containsKey('p_local_prod_id')) {
      context.handle(
          _pLocalProdIdMeta,
          pLocalProdId.isAcceptableOrUnknown(
              data['p_local_prod_id']!, _pLocalProdIdMeta));
    } else if (isInserting) {
      context.missing(_pLocalProdIdMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  ProductCategoryLink map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return ProductCategoryLink(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      pLocalCatId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}p_local_cat_id'])!,
      pLocalProdId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}p_local_prod_id'])!,
    );
  }

  @override
  $ProductCategoryLinksTable createAlias(String alias) {
    return $ProductCategoryLinksTable(attachedDatabase, alias);
  }
}

class ProductCategoryLink extends DataClass
    implements Insertable<ProductCategoryLink> {
  final int id;
  final int pLocalCatId;
  final int pLocalProdId;
  const ProductCategoryLink(
      {required this.id,
      required this.pLocalCatId,
      required this.pLocalProdId});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['p_local_cat_id'] = Variable<int>(pLocalCatId);
    map['p_local_prod_id'] = Variable<int>(pLocalProdId);
    return map;
  }

  ProductCategoryLinksCompanion toCompanion(bool nullToAbsent) {
    return ProductCategoryLinksCompanion(
      id: Value(id),
      pLocalCatId: Value(pLocalCatId),
      pLocalProdId: Value(pLocalProdId),
    );
  }

  factory ProductCategoryLink.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return ProductCategoryLink(
      id: serializer.fromJson<int>(json['id']),
      pLocalCatId: serializer.fromJson<int>(json['pLocalCatId']),
      pLocalProdId: serializer.fromJson<int>(json['pLocalProdId']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'pLocalCatId': serializer.toJson<int>(pLocalCatId),
      'pLocalProdId': serializer.toJson<int>(pLocalProdId),
    };
  }

  ProductCategoryLink copyWith(
          {int? id, int? pLocalCatId, int? pLocalProdId}) =>
      ProductCategoryLink(
        id: id ?? this.id,
        pLocalCatId: pLocalCatId ?? this.pLocalCatId,
        pLocalProdId: pLocalProdId ?? this.pLocalProdId,
      );
  @override
  String toString() {
    return (StringBuffer('ProductCategoryLink(')
          ..write('id: $id, ')
          ..write('pLocalCatId: $pLocalCatId, ')
          ..write('pLocalProdId: $pLocalProdId')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, pLocalCatId, pLocalProdId);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ProductCategoryLink &&
          other.id == this.id &&
          other.pLocalCatId == this.pLocalCatId &&
          other.pLocalProdId == this.pLocalProdId);
}

class ProductCategoryLinksCompanion
    extends UpdateCompanion<ProductCategoryLink> {
  final Value<int> id;
  final Value<int> pLocalCatId;
  final Value<int> pLocalProdId;
  const ProductCategoryLinksCompanion({
    this.id = const Value.absent(),
    this.pLocalCatId = const Value.absent(),
    this.pLocalProdId = const Value.absent(),
  });
  ProductCategoryLinksCompanion.insert({
    this.id = const Value.absent(),
    required int pLocalCatId,
    required int pLocalProdId,
  })  : pLocalCatId = Value(pLocalCatId),
        pLocalProdId = Value(pLocalProdId);
  static Insertable<ProductCategoryLink> custom({
    Expression<int>? id,
    Expression<int>? pLocalCatId,
    Expression<int>? pLocalProdId,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (pLocalCatId != null) 'p_local_cat_id': pLocalCatId,
      if (pLocalProdId != null) 'p_local_prod_id': pLocalProdId,
    });
  }

  ProductCategoryLinksCompanion copyWith(
      {Value<int>? id, Value<int>? pLocalCatId, Value<int>? pLocalProdId}) {
    return ProductCategoryLinksCompanion(
      id: id ?? this.id,
      pLocalCatId: pLocalCatId ?? this.pLocalCatId,
      pLocalProdId: pLocalProdId ?? this.pLocalProdId,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (pLocalCatId.present) {
      map['p_local_cat_id'] = Variable<int>(pLocalCatId.value);
    }
    if (pLocalProdId.present) {
      map['p_local_prod_id'] = Variable<int>(pLocalProdId.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ProductCategoryLinksCompanion(')
          ..write('id: $id, ')
          ..write('pLocalCatId: $pLocalCatId, ')
          ..write('pLocalProdId: $pLocalProdId')
          ..write(')'))
        .toString();
  }
}

class $ParkedBillsTable extends ParkedBills
    with TableInfo<$ParkedBillsTable, ParkedBill> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ParkedBillsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _billIdMeta = const VerificationMeta('billId');
  @override
  late final GeneratedColumn<String> billId = GeneratedColumn<String>(
      'bill_id', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _billNameMeta =
      const VerificationMeta('billName');
  @override
  late final GeneratedColumn<String> billName = GeneratedColumn<String>(
      'bill_name', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _subtotalMeta =
      const VerificationMeta('subtotal');
  @override
  late final GeneratedColumn<double> subtotal = GeneratedColumn<double>(
      'subtotal', aliasedName, false,
      type: DriftSqlType.double,
      requiredDuringInsert: false,
      defaultValue: const Constant(0));
  static const VerificationMeta _discountMeta =
      const VerificationMeta('discount');
  @override
  late final GeneratedColumn<double> discount = GeneratedColumn<double>(
      'discount', aliasedName, false,
      type: DriftSqlType.double,
      requiredDuringInsert: false,
      defaultValue: const Constant(0));
  static const VerificationMeta _taxMeta = const VerificationMeta('tax');
  @override
  late final GeneratedColumn<double> tax = GeneratedColumn<double>(
      'tax', aliasedName, false,
      type: DriftSqlType.double,
      requiredDuringInsert: false,
      defaultValue: const Constant(0));
  static const VerificationMeta _netAmountMeta =
      const VerificationMeta('netAmount');
  @override
  late final GeneratedColumn<double> netAmount = GeneratedColumn<double>(
      'net_amount', aliasedName, false,
      type: DriftSqlType.double,
      requiredDuringInsert: false,
      defaultValue: const Constant(0));
  @override
  List<GeneratedColumn> get $columns =>
      [id, billId, billName, subtotal, discount, tax, netAmount];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'parked_bills';
  @override
  VerificationContext validateIntegrity(Insertable<ParkedBill> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('bill_id')) {
      context.handle(_billIdMeta,
          billId.isAcceptableOrUnknown(data['bill_id']!, _billIdMeta));
    }
    if (data.containsKey('bill_name')) {
      context.handle(_billNameMeta,
          billName.isAcceptableOrUnknown(data['bill_name']!, _billNameMeta));
    }
    if (data.containsKey('subtotal')) {
      context.handle(_subtotalMeta,
          subtotal.isAcceptableOrUnknown(data['subtotal']!, _subtotalMeta));
    }
    if (data.containsKey('discount')) {
      context.handle(_discountMeta,
          discount.isAcceptableOrUnknown(data['discount']!, _discountMeta));
    }
    if (data.containsKey('tax')) {
      context.handle(
          _taxMeta, tax.isAcceptableOrUnknown(data['tax']!, _taxMeta));
    }
    if (data.containsKey('net_amount')) {
      context.handle(_netAmountMeta,
          netAmount.isAcceptableOrUnknown(data['net_amount']!, _netAmountMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  ParkedBill map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return ParkedBill(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      billId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}bill_id']),
      billName: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}bill_name']),
      subtotal: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}subtotal'])!,
      discount: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}discount'])!,
      tax: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}tax'])!,
      netAmount: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}net_amount'])!,
    );
  }

  @override
  $ParkedBillsTable createAlias(String alias) {
    return $ParkedBillsTable(attachedDatabase, alias);
  }
}

class ParkedBill extends DataClass implements Insertable<ParkedBill> {
  final int id;
  final String? billId;
  final String? billName;
  final double subtotal;
  final double discount;
  final double tax;
  final double netAmount;
  const ParkedBill(
      {required this.id,
      this.billId,
      this.billName,
      required this.subtotal,
      required this.discount,
      required this.tax,
      required this.netAmount});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    if (!nullToAbsent || billId != null) {
      map['bill_id'] = Variable<String>(billId);
    }
    if (!nullToAbsent || billName != null) {
      map['bill_name'] = Variable<String>(billName);
    }
    map['subtotal'] = Variable<double>(subtotal);
    map['discount'] = Variable<double>(discount);
    map['tax'] = Variable<double>(tax);
    map['net_amount'] = Variable<double>(netAmount);
    return map;
  }

  ParkedBillsCompanion toCompanion(bool nullToAbsent) {
    return ParkedBillsCompanion(
      id: Value(id),
      billId:
          billId == null && nullToAbsent ? const Value.absent() : Value(billId),
      billName: billName == null && nullToAbsent
          ? const Value.absent()
          : Value(billName),
      subtotal: Value(subtotal),
      discount: Value(discount),
      tax: Value(tax),
      netAmount: Value(netAmount),
    );
  }

  factory ParkedBill.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return ParkedBill(
      id: serializer.fromJson<int>(json['id']),
      billId: serializer.fromJson<String?>(json['billId']),
      billName: serializer.fromJson<String?>(json['billName']),
      subtotal: serializer.fromJson<double>(json['subtotal']),
      discount: serializer.fromJson<double>(json['discount']),
      tax: serializer.fromJson<double>(json['tax']),
      netAmount: serializer.fromJson<double>(json['netAmount']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'billId': serializer.toJson<String?>(billId),
      'billName': serializer.toJson<String?>(billName),
      'subtotal': serializer.toJson<double>(subtotal),
      'discount': serializer.toJson<double>(discount),
      'tax': serializer.toJson<double>(tax),
      'netAmount': serializer.toJson<double>(netAmount),
    };
  }

  ParkedBill copyWith(
          {int? id,
          Value<String?> billId = const Value.absent(),
          Value<String?> billName = const Value.absent(),
          double? subtotal,
          double? discount,
          double? tax,
          double? netAmount}) =>
      ParkedBill(
        id: id ?? this.id,
        billId: billId.present ? billId.value : this.billId,
        billName: billName.present ? billName.value : this.billName,
        subtotal: subtotal ?? this.subtotal,
        discount: discount ?? this.discount,
        tax: tax ?? this.tax,
        netAmount: netAmount ?? this.netAmount,
      );
  @override
  String toString() {
    return (StringBuffer('ParkedBill(')
          ..write('id: $id, ')
          ..write('billId: $billId, ')
          ..write('billName: $billName, ')
          ..write('subtotal: $subtotal, ')
          ..write('discount: $discount, ')
          ..write('tax: $tax, ')
          ..write('netAmount: $netAmount')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(id, billId, billName, subtotal, discount, tax, netAmount);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ParkedBill &&
          other.id == this.id &&
          other.billId == this.billId &&
          other.billName == this.billName &&
          other.subtotal == this.subtotal &&
          other.discount == this.discount &&
          other.tax == this.tax &&
          other.netAmount == this.netAmount);
}

class ParkedBillsCompanion extends UpdateCompanion<ParkedBill> {
  final Value<int> id;
  final Value<String?> billId;
  final Value<String?> billName;
  final Value<double> subtotal;
  final Value<double> discount;
  final Value<double> tax;
  final Value<double> netAmount;
  const ParkedBillsCompanion({
    this.id = const Value.absent(),
    this.billId = const Value.absent(),
    this.billName = const Value.absent(),
    this.subtotal = const Value.absent(),
    this.discount = const Value.absent(),
    this.tax = const Value.absent(),
    this.netAmount = const Value.absent(),
  });
  ParkedBillsCompanion.insert({
    this.id = const Value.absent(),
    this.billId = const Value.absent(),
    this.billName = const Value.absent(),
    this.subtotal = const Value.absent(),
    this.discount = const Value.absent(),
    this.tax = const Value.absent(),
    this.netAmount = const Value.absent(),
  });
  static Insertable<ParkedBill> custom({
    Expression<int>? id,
    Expression<String>? billId,
    Expression<String>? billName,
    Expression<double>? subtotal,
    Expression<double>? discount,
    Expression<double>? tax,
    Expression<double>? netAmount,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (billId != null) 'bill_id': billId,
      if (billName != null) 'bill_name': billName,
      if (subtotal != null) 'subtotal': subtotal,
      if (discount != null) 'discount': discount,
      if (tax != null) 'tax': tax,
      if (netAmount != null) 'net_amount': netAmount,
    });
  }

  ParkedBillsCompanion copyWith(
      {Value<int>? id,
      Value<String?>? billId,
      Value<String?>? billName,
      Value<double>? subtotal,
      Value<double>? discount,
      Value<double>? tax,
      Value<double>? netAmount}) {
    return ParkedBillsCompanion(
      id: id ?? this.id,
      billId: billId ?? this.billId,
      billName: billName ?? this.billName,
      subtotal: subtotal ?? this.subtotal,
      discount: discount ?? this.discount,
      tax: tax ?? this.tax,
      netAmount: netAmount ?? this.netAmount,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (billId.present) {
      map['bill_id'] = Variable<String>(billId.value);
    }
    if (billName.present) {
      map['bill_name'] = Variable<String>(billName.value);
    }
    if (subtotal.present) {
      map['subtotal'] = Variable<double>(subtotal.value);
    }
    if (discount.present) {
      map['discount'] = Variable<double>(discount.value);
    }
    if (tax.present) {
      map['tax'] = Variable<double>(tax.value);
    }
    if (netAmount.present) {
      map['net_amount'] = Variable<double>(netAmount.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ParkedBillsCompanion(')
          ..write('id: $id, ')
          ..write('billId: $billId, ')
          ..write('billName: $billName, ')
          ..write('subtotal: $subtotal, ')
          ..write('discount: $discount, ')
          ..write('tax: $tax, ')
          ..write('netAmount: $netAmount')
          ..write(')'))
        .toString();
  }
}

class $ParkedBillItemsTable extends ParkedBillItems
    with TableInfo<$ParkedBillItemsTable, ParkedBillItem> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ParkedBillItemsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _itemIdMeta = const VerificationMeta('itemId');
  @override
  late final GeneratedColumn<String> itemId = GeneratedColumn<String>(
      'item_id', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _pLocalBillIdMeta =
      const VerificationMeta('pLocalBillId');
  @override
  late final GeneratedColumn<int> pLocalBillId = GeneratedColumn<int>(
      'p_local_bill_id', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: true,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('REFERENCES parked_bills (id)'));
  static const VerificationMeta _pBillIdMeta =
      const VerificationMeta('pBillId');
  @override
  late final GeneratedColumn<String> pBillId = GeneratedColumn<String>(
      'p_bill_id', aliasedName, true,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'REFERENCES parked_bills (bill_id)'));
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
      'name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _imageMeta = const VerificationMeta('image');
  @override
  late final GeneratedColumn<String> image = GeneratedColumn<String>(
      'image', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _quantityMeta =
      const VerificationMeta('quantity');
  @override
  late final GeneratedColumn<double> quantity = GeneratedColumn<double>(
      'quantity', aliasedName, false,
      type: DriftSqlType.double,
      requiredDuringInsert: false,
      defaultValue: const Constant(0));
  static const VerificationMeta _subtotalMeta =
      const VerificationMeta('subtotal');
  @override
  late final GeneratedColumn<double> subtotal = GeneratedColumn<double>(
      'subtotal', aliasedName, false,
      type: DriftSqlType.double,
      requiredDuringInsert: false,
      defaultValue: const Constant(0));
  static const VerificationMeta _discountMeta =
      const VerificationMeta('discount');
  @override
  late final GeneratedColumn<double> discount = GeneratedColumn<double>(
      'discount', aliasedName, false,
      type: DriftSqlType.double,
      requiredDuringInsert: false,
      defaultValue: const Constant(0));
  static const VerificationMeta _taxMeta = const VerificationMeta('tax');
  @override
  late final GeneratedColumn<double> tax = GeneratedColumn<double>(
      'tax', aliasedName, false,
      type: DriftSqlType.double,
      requiredDuringInsert: false,
      defaultValue: const Constant(0));
  static const VerificationMeta _netAmountMeta =
      const VerificationMeta('netAmount');
  @override
  late final GeneratedColumn<double> netAmount = GeneratedColumn<double>(
      'net_amount', aliasedName, false,
      type: DriftSqlType.double,
      requiredDuringInsert: false,
      defaultValue: const Constant(0));
  @override
  List<GeneratedColumn> get $columns => [
        id,
        itemId,
        pLocalBillId,
        pBillId,
        name,
        image,
        quantity,
        subtotal,
        discount,
        tax,
        netAmount
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'parked_bill_items';
  @override
  VerificationContext validateIntegrity(Insertable<ParkedBillItem> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('item_id')) {
      context.handle(_itemIdMeta,
          itemId.isAcceptableOrUnknown(data['item_id']!, _itemIdMeta));
    }
    if (data.containsKey('p_local_bill_id')) {
      context.handle(
          _pLocalBillIdMeta,
          pLocalBillId.isAcceptableOrUnknown(
              data['p_local_bill_id']!, _pLocalBillIdMeta));
    } else if (isInserting) {
      context.missing(_pLocalBillIdMeta);
    }
    if (data.containsKey('p_bill_id')) {
      context.handle(_pBillIdMeta,
          pBillId.isAcceptableOrUnknown(data['p_bill_id']!, _pBillIdMeta));
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('image')) {
      context.handle(
          _imageMeta, image.isAcceptableOrUnknown(data['image']!, _imageMeta));
    }
    if (data.containsKey('quantity')) {
      context.handle(_quantityMeta,
          quantity.isAcceptableOrUnknown(data['quantity']!, _quantityMeta));
    }
    if (data.containsKey('subtotal')) {
      context.handle(_subtotalMeta,
          subtotal.isAcceptableOrUnknown(data['subtotal']!, _subtotalMeta));
    }
    if (data.containsKey('discount')) {
      context.handle(_discountMeta,
          discount.isAcceptableOrUnknown(data['discount']!, _discountMeta));
    }
    if (data.containsKey('tax')) {
      context.handle(
          _taxMeta, tax.isAcceptableOrUnknown(data['tax']!, _taxMeta));
    }
    if (data.containsKey('net_amount')) {
      context.handle(_netAmountMeta,
          netAmount.isAcceptableOrUnknown(data['net_amount']!, _netAmountMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  ParkedBillItem map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return ParkedBillItem(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      itemId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}item_id']),
      pLocalBillId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}p_local_bill_id'])!,
      pBillId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}p_bill_id']),
      name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name'])!,
      image: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}image']),
      quantity: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}quantity'])!,
      subtotal: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}subtotal'])!,
      discount: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}discount'])!,
      tax: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}tax'])!,
      netAmount: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}net_amount'])!,
    );
  }

  @override
  $ParkedBillItemsTable createAlias(String alias) {
    return $ParkedBillItemsTable(attachedDatabase, alias);
  }
}

class ParkedBillItem extends DataClass implements Insertable<ParkedBillItem> {
  final int id;
  final String? itemId;
  final int pLocalBillId;
  final String? pBillId;
  final String name;
  final String? image;
  final double quantity;
  final double subtotal;
  final double discount;
  final double tax;
  final double netAmount;
  const ParkedBillItem(
      {required this.id,
      this.itemId,
      required this.pLocalBillId,
      this.pBillId,
      required this.name,
      this.image,
      required this.quantity,
      required this.subtotal,
      required this.discount,
      required this.tax,
      required this.netAmount});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    if (!nullToAbsent || itemId != null) {
      map['item_id'] = Variable<String>(itemId);
    }
    map['p_local_bill_id'] = Variable<int>(pLocalBillId);
    if (!nullToAbsent || pBillId != null) {
      map['p_bill_id'] = Variable<String>(pBillId);
    }
    map['name'] = Variable<String>(name);
    if (!nullToAbsent || image != null) {
      map['image'] = Variable<String>(image);
    }
    map['quantity'] = Variable<double>(quantity);
    map['subtotal'] = Variable<double>(subtotal);
    map['discount'] = Variable<double>(discount);
    map['tax'] = Variable<double>(tax);
    map['net_amount'] = Variable<double>(netAmount);
    return map;
  }

  ParkedBillItemsCompanion toCompanion(bool nullToAbsent) {
    return ParkedBillItemsCompanion(
      id: Value(id),
      itemId:
          itemId == null && nullToAbsent ? const Value.absent() : Value(itemId),
      pLocalBillId: Value(pLocalBillId),
      pBillId: pBillId == null && nullToAbsent
          ? const Value.absent()
          : Value(pBillId),
      name: Value(name),
      image:
          image == null && nullToAbsent ? const Value.absent() : Value(image),
      quantity: Value(quantity),
      subtotal: Value(subtotal),
      discount: Value(discount),
      tax: Value(tax),
      netAmount: Value(netAmount),
    );
  }

  factory ParkedBillItem.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return ParkedBillItem(
      id: serializer.fromJson<int>(json['id']),
      itemId: serializer.fromJson<String?>(json['itemId']),
      pLocalBillId: serializer.fromJson<int>(json['pLocalBillId']),
      pBillId: serializer.fromJson<String?>(json['pBillId']),
      name: serializer.fromJson<String>(json['name']),
      image: serializer.fromJson<String?>(json['image']),
      quantity: serializer.fromJson<double>(json['quantity']),
      subtotal: serializer.fromJson<double>(json['subtotal']),
      discount: serializer.fromJson<double>(json['discount']),
      tax: serializer.fromJson<double>(json['tax']),
      netAmount: serializer.fromJson<double>(json['netAmount']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'itemId': serializer.toJson<String?>(itemId),
      'pLocalBillId': serializer.toJson<int>(pLocalBillId),
      'pBillId': serializer.toJson<String?>(pBillId),
      'name': serializer.toJson<String>(name),
      'image': serializer.toJson<String?>(image),
      'quantity': serializer.toJson<double>(quantity),
      'subtotal': serializer.toJson<double>(subtotal),
      'discount': serializer.toJson<double>(discount),
      'tax': serializer.toJson<double>(tax),
      'netAmount': serializer.toJson<double>(netAmount),
    };
  }

  ParkedBillItem copyWith(
          {int? id,
          Value<String?> itemId = const Value.absent(),
          int? pLocalBillId,
          Value<String?> pBillId = const Value.absent(),
          String? name,
          Value<String?> image = const Value.absent(),
          double? quantity,
          double? subtotal,
          double? discount,
          double? tax,
          double? netAmount}) =>
      ParkedBillItem(
        id: id ?? this.id,
        itemId: itemId.present ? itemId.value : this.itemId,
        pLocalBillId: pLocalBillId ?? this.pLocalBillId,
        pBillId: pBillId.present ? pBillId.value : this.pBillId,
        name: name ?? this.name,
        image: image.present ? image.value : this.image,
        quantity: quantity ?? this.quantity,
        subtotal: subtotal ?? this.subtotal,
        discount: discount ?? this.discount,
        tax: tax ?? this.tax,
        netAmount: netAmount ?? this.netAmount,
      );
  @override
  String toString() {
    return (StringBuffer('ParkedBillItem(')
          ..write('id: $id, ')
          ..write('itemId: $itemId, ')
          ..write('pLocalBillId: $pLocalBillId, ')
          ..write('pBillId: $pBillId, ')
          ..write('name: $name, ')
          ..write('image: $image, ')
          ..write('quantity: $quantity, ')
          ..write('subtotal: $subtotal, ')
          ..write('discount: $discount, ')
          ..write('tax: $tax, ')
          ..write('netAmount: $netAmount')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, itemId, pLocalBillId, pBillId, name,
      image, quantity, subtotal, discount, tax, netAmount);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ParkedBillItem &&
          other.id == this.id &&
          other.itemId == this.itemId &&
          other.pLocalBillId == this.pLocalBillId &&
          other.pBillId == this.pBillId &&
          other.name == this.name &&
          other.image == this.image &&
          other.quantity == this.quantity &&
          other.subtotal == this.subtotal &&
          other.discount == this.discount &&
          other.tax == this.tax &&
          other.netAmount == this.netAmount);
}

class ParkedBillItemsCompanion extends UpdateCompanion<ParkedBillItem> {
  final Value<int> id;
  final Value<String?> itemId;
  final Value<int> pLocalBillId;
  final Value<String?> pBillId;
  final Value<String> name;
  final Value<String?> image;
  final Value<double> quantity;
  final Value<double> subtotal;
  final Value<double> discount;
  final Value<double> tax;
  final Value<double> netAmount;
  const ParkedBillItemsCompanion({
    this.id = const Value.absent(),
    this.itemId = const Value.absent(),
    this.pLocalBillId = const Value.absent(),
    this.pBillId = const Value.absent(),
    this.name = const Value.absent(),
    this.image = const Value.absent(),
    this.quantity = const Value.absent(),
    this.subtotal = const Value.absent(),
    this.discount = const Value.absent(),
    this.tax = const Value.absent(),
    this.netAmount = const Value.absent(),
  });
  ParkedBillItemsCompanion.insert({
    this.id = const Value.absent(),
    this.itemId = const Value.absent(),
    required int pLocalBillId,
    this.pBillId = const Value.absent(),
    required String name,
    this.image = const Value.absent(),
    this.quantity = const Value.absent(),
    this.subtotal = const Value.absent(),
    this.discount = const Value.absent(),
    this.tax = const Value.absent(),
    this.netAmount = const Value.absent(),
  })  : pLocalBillId = Value(pLocalBillId),
        name = Value(name);
  static Insertable<ParkedBillItem> custom({
    Expression<int>? id,
    Expression<String>? itemId,
    Expression<int>? pLocalBillId,
    Expression<String>? pBillId,
    Expression<String>? name,
    Expression<String>? image,
    Expression<double>? quantity,
    Expression<double>? subtotal,
    Expression<double>? discount,
    Expression<double>? tax,
    Expression<double>? netAmount,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (itemId != null) 'item_id': itemId,
      if (pLocalBillId != null) 'p_local_bill_id': pLocalBillId,
      if (pBillId != null) 'p_bill_id': pBillId,
      if (name != null) 'name': name,
      if (image != null) 'image': image,
      if (quantity != null) 'quantity': quantity,
      if (subtotal != null) 'subtotal': subtotal,
      if (discount != null) 'discount': discount,
      if (tax != null) 'tax': tax,
      if (netAmount != null) 'net_amount': netAmount,
    });
  }

  ParkedBillItemsCompanion copyWith(
      {Value<int>? id,
      Value<String?>? itemId,
      Value<int>? pLocalBillId,
      Value<String?>? pBillId,
      Value<String>? name,
      Value<String?>? image,
      Value<double>? quantity,
      Value<double>? subtotal,
      Value<double>? discount,
      Value<double>? tax,
      Value<double>? netAmount}) {
    return ParkedBillItemsCompanion(
      id: id ?? this.id,
      itemId: itemId ?? this.itemId,
      pLocalBillId: pLocalBillId ?? this.pLocalBillId,
      pBillId: pBillId ?? this.pBillId,
      name: name ?? this.name,
      image: image ?? this.image,
      quantity: quantity ?? this.quantity,
      subtotal: subtotal ?? this.subtotal,
      discount: discount ?? this.discount,
      tax: tax ?? this.tax,
      netAmount: netAmount ?? this.netAmount,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (itemId.present) {
      map['item_id'] = Variable<String>(itemId.value);
    }
    if (pLocalBillId.present) {
      map['p_local_bill_id'] = Variable<int>(pLocalBillId.value);
    }
    if (pBillId.present) {
      map['p_bill_id'] = Variable<String>(pBillId.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (image.present) {
      map['image'] = Variable<String>(image.value);
    }
    if (quantity.present) {
      map['quantity'] = Variable<double>(quantity.value);
    }
    if (subtotal.present) {
      map['subtotal'] = Variable<double>(subtotal.value);
    }
    if (discount.present) {
      map['discount'] = Variable<double>(discount.value);
    }
    if (tax.present) {
      map['tax'] = Variable<double>(tax.value);
    }
    if (netAmount.present) {
      map['net_amount'] = Variable<double>(netAmount.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ParkedBillItemsCompanion(')
          ..write('id: $id, ')
          ..write('itemId: $itemId, ')
          ..write('pLocalBillId: $pLocalBillId, ')
          ..write('pBillId: $pBillId, ')
          ..write('name: $name, ')
          ..write('image: $image, ')
          ..write('quantity: $quantity, ')
          ..write('subtotal: $subtotal, ')
          ..write('discount: $discount, ')
          ..write('tax: $tax, ')
          ..write('netAmount: $netAmount')
          ..write(')'))
        .toString();
  }
}

class $ParkedBillItemTaxesTable extends ParkedBillItemTaxes
    with TableInfo<$ParkedBillItemTaxesTable, ParkedBillItemTax> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ParkedBillItemTaxesTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _taxIdMeta = const VerificationMeta('taxId');
  @override
  late final GeneratedColumn<String> taxId = GeneratedColumn<String>(
      'tax_id', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _pLocalItemIdMeta =
      const VerificationMeta('pLocalItemId');
  @override
  late final GeneratedColumn<int> pLocalItemId = GeneratedColumn<int>(
      'p_local_item_id', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: true,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'REFERENCES parked_bill_items (id)'));
  static const VerificationMeta _pItemIdMeta =
      const VerificationMeta('pItemId');
  @override
  late final GeneratedColumn<String> pItemId = GeneratedColumn<String>(
      'p_item_id', aliasedName, true,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'REFERENCES parked_bill_items (item_id)'));
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
      'name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _methodMeta = const VerificationMeta('method');
  @override
  late final GeneratedColumn<String> method = GeneratedColumn<String>(
      'method', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _taxMeta = const VerificationMeta('tax');
  @override
  late final GeneratedColumn<double> tax = GeneratedColumn<double>(
      'tax', aliasedName, false,
      type: DriftSqlType.double,
      requiredDuringInsert: false,
      defaultValue: const Constant(0));
  @override
  List<GeneratedColumn> get $columns =>
      [id, taxId, pLocalItemId, pItemId, name, method, tax];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'parked_bill_item_taxes';
  @override
  VerificationContext validateIntegrity(Insertable<ParkedBillItemTax> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('tax_id')) {
      context.handle(
          _taxIdMeta, taxId.isAcceptableOrUnknown(data['tax_id']!, _taxIdMeta));
    }
    if (data.containsKey('p_local_item_id')) {
      context.handle(
          _pLocalItemIdMeta,
          pLocalItemId.isAcceptableOrUnknown(
              data['p_local_item_id']!, _pLocalItemIdMeta));
    } else if (isInserting) {
      context.missing(_pLocalItemIdMeta);
    }
    if (data.containsKey('p_item_id')) {
      context.handle(_pItemIdMeta,
          pItemId.isAcceptableOrUnknown(data['p_item_id']!, _pItemIdMeta));
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('method')) {
      context.handle(_methodMeta,
          method.isAcceptableOrUnknown(data['method']!, _methodMeta));
    } else if (isInserting) {
      context.missing(_methodMeta);
    }
    if (data.containsKey('tax')) {
      context.handle(
          _taxMeta, tax.isAcceptableOrUnknown(data['tax']!, _taxMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  ParkedBillItemTax map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return ParkedBillItemTax(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      taxId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}tax_id']),
      pLocalItemId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}p_local_item_id'])!,
      pItemId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}p_item_id']),
      name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name'])!,
      method: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}method'])!,
      tax: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}tax'])!,
    );
  }

  @override
  $ParkedBillItemTaxesTable createAlias(String alias) {
    return $ParkedBillItemTaxesTable(attachedDatabase, alias);
  }
}

class ParkedBillItemTax extends DataClass
    implements Insertable<ParkedBillItemTax> {
  final int id;
  final String? taxId;
  final int pLocalItemId;
  final String? pItemId;
  final String name;
  final String method;
  final double tax;
  const ParkedBillItemTax(
      {required this.id,
      this.taxId,
      required this.pLocalItemId,
      this.pItemId,
      required this.name,
      required this.method,
      required this.tax});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    if (!nullToAbsent || taxId != null) {
      map['tax_id'] = Variable<String>(taxId);
    }
    map['p_local_item_id'] = Variable<int>(pLocalItemId);
    if (!nullToAbsent || pItemId != null) {
      map['p_item_id'] = Variable<String>(pItemId);
    }
    map['name'] = Variable<String>(name);
    map['method'] = Variable<String>(method);
    map['tax'] = Variable<double>(tax);
    return map;
  }

  ParkedBillItemTaxesCompanion toCompanion(bool nullToAbsent) {
    return ParkedBillItemTaxesCompanion(
      id: Value(id),
      taxId:
          taxId == null && nullToAbsent ? const Value.absent() : Value(taxId),
      pLocalItemId: Value(pLocalItemId),
      pItemId: pItemId == null && nullToAbsent
          ? const Value.absent()
          : Value(pItemId),
      name: Value(name),
      method: Value(method),
      tax: Value(tax),
    );
  }

  factory ParkedBillItemTax.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return ParkedBillItemTax(
      id: serializer.fromJson<int>(json['id']),
      taxId: serializer.fromJson<String?>(json['taxId']),
      pLocalItemId: serializer.fromJson<int>(json['pLocalItemId']),
      pItemId: serializer.fromJson<String?>(json['pItemId']),
      name: serializer.fromJson<String>(json['name']),
      method: serializer.fromJson<String>(json['method']),
      tax: serializer.fromJson<double>(json['tax']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'taxId': serializer.toJson<String?>(taxId),
      'pLocalItemId': serializer.toJson<int>(pLocalItemId),
      'pItemId': serializer.toJson<String?>(pItemId),
      'name': serializer.toJson<String>(name),
      'method': serializer.toJson<String>(method),
      'tax': serializer.toJson<double>(tax),
    };
  }

  ParkedBillItemTax copyWith(
          {int? id,
          Value<String?> taxId = const Value.absent(),
          int? pLocalItemId,
          Value<String?> pItemId = const Value.absent(),
          String? name,
          String? method,
          double? tax}) =>
      ParkedBillItemTax(
        id: id ?? this.id,
        taxId: taxId.present ? taxId.value : this.taxId,
        pLocalItemId: pLocalItemId ?? this.pLocalItemId,
        pItemId: pItemId.present ? pItemId.value : this.pItemId,
        name: name ?? this.name,
        method: method ?? this.method,
        tax: tax ?? this.tax,
      );
  @override
  String toString() {
    return (StringBuffer('ParkedBillItemTax(')
          ..write('id: $id, ')
          ..write('taxId: $taxId, ')
          ..write('pLocalItemId: $pLocalItemId, ')
          ..write('pItemId: $pItemId, ')
          ..write('name: $name, ')
          ..write('method: $method, ')
          ..write('tax: $tax')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(id, taxId, pLocalItemId, pItemId, name, method, tax);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ParkedBillItemTax &&
          other.id == this.id &&
          other.taxId == this.taxId &&
          other.pLocalItemId == this.pLocalItemId &&
          other.pItemId == this.pItemId &&
          other.name == this.name &&
          other.method == this.method &&
          other.tax == this.tax);
}

class ParkedBillItemTaxesCompanion extends UpdateCompanion<ParkedBillItemTax> {
  final Value<int> id;
  final Value<String?> taxId;
  final Value<int> pLocalItemId;
  final Value<String?> pItemId;
  final Value<String> name;
  final Value<String> method;
  final Value<double> tax;
  const ParkedBillItemTaxesCompanion({
    this.id = const Value.absent(),
    this.taxId = const Value.absent(),
    this.pLocalItemId = const Value.absent(),
    this.pItemId = const Value.absent(),
    this.name = const Value.absent(),
    this.method = const Value.absent(),
    this.tax = const Value.absent(),
  });
  ParkedBillItemTaxesCompanion.insert({
    this.id = const Value.absent(),
    this.taxId = const Value.absent(),
    required int pLocalItemId,
    this.pItemId = const Value.absent(),
    required String name,
    required String method,
    this.tax = const Value.absent(),
  })  : pLocalItemId = Value(pLocalItemId),
        name = Value(name),
        method = Value(method);
  static Insertable<ParkedBillItemTax> custom({
    Expression<int>? id,
    Expression<String>? taxId,
    Expression<int>? pLocalItemId,
    Expression<String>? pItemId,
    Expression<String>? name,
    Expression<String>? method,
    Expression<double>? tax,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (taxId != null) 'tax_id': taxId,
      if (pLocalItemId != null) 'p_local_item_id': pLocalItemId,
      if (pItemId != null) 'p_item_id': pItemId,
      if (name != null) 'name': name,
      if (method != null) 'method': method,
      if (tax != null) 'tax': tax,
    });
  }

  ParkedBillItemTaxesCompanion copyWith(
      {Value<int>? id,
      Value<String?>? taxId,
      Value<int>? pLocalItemId,
      Value<String?>? pItemId,
      Value<String>? name,
      Value<String>? method,
      Value<double>? tax}) {
    return ParkedBillItemTaxesCompanion(
      id: id ?? this.id,
      taxId: taxId ?? this.taxId,
      pLocalItemId: pLocalItemId ?? this.pLocalItemId,
      pItemId: pItemId ?? this.pItemId,
      name: name ?? this.name,
      method: method ?? this.method,
      tax: tax ?? this.tax,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (taxId.present) {
      map['tax_id'] = Variable<String>(taxId.value);
    }
    if (pLocalItemId.present) {
      map['p_local_item_id'] = Variable<int>(pLocalItemId.value);
    }
    if (pItemId.present) {
      map['p_item_id'] = Variable<String>(pItemId.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (method.present) {
      map['method'] = Variable<String>(method.value);
    }
    if (tax.present) {
      map['tax'] = Variable<double>(tax.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ParkedBillItemTaxesCompanion(')
          ..write('id: $id, ')
          ..write('taxId: $taxId, ')
          ..write('pLocalItemId: $pLocalItemId, ')
          ..write('pItemId: $pItemId, ')
          ..write('name: $name, ')
          ..write('method: $method, ')
          ..write('tax: $tax')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(e);
  late final $ProductsTable products = $ProductsTable(this);
  late final $ProductCategoriesTable productCategories =
      $ProductCategoriesTable(this);
  late final $ProductCategoryLinksTable productCategoryLinks =
      $ProductCategoryLinksTable(this);
  late final $ParkedBillsTable parkedBills = $ParkedBillsTable(this);
  late final $ParkedBillItemsTable parkedBillItems =
      $ParkedBillItemsTable(this);
  late final $ParkedBillItemTaxesTable parkedBillItemTaxes =
      $ParkedBillItemTaxesTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [
        products,
        productCategories,
        productCategoryLinks,
        parkedBills,
        parkedBillItems,
        parkedBillItemTaxes
      ];
}
