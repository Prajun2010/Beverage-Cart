// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'product_cart_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ProductCartEntity _$ProductCartEntityFromJson(Map<String, dynamic> json) {
  return _ProductCartEntity.fromJson(json);
}

/// @nodoc
class _$ProductCartEntityTearOff {
  const _$ProductCartEntityTearOff();

  _ProductCartEntity call(
      {@JsonKey(name: 'sub_total') required double subTotal,
      required double tax,
      @JsonKey(name: 'total_amount') required double totalAmount,
      @JsonKey(name: 'total_item') required int totalItem,
      required List<CartProductDetailEntity> products}) {
    return _ProductCartEntity(
      subTotal: subTotal,
      tax: tax,
      totalAmount: totalAmount,
      totalItem: totalItem,
      products: products,
    );
  }

  ProductCartEntity fromJson(Map<String, Object?> json) {
    return ProductCartEntity.fromJson(json);
  }
}

/// @nodoc
const $ProductCartEntity = _$ProductCartEntityTearOff();

/// @nodoc
mixin _$ProductCartEntity {
  @JsonKey(name: 'sub_total')
  double get subTotal => throw _privateConstructorUsedError;
  double get tax => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_amount')
  double get totalAmount => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_item')
  int get totalItem => throw _privateConstructorUsedError;
  List<CartProductDetailEntity> get products =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductCartEntityCopyWith<ProductCartEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductCartEntityCopyWith<$Res> {
  factory $ProductCartEntityCopyWith(
          ProductCartEntity value, $Res Function(ProductCartEntity) then) =
      _$ProductCartEntityCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'sub_total') double subTotal,
      double tax,
      @JsonKey(name: 'total_amount') double totalAmount,
      @JsonKey(name: 'total_item') int totalItem,
      List<CartProductDetailEntity> products});
}

/// @nodoc
class _$ProductCartEntityCopyWithImpl<$Res>
    implements $ProductCartEntityCopyWith<$Res> {
  _$ProductCartEntityCopyWithImpl(this._value, this._then);

  final ProductCartEntity _value;
  // ignore: unused_field
  final $Res Function(ProductCartEntity) _then;

  @override
  $Res call({
    Object? subTotal = freezed,
    Object? tax = freezed,
    Object? totalAmount = freezed,
    Object? totalItem = freezed,
    Object? products = freezed,
  }) {
    return _then(_value.copyWith(
      subTotal: subTotal == freezed
          ? _value.subTotal
          : subTotal // ignore: cast_nullable_to_non_nullable
              as double,
      tax: tax == freezed
          ? _value.tax
          : tax // ignore: cast_nullable_to_non_nullable
              as double,
      totalAmount: totalAmount == freezed
          ? _value.totalAmount
          : totalAmount // ignore: cast_nullable_to_non_nullable
              as double,
      totalItem: totalItem == freezed
          ? _value.totalItem
          : totalItem // ignore: cast_nullable_to_non_nullable
              as int,
      products: products == freezed
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<CartProductDetailEntity>,
    ));
  }
}

/// @nodoc
abstract class _$ProductCartEntityCopyWith<$Res>
    implements $ProductCartEntityCopyWith<$Res> {
  factory _$ProductCartEntityCopyWith(
          _ProductCartEntity value, $Res Function(_ProductCartEntity) then) =
      __$ProductCartEntityCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'sub_total') double subTotal,
      double tax,
      @JsonKey(name: 'total_amount') double totalAmount,
      @JsonKey(name: 'total_item') int totalItem,
      List<CartProductDetailEntity> products});
}

