// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'category_items_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CategoryItemsEntity _$CategoryItemsEntityFromJson(Map<String, dynamic> json) {
  return _CategoryItemsEntity.fromJson(json);
}

/// @nodoc
class _$CategoryItemsEntityTearOff {
  const _$CategoryItemsEntityTearOff();

  _CategoryItemsEntity call(
      {required int id,
      required String brand,
      required String name,
      required String quantity,
      @JsonKey(name: 'cartoon_detail') required String cartoonDetail,
      required String image,
      required double price,
      required String code,
      required int stock,
      @JsonKey(name: 'tax_percentage') required double taxPercentage,
      @JsonKey(name: 'pack_size') required int packSize,
      required String description,
      @JsonKey(name: 'special_price') double? specialPrice,
      @JsonKey(name: 'discounted_price') double? discountedPrice,
      @JsonKey(name: 'discount_percentage') double? discountPercentage}) {
    return _CategoryItemsEntity(
      id: id,
      brand: brand,
      name: name,
      quantity: quantity,
      cartoonDetail: cartoonDetail,
      image: image,
      price: price,
      code: code,
      stock: stock,
      taxPercentage: taxPercentage,
      packSize: packSize,
      description: description,
      specialPrice: specialPrice,
      discountedPrice: discountedPrice,
      discountPercentage: discountPercentage,
    );
  }

  CategoryItemsEntity fromJson(Map<String, Object?> json) {
    return CategoryItemsEntity.fromJson(json);
  }
}

/// @nodoc
const $CategoryItemsEntity = _$CategoryItemsEntityTearOff();

/// @nodoc
mixin _$CategoryItemsEntity {
  int get id => throw _privateConstructorUsedError;
  String get brand => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get quantity => throw _privateConstructorUsedError;
  @JsonKey(name: 'cartoon_detail')
  String get cartoonDetail => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;
  double get price => throw _privateConstructorUsedError;
  String get code => throw _privateConstructorUsedError;
  int get stock => throw _privateConstructorUsedError;
  @JsonKey(name: 'tax_percentage')
  double get taxPercentage => throw _privateConstructorUsedError;
  @JsonKey(name: 'pack_size')
  int get packSize => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'special_price')
  double? get specialPrice => throw _privateConstructorUsedError;
  @JsonKey(name: 'discounted_price')
  double? get discountedPrice => throw _privateConstructorUsedError;
  @JsonKey(name: 'discount_percentage')
  double? get discountPercentage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CategoryItemsEntityCopyWith<CategoryItemsEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryItemsEntityCopyWith<$Res> {
  factory $CategoryItemsEntityCopyWith(
          CategoryItemsEntity value, $Res Function(CategoryItemsEntity) then) =
      _$CategoryItemsEntityCopyWithImpl<$Res>;
  $Res call(
      {int id,
      String brand,
      String name,
      String quantity,
      @JsonKey(name: 'cartoon_detail') String cartoonDetail,
      String image,
      double price,
      String code,
      int stock,
      @JsonKey(name: 'tax_percentage') double taxPercentage,
      @JsonKey(name: 'pack_size') int packSize,
      String description,
      @JsonKey(name: 'special_price') double? specialPrice,
      @JsonKey(name: 'discounted_price') double? discountedPrice,
      @JsonKey(name: 'discount_percentage') double? discountPercentage});
}

