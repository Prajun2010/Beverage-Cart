// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'product_categories_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ProductCategoriesEntity _$ProductCategoriesEntityFromJson(
    Map<String, dynamic> json) {
  return _ProductCategoriesEntity.fromJson(json);
}

/// @nodoc
class _$ProductCategoriesEntityTearOff {
  const _$ProductCategoriesEntityTearOff();

  _ProductCategoriesEntity call(
      {required String name,
      required String image,
      required List<CategoryItemsEntity> products}) {
    return _ProductCategoriesEntity(
      name: name,
      image: image,
      products: products,
    );
  }

  ProductCategoriesEntity fromJson(Map<String, Object?> json) {
    return ProductCategoriesEntity.fromJson(json);
  }
}

/// @nodoc
const $ProductCategoriesEntity = _$ProductCategoriesEntityTearOff();

/// @nodoc
mixin _$ProductCategoriesEntity {
  String get name => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;
  List<CategoryItemsEntity> get products => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductCategoriesEntityCopyWith<ProductCategoriesEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductCategoriesEntityCopyWith<$Res> {
  factory $ProductCategoriesEntityCopyWith(ProductCategoriesEntity value,
          $Res Function(ProductCategoriesEntity) then) =
      _$ProductCategoriesEntityCopyWithImpl<$Res>;
  $Res call({String name, String image, List<CategoryItemsEntity> products});
}

/// @nodoc
class _$ProductCategoriesEntityCopyWithImpl<$Res>
    implements $ProductCategoriesEntityCopyWith<$Res> {
  _$ProductCategoriesEntityCopyWithImpl(this._value, this._then);

  final ProductCategoriesEntity _value;
  // ignore: unused_field
  final $Res Function(ProductCategoriesEntity) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? image = freezed,
    Object? products = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      products: products == freezed
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<CategoryItemsEntity>,
    ));
  }
}

/// @nodoc
abstract class _$ProductCategoriesEntityCopyWith<$Res>
    implements $ProductCategoriesEntityCopyWith<$Res> {
  factory _$ProductCategoriesEntityCopyWith(_ProductCategoriesEntity value,
          $Res Function(_ProductCategoriesEntity) then) =
      __$ProductCategoriesEntityCopyWithImpl<$Res>;
  @override
  $Res call({String name, String image, List<CategoryItemsEntity> products});
}

/// @nodoc
class __$ProductCategoriesEntityCopyWithImpl<$Res>
    extends _$ProductCategoriesEntityCopyWithImpl<$Res>
    implements _$ProductCategoriesEntityCopyWith<$Res> {
  __$ProductCategoriesEntityCopyWithImpl(_ProductCategoriesEntity _value,
      $Res Function(_ProductCategoriesEntity) _then)
      : super(_value, (v) => _then(v as _ProductCategoriesEntity));

  @override
  _ProductCategoriesEntity get _value =>
      super._value as _ProductCategoriesEntity;

  @override
  $Res call({
    Object? name = freezed,
    Object? image = freezed,
    Object? products = freezed,
  }) {
    return _then(_ProductCategoriesEntity(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      products: products == freezed
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<CategoryItemsEntity>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ProductCategoriesEntity extends _ProductCategoriesEntity {
  const _$_ProductCategoriesEntity(
      {required this.name, required this.image, required this.products})
      : super._();

  factory _$_ProductCategoriesEntity.fromJson(Map<String, dynamic> json) =>
      _$$_ProductCategoriesEntityFromJson(json);

  @override
  final String name;
  @override
  final String image;
  @override
  final List<CategoryItemsEntity> products;

  @override
  String toString() {
    return 'ProductCategoriesEntity(name: $name, image: $image, products: $products)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ProductCategoriesEntity &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.image, image) &&
            const DeepCollectionEquality().equals(other.products, products));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(image),
      const DeepCollectionEquality().hash(products));

  @JsonKey(ignore: true)
  @override
  _$ProductCategoriesEntityCopyWith<_ProductCategoriesEntity> get copyWith =>
      __$ProductCategoriesEntityCopyWithImpl<_ProductCategoriesEntity>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProductCategoriesEntityToJson(this);
  }
}

abstract class _ProductCategoriesEntity extends ProductCategoriesEntity {
  const factory _ProductCategoriesEntity(
          {required String name,
          required String image,
          required List<CategoryItemsEntity> products}) =
      _$_ProductCategoriesEntity;
  const _ProductCategoriesEntity._() : super._();

  factory _ProductCategoriesEntity.fromJson(Map<String, dynamic> json) =
      _$_ProductCategoriesEntity.fromJson;

  @override
  String get name;
  @override
  String get image;
  @override
  List<CategoryItemsEntity> get products;
  @override
  @JsonKey(ignore: true)
  _$ProductCategoriesEntityCopyWith<_ProductCategoriesEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