/// @nodoc
class __$ProductCartEntityCopyWithImpl<$Res>
    extends _$ProductCartEntityCopyWithImpl<$Res>
    implements _$ProductCartEntityCopyWith<$Res> {
  __$ProductCartEntityCopyWithImpl(
      _ProductCartEntity _value, $Res Function(_ProductCartEntity) _then)
      : super(_value, (v) => _then(v as _ProductCartEntity));

  @override
  _ProductCartEntity get _value => super._value as _ProductCartEntity;

  @override
  $Res call({
    Object? subTotal = freezed,
    Object? tax = freezed,
    Object? totalAmount = freezed,
    Object? totalItem = freezed,
    Object? products = freezed,
  }) {
    return _then(_ProductCartEntity(
      subTotal: subTotal == freezed
          ? _value.subTotal
          : subTotal // ignore: cast_nullable_to_non_nullable
              as double,
      tax: tax == freezed
          ? _value.tax
          : tax // ignore: cast_nullable_to_non_nullable
              as double,
      totalAmount: totalAmount == freezed
          ? _value.totalAmount
          : totalAmount // ignore: cast_nullable_to_non_nullable
              as double,
      totalItem: totalItem == freezed
          ? _value.totalItem
          : totalItem // ignore: cast_nullable_to_non_nullable
              as int,
      products: products == freezed
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<CartProductDetailEntity>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ProductCartEntity extends _ProductCartEntity {
  const _$_ProductCartEntity(
      {@JsonKey(name: 'sub_total') required this.subTotal,
      required this.tax,
      @JsonKey(name: 'total_amount') required this.totalAmount,
      @JsonKey(name: 'total_item') required this.totalItem,
      required this.products})
      : super._();

  factory _$_ProductCartEntity.fromJson(Map<String, dynamic> json) =>
      _$$_ProductCartEntityFromJson(json);

  @override
  @JsonKey(name: 'sub_total')
  final double subTotal;
  @override
  final double tax;
  @override
  @JsonKey(name: 'total_amount')
  final double totalAmount;
  @override
  @JsonKey(name: 'total_item')
  final int totalItem;
  @override
  final List<CartProductDetailEntity> products;

  @override
  String toString() {
    return 'ProductCartEntity(subTotal: $subTotal, tax: $tax, totalAmount: $totalAmount, totalItem: $totalItem, products: $products)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ProductCartEntity &&
            const DeepCollectionEquality().equals(other.subTotal, subTotal) &&
            const DeepCollectionEquality().equals(other.tax, tax) &&
            const DeepCollectionEquality()
                .equals(other.totalAmount, totalAmount) &&
            const DeepCollectionEquality().equals(other.totalItem, totalItem) &&
            const DeepCollectionEquality().equals(other.products, products));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(subTotal),
      const DeepCollectionEquality().hash(tax),
      const DeepCollectionEquality().hash(totalAmount),
      const DeepCollectionEquality().hash(totalItem),
      const DeepCollectionEquality().hash(products));

  @JsonKey(ignore: true)
  @override
  _$ProductCartEntityCopyWith<_ProductCartEntity> get copyWith =>
      __$ProductCartEntityCopyWithImpl<_ProductCartEntity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProductCartEntityToJson(this);
  }
}

abstract class _ProductCartEntity extends ProductCartEntity {
  const factory _ProductCartEntity(
      {@JsonKey(name: 'sub_total') required double subTotal,
      required double tax,
      @JsonKey(name: 'total_amount') required double totalAmount,
      @JsonKey(name: 'total_item') required int totalItem,
      required List<CartProductDetailEntity> products}) = _$_ProductCartEntity;
  const _ProductCartEntity._() : super._();

  factory _ProductCartEntity.fromJson(Map<String, dynamic> json) =
      _$_ProductCartEntity.fromJson;

  @override
  @JsonKey(name: 'sub_total')
  double get subTotal;
  @override
  double get tax;
  @override
  @JsonKey(name: 'total_amount')
  double get totalAmount;
  @override
  @JsonKey(name: 'total_item')
  int get totalItem;
  @override
  List<CartProductDetailEntity> get products;
  @override
  @JsonKey(ignore: true)
  _$ProductCartEntityCopyWith<_ProductCartEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