/// @nodoc
class _$CategoryItemsEntityCopyWithImpl<$Res>
    implements $CategoryItemsEntityCopyWith<$Res> {
  _$CategoryItemsEntityCopyWithImpl(this._value, this._then);

  final CategoryItemsEntity _value;
  // ignore: unused_field
  final $Res Function(CategoryItemsEntity) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? brand = freezed,
    Object? name = freezed,
    Object? quantity = freezed,
    Object? cartoonDetail = freezed,
    Object? image = freezed,
    Object? price = freezed,
    Object? code = freezed,
    Object? stock = freezed,
    Object? taxPercentage = freezed,
    Object? packSize = freezed,
    Object? description = freezed,
    Object? specialPrice = freezed,
    Object? discountedPrice = freezed,
    Object? discountPercentage = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      brand: brand == freezed
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      quantity: quantity == freezed
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as String,
      cartoonDetail: cartoonDetail == freezed
          ? _value.cartoonDetail
          : cartoonDetail // ignore: cast_nullable_to_non_nullable
              as String,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      stock: stock == freezed
          ? _value.stock
          : stock // ignore: cast_nullable_to_non_nullable
              as int,
      taxPercentage: taxPercentage == freezed
          ? _value.taxPercentage
          : taxPercentage // ignore: cast_nullable_to_non_nullable
              as double,
      packSize: packSize == freezed
          ? _value.packSize
          : packSize // ignore: cast_nullable_to_non_nullable
              as int,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      specialPrice: specialPrice == freezed
          ? _value.specialPrice
          : specialPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      discountedPrice: discountedPrice == freezed
          ? _value.discountedPrice
          : discountedPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      discountPercentage: discountPercentage == freezed
          ? _value.discountPercentage
          : discountPercentage // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
abstract class _$CategoryItemsEntityCopyWith<$Res>
    implements $CategoryItemsEntityCopyWith<$Res> {
  factory _$CategoryItemsEntityCopyWith(_CategoryItemsEntity value,
          $Res Function(_CategoryItemsEntity) then) =
      __$CategoryItemsEntityCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      String brand,
      String name,
      String quantity,
      @JsonKey(name: 'cartoon_detail') String cartoonDetail,
      String image,
      double price,
      String code,
      int stock,
      @JsonKey(name: 'tax_percentage') double taxPercentage,
      @JsonKey(name: 'pack_size') int packSize,
      String description,
      @JsonKey(name: 'special_price') double? specialPrice,
      @JsonKey(name: 'discounted_price') double? discountedPrice,
      @JsonKey(name: 'discount_percentage') double? discountPercentage});
}

