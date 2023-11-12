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
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
      'name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _subtotalMeta =
      const VerificationMeta('subtotal');
  @override
  late final GeneratedColumn<double> subtotal = GeneratedColumn<double>(
      'subtotal', aliasedName, false,
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
  static const VerificationMeta _discountMeta =
      const VerificationMeta('discount');
  @override
  late final GeneratedColumn<double> discount = GeneratedColumn<double>(
      'discount', aliasedName, false,
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
      [id, billId, name, subtotal, tax, discount, netAmount];
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
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('subtotal')) {
      context.handle(_subtotalMeta,
          subtotal.isAcceptableOrUnknown(data['subtotal']!, _subtotalMeta));
    }
    if (data.containsKey('tax')) {
      context.handle(
          _taxMeta, tax.isAcceptableOrUnknown(data['tax']!, _taxMeta));
    }
    if (data.containsKey('discount')) {
      context.handle(_discountMeta,
          discount.isAcceptableOrUnknown(data['discount']!, _discountMeta));
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
      name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name'])!,
      subtotal: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}subtotal'])!,
      tax: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}tax'])!,
      discount: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}discount'])!,
      netAmount: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}net_amount'])!,
    );
  }

  @override
  $ParkedBillsTable createAlias(String alias) {
    return $ParkedBillsTable(attachedDatabase, alias);
  }
}

class ParkedBillsCompanion extends UpdateCompanion<ParkedBill> {
  final Value<int> id;
  final Value<String?> billId;
  final Value<String> name;
  final Value<double> subtotal;
  final Value<double> tax;
  final Value<double> discount;
  final Value<double> netAmount;
  const ParkedBillsCompanion({
    this.id = const Value.absent(),
    this.billId = const Value.absent(),
    this.name = const Value.absent(),
    this.subtotal = const Value.absent(),
    this.tax = const Value.absent(),
    this.discount = const Value.absent(),
    this.netAmount = const Value.absent(),
  });
  ParkedBillsCompanion.insert({
    this.id = const Value.absent(),
    this.billId = const Value.absent(),
    required String name,
    this.subtotal = const Value.absent(),
    this.tax = const Value.absent(),
    this.discount = const Value.absent(),
    this.netAmount = const Value.absent(),
  }) : name = Value(name);
  static Insertable<ParkedBill> custom({
    Expression<int>? id,
    Expression<String>? billId,
    Expression<String>? name,
    Expression<double>? subtotal,
    Expression<double>? tax,
    Expression<double>? discount,
    Expression<double>? netAmount,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (billId != null) 'bill_id': billId,
      if (name != null) 'name': name,
      if (subtotal != null) 'subtotal': subtotal,
      if (tax != null) 'tax': tax,
      if (discount != null) 'discount': discount,
      if (netAmount != null) 'net_amount': netAmount,
    });
  }

  ParkedBillsCompanion copyWith(
      {Value<int>? id,
      Value<String?>? billId,
      Value<String>? name,
      Value<double>? subtotal,
      Value<double>? tax,
      Value<double>? discount,
      Value<double>? netAmount}) {
    return ParkedBillsCompanion(
      id: id ?? this.id,
      billId: billId ?? this.billId,
      name: name ?? this.name,
      subtotal: subtotal ?? this.subtotal,
      tax: tax ?? this.tax,
      discount: discount ?? this.discount,
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
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (subtotal.present) {
      map['subtotal'] = Variable<double>(subtotal.value);
    }
    if (tax.present) {
      map['tax'] = Variable<double>(tax.value);
    }
    if (discount.present) {
      map['discount'] = Variable<double>(discount.value);
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
          ..write('name: $name, ')
          ..write('subtotal: $subtotal, ')
          ..write('tax: $tax, ')
          ..write('discount: $discount, ')
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
  static const VerificationMeta _locBillIdMeta =
      const VerificationMeta('locBillId');
  @override
  late final GeneratedColumn<int> locBillId = GeneratedColumn<int>(
      'loc_bill_id', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _billIdMeta = const VerificationMeta('billId');
  @override
  late final GeneratedColumn<String> billId = GeneratedColumn<String>(
      'bill_id', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
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
      defaultValue: const Constant(1));
  static const VerificationMeta _subtotalMeta =
      const VerificationMeta('subtotal');
  @override
  late final GeneratedColumn<double> subtotal = GeneratedColumn<double>(
      'subtotal', aliasedName, false,
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
  static const VerificationMeta _discountMeta =
      const VerificationMeta('discount');
  @override
  late final GeneratedColumn<double> discount = GeneratedColumn<double>(
      'discount', aliasedName, false,
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
        locBillId,
        billId,
        name,
        image,
        quantity,
        subtotal,
        tax,
        discount,
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
    if (data.containsKey('loc_bill_id')) {
      context.handle(
          _locBillIdMeta,
          locBillId.isAcceptableOrUnknown(
              data['loc_bill_id']!, _locBillIdMeta));
    } else if (isInserting) {
      context.missing(_locBillIdMeta);
    }
    if (data.containsKey('bill_id')) {
      context.handle(_billIdMeta,
          billId.isAcceptableOrUnknown(data['bill_id']!, _billIdMeta));
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
    if (data.containsKey('tax')) {
      context.handle(
          _taxMeta, tax.isAcceptableOrUnknown(data['tax']!, _taxMeta));
    }
    if (data.containsKey('discount')) {
      context.handle(_discountMeta,
          discount.isAcceptableOrUnknown(data['discount']!, _discountMeta));
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
      locBillId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}loc_bill_id'])!,
      billId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}bill_id']),
      name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name'])!,
      image: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}image']),
      quantity: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}quantity'])!,
      subtotal: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}subtotal'])!,
      tax: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}tax'])!,
      discount: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}discount'])!,
      netAmount: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}net_amount'])!,
    );
  }

  @override
  $ParkedBillItemsTable createAlias(String alias) {
    return $ParkedBillItemsTable(attachedDatabase, alias);
  }
}

