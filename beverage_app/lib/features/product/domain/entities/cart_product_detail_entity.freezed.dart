// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'cart_product_detail_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CartProductDetailEntity _$CartProductDetailEntityFromJson(
    Map<String, dynamic> json) {
  return _CartProductDetailEntity.fromJson(json);
}

/// @nodoc
class _$CartProductDetailEntityTearOff {
  const _$CartProductDetailEntityTearOff();

  _CartProductDetailEntity call(
      {@JsonKey(name: 'product_id') required int productId,
      required String image,
      required String name,
      required String detail,
      required int quantity,
      @JsonKey(name: 'line_total') required double lineTotal}) {
    return _CartProductDetailEntity(
      productId: productId,
      image: image,
      name: name,
      detail: detail,
      quantity: quantity,
      lineTotal: lineTotal,
    );
  }

  CartProductDetailEntity fromJson(Map<String, Object?> json) {
    return CartProductDetailEntity.fromJson(json);
  }
}

/// @nodoc
const $CartProductDetailEntity = _$CartProductDetailEntityTearOff();

/// @nodoc
mixin _$CartProductDetailEntity {
  @JsonKey(name: 'product_id')
  int get productId => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get detail => throw _privateConstructorUsedError;
  int get quantity => throw _privateConstructorUsedError;
  @JsonKey(name: 'line_total')
  double get lineTotal => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CartProductDetailEntityCopyWith<CartProductDetailEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartProductDetailEntityCopyWith<$Res> {
  factory $CartProductDetailEntityCopyWith(CartProductDetailEntity value,
          $Res Function(CartProductDetailEntity) then) =
      _$CartProductDetailEntityCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'product_id') int productId,
      String image,
      String name,
      String detail,
      int quantity,
      @JsonKey(name: 'line_total') double lineTotal});
}

/// @nodoc
class _$CartProductDetailEntityCopyWithImpl<$Res>
    implements $CartProductDetailEntityCopyWith<$Res> {
  _$CartProductDetailEntityCopyWithImpl(this._value, this._then);

  final CartProductDetailEntity _value;
  // ignore: unused_field
  final $Res Function(CartProductDetailEntity) _then;

  @override
  $Res call({
    Object? productId = freezed,
    Object? image = freezed,
    Object? name = freezed,
    Object? detail = freezed,
    Object? quantity = freezed,
    Object? lineTotal = freezed,
  }) {
    return _then(_value.copyWith(
      productId: productId == freezed
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as int,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      detail: detail == freezed
          ? _value.detail
          : detail // ignore: cast_nullable_to_non_nullable
              as String,
      quantity: quantity == freezed
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
      lineTotal: lineTotal == freezed
          ? _value.lineTotal
          : lineTotal // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
abstract class _$CartProductDetailEntityCopyWith<$Res>
    implements $CartProductDetailEntityCopyWith<$Res> {
  factory _$CartProductDetailEntityCopyWith(_CartProductDetailEntity value,
          $Res Function(_CartProductDetailEntity) then) =
      __$CartProductDetailEntityCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'product_id') int productId,
      String image,
      String name,
      String detail,
      int quantity,
      @JsonKey(name: 'line_total') double lineTotal});
}

/// @nodoc
class __$CartProductDetailEntityCopyWithImpl<$Res>
    extends _$CartProductDetailEntityCopyWithImpl<$Res>
    implements _$CartProductDetailEntityCopyWith<$Res> {
  __$CartProductDetailEntityCopyWithImpl(_CartProductDetailEntity _value,
      $Res Function(_CartProductDetailEntity) _then)
      : super(_value, (v) => _then(v as _CartProductDetailEntity));

  @override
  _CartProductDetailEntity get _value =>
      super._value as _CartProductDetailEntity;

  @override
  $Res call({
    Object? productId = freezed,
    Object? image = freezed,
    Object? name = freezed,
    Object? detail = freezed,
    Object? quantity = freezed,
    Object? lineTotal = freezed,
  }) {
    return _then(_CartProductDetailEntity(
      productId: productId == freezed
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as int,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      detail: detail == freezed
          ? _value.detail
          : detail // ignore: cast_nullable_to_non_nullable
              as String,
      quantity: quantity == freezed
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
      lineTotal: lineTotal == freezed
          ? _value.lineTotal
          : lineTotal // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CartProductDetailEntity extends _CartProductDetailEntity {
  const _$_CartProductDetailEntity(
      {@JsonKey(name: 'product_id') required this.productId,
      required this.image,
      required this.name,
      required this.detail,
      required this.quantity,
      @JsonKey(name: 'line_total') required this.lineTotal})
      : super._();

  factory _$_CartProductDetailEntity.fromJson(Map<String, dynamic> json) =>
      _$$_CartProductDetailEntityFromJson(json);

  @override
  @JsonKey(name: 'product_id')
  final int productId;
  @override
  final String image;
  @override
  final String name;
  @override
  final String detail;
  @override
  final int quantity;
  @override
  @JsonKey(name: 'line_total')
  final double lineTotal;

  @override
  String toString() {
    return 'CartProductDetailEntity(productId: $productId, image: $image, name: $name, detail: $detail, quantity: $quantity, lineTotal: $lineTotal)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CartProductDetailEntity &&
            const DeepCollectionEquality().equals(other.productId, productId) &&
            const DeepCollectionEquality().equals(other.image, image) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.detail, detail) &&
            const DeepCollectionEquality().equals(other.quantity, quantity) &&
            const DeepCollectionEquality().equals(other.lineTotal, lineTotal));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(productId),
      const DeepCollectionEquality().hash(image),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(detail),
      const DeepCollectionEquality().hash(quantity),
      const DeepCollectionEquality().hash(lineTotal));

  @JsonKey(ignore: true)
  @override
  _$CartProductDetailEntityCopyWith<_CartProductDetailEntity> get copyWith =>
      __$CartProductDetailEntityCopyWithImpl<_CartProductDetailEntity>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CartProductDetailEntityToJson(this);
  }
}

abstract class _CartProductDetailEntity extends CartProductDetailEntity {
  const factory _CartProductDetailEntity(
          {@JsonKey(name: 'product_id') required int productId,
          required String image,
          required String name,
          required String detail,
          required int quantity,
          @JsonKey(name: 'line_total') required double lineTotal}) =
      _$_CartProductDetailEntity;
  const _CartProductDetailEntity._() : super._();

  factory _CartProductDetailEntity.fromJson(Map<String, dynamic> json) =
      _$_CartProductDetailEntity.fromJson;

  @override
  @JsonKey(name: 'product_id')
  int get productId;
  @override
  String get image;
  @override
  String get name;
  @override
  String get detail;
  @override
  int get quantity;
  @override
  @JsonKey(name: 'line_total')
  double get lineTotal;
  @override
  @JsonKey(ignore: true)
  _$CartProductDetailEntityCopyWith<_CartProductDetailEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