/// @nodoc
class __$CategoryItemsEntityCopyWithImpl<$Res>
    extends _$CategoryItemsEntityCopyWithImpl<$Res>
    implements _$CategoryItemsEntityCopyWith<$Res> {
  __$CategoryItemsEntityCopyWithImpl(
      _CategoryItemsEntity _value, $Res Function(_CategoryItemsEntity) _then)
      : super(_value, (v) => _then(v as _CategoryItemsEntity));

  @override
  _CategoryItemsEntity get _value => super._value as _CategoryItemsEntity;

  @override
  $Res call({
    Object? id = freezed,
    Object? brand = freezed,
    Object? name = freezed,
    Object? quantity = freezed,
    Object? cartoonDetail = freezed,
    Object? image = freezed,
    Object? price = freezed,
    Object? code = freezed,
    Object? stock = freezed,
    Object? taxPercentage = freezed,
    Object? packSize = freezed,
    Object? description = freezed,
    Object? specialPrice = freezed,
    Object? discountedPrice = freezed,
    Object? discountPercentage = freezed,
  }) {
    return _then(_CategoryItemsEntity(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      brand: brand == freezed
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      quantity: quantity == freezed
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as String,
      cartoonDetail: cartoonDetail == freezed
          ? _value.cartoonDetail
          : cartoonDetail // ignore: cast_nullable_to_non_nullable
              as String,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      stock: stock == freezed
          ? _value.stock
          : stock // ignore: cast_nullable_to_non_nullable
              as int,
      taxPercentage: taxPercentage == freezed
          ? _value.taxPercentage
          : taxPercentage // ignore: cast_nullable_to_non_nullable
              as double,
      packSize: packSize == freezed
          ? _value.packSize
          : packSize // ignore: cast_nullable_to_non_nullable
              as int,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      specialPrice: specialPrice == freezed
          ? _value.specialPrice
          : specialPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      discountedPrice: discountedPrice == freezed
          ? _value.discountedPrice
          : discountedPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      discountPercentage: discountPercentage == freezed
          ? _value.discountPercentage
          : discountPercentage // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CategoryItemsEntity extends _CategoryItemsEntity {
  const _$_CategoryItemsEntity(
      {required this.id,
      required this.brand,
      required this.name,
      required this.quantity,
      @JsonKey(name: 'cartoon_detail') required this.cartoonDetail,
      required this.image,
      required this.price,
      required this.code,
      required this.stock,
      @JsonKey(name: 'tax_percentage') required this.taxPercentage,
      @JsonKey(name: 'pack_size') required this.packSize,
      required this.description,
      @JsonKey(name: 'special_price') this.specialPrice,
      @JsonKey(name: 'discounted_price') this.discountedPrice,
      @JsonKey(name: 'discount_percentage') this.discountPercentage})
      : super._();

  factory _$_CategoryItemsEntity.fromJson(Map<String, dynamic> json) =>
      _$$_CategoryItemsEntityFromJson(json);

  @override
  final int id;
  @override
  final String brand;
  @override
  final String name;
  @override
  final String quantity;
  @override
  @JsonKey(name: 'cartoon_detail')
  final String cartoonDetail;
  @override
  final String image;
  @override
  final double price;
  @override
  final String code;
  @override
  final int stock;
  @override
  @JsonKey(name: 'tax_percentage')
  final double taxPercentage;
  @override
  @JsonKey(name: 'pack_size')
  final int packSize;
  @override
  final String description;
  @override
  @JsonKey(name: 'special_price')
  final double? specialPrice;
  @override
  @JsonKey(name: 'discounted_price')
  final double? discountedPrice;
  @override
  @JsonKey(name: 'discount_percentage')
  final double? discountPercentage;

  @override
  String toString() {
    return 'CategoryItemsEntity(id: $id, brand: $brand, name: $name, quantity: $quantity, cartoonDetail: $cartoonDetail, image: $image, price: $price, code: $code, stock: $stock, taxPercentage: $taxPercentage, packSize: $packSize, description: $description, specialPrice: $specialPrice, discountedPrice: $discountedPrice, discountPercentage: $discountPercentage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CategoryItemsEntity &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.brand, brand) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.quantity, quantity) &&
            const DeepCollectionEquality()
                .equals(other.cartoonDetail, cartoonDetail) &&
            const DeepCollectionEquality().equals(other.image, image) &&
            const DeepCollectionEquality().equals(other.price, price) &&
            const DeepCollectionEquality().equals(other.code, code) &&
            const DeepCollectionEquality().equals(other.stock, stock) &&
            const DeepCollectionEquality()
                .equals(other.taxPercentage, taxPercentage) &&
            const DeepCollectionEquality().equals(other.packSize, packSize) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality()
                .equals(other.specialPrice, specialPrice) &&
            const DeepCollectionEquality()
                .equals(other.discountedPrice, discountedPrice) &&
            const DeepCollectionEquality()
                .equals(other.discountPercentage, discountPercentage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(brand),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(quantity),
      const DeepCollectionEquality().hash(cartoonDetail),
      const DeepCollectionEquality().hash(image),
      const DeepCollectionEquality().hash(price),
      const DeepCollectionEquality().hash(code),
      const DeepCollectionEquality().hash(stock),
      const DeepCollectionEquality().hash(taxPercentage),
      const DeepCollectionEquality().hash(packSize),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(specialPrice),
      const DeepCollectionEquality().hash(discountedPrice),
      const DeepCollectionEquality().hash(discountPercentage));

  @JsonKey(ignore: true)
  @override
  _$CategoryItemsEntityCopyWith<_CategoryItemsEntity> get copyWith =>
      __$CategoryItemsEntityCopyWithImpl<_CategoryItemsEntity>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CategoryItemsEntityToJson(this);
  }
}

abstract class _CategoryItemsEntity extends CategoryItemsEntity {
  const factory _CategoryItemsEntity(
          {required int id,
          required String brand,
          required String name,
          required String quantity,
          @JsonKey(name: 'cartoon_detail') required String cartoonDetail,
          required String image,
          required double price,
          required String code,
          required int stock,
          @JsonKey(name: 'tax_percentage') required double taxPercentage,
          @JsonKey(name: 'pack_size') required int packSize,
          required String description,
          @JsonKey(name: 'special_price') double? specialPrice,
          @JsonKey(name: 'discounted_price') double? discountedPrice,
          @JsonKey(name: 'discount_percentage') double? discountPercentage}) =
      _$_CategoryItemsEntity;
  const _CategoryItemsEntity._() : super._();

  factory _CategoryItemsEntity.fromJson(Map<String, dynamic> json) =
      _$_CategoryItemsEntity.fromJson;

  @override
  int get id;
  @override
  String get brand;
  @override
  String get name;
  @override
  String get quantity;
  @override
  @JsonKey(name: 'cartoon_detail')
  String get cartoonDetail;
  @override
  String get image;
  @override
  double get price;
  @override
  String get code;
  @override
  int get stock;
  @override
  @JsonKey(name: 'tax_percentage')
  double get taxPercentage;
  @override
  @JsonKey(name: 'pack_size')
  int get packSize;
  @override
  String get description;
  @override
  @JsonKey(name: 'special_price')
  double? get specialPrice;
  @override
  @JsonKey(name: 'discounted_price')
  double? get discountedPrice;
  @override
  @JsonKey(name: 'discount_percentage')
  double? get discountPercentage;
  @override
  @JsonKey(ignore: true)
  _$CategoryItemsEntityCopyWith<_CategoryItemsEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