class ParkedBillItemsCompanion extends UpdateCompanion<ParkedBillItem> {
  final Value<int> id;
  final Value<String?> itemId;
  final Value<int> locBillId;
  final Value<String?> billId;
  final Value<String> name;
  final Value<String?> image;
  final Value<double> quantity;
  final Value<double> subtotal;
  final Value<double> tax;
  final Value<double> discount;
  final Value<double> netAmount;
  const ParkedBillItemsCompanion({
    this.id = const Value.absent(),
    this.itemId = const Value.absent(),
    this.locBillId = const Value.absent(),
    this.billId = const Value.absent(),
    this.name = const Value.absent(),
    this.image = const Value.absent(),
    this.quantity = const Value.absent(),
    this.subtotal = const Value.absent(),
    this.tax = const Value.absent(),
    this.discount = const Value.absent(),
    this.netAmount = const Value.absent(),
  });
  ParkedBillItemsCompanion.insert({
    this.id = const Value.absent(),
    this.itemId = const Value.absent(),
    required int locBillId,
    this.billId = const Value.absent(),
    required String name,
    this.image = const Value.absent(),
    this.quantity = const Value.absent(),
    this.subtotal = const Value.absent(),
    this.tax = const Value.absent(),
    this.discount = const Value.absent(),
    this.netAmount = const Value.absent(),
  })  : locBillId = Value(locBillId),
        name = Value(name);
  static Insertable<ParkedBillItem> custom({
    Expression<int>? id,
    Expression<String>? itemId,
    Expression<int>? locBillId,
    Expression<String>? billId,
    Expression<String>? name,
    Expression<String>? image,
    Expression<double>? quantity,
    Expression<double>? subtotal,
    Expression<double>? tax,
    Expression<double>? discount,
    Expression<double>? netAmount,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (itemId != null) 'item_id': itemId,
      if (locBillId != null) 'loc_bill_id': locBillId,
      if (billId != null) 'bill_id': billId,
      if (name != null) 'name': name,
      if (image != null) 'image': image,
      if (quantity != null) 'quantity': quantity,
      if (subtotal != null) 'subtotal': subtotal,
      if (tax != null) 'tax': tax,
      if (discount != null) 'discount': discount,
      if (netAmount != null) 'net_amount': netAmount,
    });
  }

  ParkedBillItemsCompanion copyWith(
      {Value<int>? id,
      Value<String?>? itemId,
      Value<int>? locBillId,
      Value<String?>? billId,
      Value<String>? name,
      Value<String?>? image,
      Value<double>? quantity,
      Value<double>? subtotal,
      Value<double>? tax,
      Value<double>? discount,
      Value<double>? netAmount}) {
    return ParkedBillItemsCompanion(
      id: id ?? this.id,
      itemId: itemId ?? this.itemId,
      locBillId: locBillId ?? this.locBillId,
      billId: billId ?? this.billId,
      name: name ?? this.name,
      image: image ?? this.image,
      quantity: quantity ?? this.quantity,
      subtotal: subtotal ?? this.subtotal,
      tax: tax ?? this.tax,
      discount: discount ?? this.discount,
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
    if (locBillId.present) {
      map['loc_bill_id'] = Variable<int>(locBillId.value);
    }
    if (billId.present) {
      map['bill_id'] = Variable<String>(billId.value);
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
    if (tax.present) {
      map['tax'] = Variable<double>(tax.value);
    }
    if (discount.present) {
      map['discount'] = Variable<double>(discount.value);
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
          ..write('locBillId: $locBillId, ')
          ..write('billId: $billId, ')
          ..write('name: $name, ')
          ..write('image: $image, ')
          ..write('quantity: $quantity, ')
          ..write('subtotal: $subtotal, ')
          ..write('tax: $tax, ')
          ..write('discount: $discount, ')
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
  static const VerificationMeta _locTaxIdMeta =
      const VerificationMeta('locTaxId');
  @override
  late final GeneratedColumn<int> locTaxId = GeneratedColumn<int>(
      'loc_tax_id', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
      'name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _taxMeta = const VerificationMeta('tax');
  @override
  late final GeneratedColumn<double> tax = GeneratedColumn<double>(
      'tax', aliasedName, false,
      type: DriftSqlType.double,
      requiredDuringInsert: false,
      defaultValue: const Constant(0));
  static const VerificationMeta _itemIdMeta = const VerificationMeta('itemId');
  @override
  late final GeneratedColumn<String> itemId = GeneratedColumn<String>(
      'item_id', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _locItemIdMeta =
      const VerificationMeta('locItemId');
  @override
  late final GeneratedColumn<int> locItemId = GeneratedColumn<int>(
      'loc_item_id', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns =>
      [id, taxId, locTaxId, name, tax, itemId, locItemId];
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
    if (data.containsKey('loc_tax_id')) {
      context.handle(_locTaxIdMeta,
          locTaxId.isAcceptableOrUnknown(data['loc_tax_id']!, _locTaxIdMeta));
    } else if (isInserting) {
      context.missing(_locTaxIdMeta);
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('tax')) {
      context.handle(
          _taxMeta, tax.isAcceptableOrUnknown(data['tax']!, _taxMeta));
    }
    if (data.containsKey('item_id')) {
      context.handle(_itemIdMeta,
          itemId.isAcceptableOrUnknown(data['item_id']!, _itemIdMeta));
    }
    if (data.containsKey('loc_item_id')) {
      context.handle(
          _locItemIdMeta,
          locItemId.isAcceptableOrUnknown(
              data['loc_item_id']!, _locItemIdMeta));
    } else if (isInserting) {
      context.missing(_locItemIdMeta);
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
      locTaxId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}loc_tax_id'])!,
      itemId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}item_id']),
      locItemId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}loc_item_id'])!,
      name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name'])!,
      tax: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}tax'])!,
    );
  }

  @override
  $ParkedBillItemTaxesTable createAlias(String alias) {
    return $ParkedBillItemTaxesTable(attachedDatabase, alias);
  }
}

class ParkedBillItemTaxesCompanion extends UpdateCompanion<ParkedBillItemTax> {
  final Value<int> id;
  final Value<String?> taxId;
  final Value<int> locTaxId;
  final Value<String> name;
  final Value<double> tax;
  final Value<String?> itemId;
  final Value<int> locItemId;
  const ParkedBillItemTaxesCompanion({
    this.id = const Value.absent(),
    this.taxId = const Value.absent(),
    this.locTaxId = const Value.absent(),
    this.name = const Value.absent(),
    this.tax = const Value.absent(),
    this.itemId = const Value.absent(),
    this.locItemId = const Value.absent(),
  });
  ParkedBillItemTaxesCompanion.insert({
    this.id = const Value.absent(),
    this.taxId = const Value.absent(),
    required int locTaxId,
    required String name,
    this.tax = const Value.absent(),
    this.itemId = const Value.absent(),
    required int locItemId,
  })  : locTaxId = Value(locTaxId),
        name = Value(name),
        locItemId = Value(locItemId);
  static Insertable<ParkedBillItemTax> custom({
    Expression<int>? id,
    Expression<String>? taxId,
    Expression<int>? locTaxId,
    Expression<String>? name,
    Expression<double>? tax,
    Expression<String>? itemId,
    Expression<int>? locItemId,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (taxId != null) 'tax_id': taxId,
      if (locTaxId != null) 'loc_tax_id': locTaxId,
      if (name != null) 'name': name,
      if (tax != null) 'tax': tax,
      if (itemId != null) 'item_id': itemId,
      if (locItemId != null) 'loc_item_id': locItemId,
    });
  }

  ParkedBillItemTaxesCompanion copyWith(
      {Value<int>? id,
      Value<String?>? taxId,
      Value<int>? locTaxId,
      Value<String>? name,
      Value<double>? tax,
      Value<String?>? itemId,
      Value<int>? locItemId}) {
    return ParkedBillItemTaxesCompanion(
      id: id ?? this.id,
      taxId: taxId ?? this.taxId,
      locTaxId: locTaxId ?? this.locTaxId,
      name: name ?? this.name,
      tax: tax ?? this.tax,
      itemId: itemId ?? this.itemId,
      locItemId: locItemId ?? this.locItemId,
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
    if (locTaxId.present) {
      map['loc_tax_id'] = Variable<int>(locTaxId.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (tax.present) {
      map['tax'] = Variable<double>(tax.value);
    }
    if (itemId.present) {
      map['item_id'] = Variable<String>(itemId.value);
    }
    if (locItemId.present) {
      map['loc_item_id'] = Variable<int>(locItemId.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ParkedBillItemTaxesCompanion(')
          ..write('id: $id, ')
          ..write('taxId: $taxId, ')
          ..write('locTaxId: $locTaxId, ')
          ..write('name: $name, ')
          ..write('tax: $tax, ')
          ..write('itemId: $itemId, ')
          ..write('locItemId: $locItemId')
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
  late final ParkedBillsDao parkedBillsDao =
      ParkedBillsDao(this as AppDatabase);
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
