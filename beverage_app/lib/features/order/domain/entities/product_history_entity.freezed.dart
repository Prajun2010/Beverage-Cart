// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'product_history_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ProductHistoryEntity _$ProductHistoryEntityFromJson(Map<String, dynamic> json) {
  return _ProductHistoryEntity.fromJson(json);
}

/// @nodoc
class _$ProductHistoryEntityTearOff {
  const _$ProductHistoryEntityTearOff();

  _ProductHistoryEntity call(
      {required String image,
      required String name,
      required String detail,
      required int quantity,
      required bool delivered,
      @JsonKey(name: 'line_total') required double lineTotal}) {
    return _ProductHistoryEntity(
      image: image,
      name: name,
      detail: detail,
      quantity: quantity,
      delivered: delivered,
      lineTotal: lineTotal,
    );
  }

  ProductHistoryEntity fromJson(Map<String, Object?> json) {
    return ProductHistoryEntity.fromJson(json);
  }
}

/// @nodoc
const $ProductHistoryEntity = _$ProductHistoryEntityTearOff();

/// @nodoc
mixin _$ProductHistoryEntity {
  String get image => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get detail => throw _privateConstructorUsedError;
  int get quantity => throw _privateConstructorUsedError;
  bool get delivered => throw _privateConstructorUsedError;
  @JsonKey(name: 'line_total')
  double get lineTotal => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductHistoryEntityCopyWith<ProductHistoryEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductHistoryEntityCopyWith<$Res> {
  factory $ProductHistoryEntityCopyWith(ProductHistoryEntity value,
          $Res Function(ProductHistoryEntity) then) =
      _$ProductHistoryEntityCopyWithImpl<$Res>;
  $Res call(
      {String image,
      String name,
      String detail,
      int quantity,
      bool delivered,
      @JsonKey(name: 'line_total') double lineTotal});
}

/// @nodoc
class _$ProductHistoryEntityCopyWithImpl<$Res>
    implements $ProductHistoryEntityCopyWith<$Res> {
  _$ProductHistoryEntityCopyWithImpl(this._value, this._then);

  final ProductHistoryEntity _value;
  // ignore: unused_field
  final $Res Function(ProductHistoryEntity) _then;

  @override
  $Res call({
    Object? image = freezed,
    Object? name = freezed,
    Object? detail = freezed,
    Object? quantity = freezed,
    Object? delivered = freezed,
    Object? lineTotal = freezed,
  }) {
    return _then(_value.copyWith(
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
      delivered: delivered == freezed
          ? _value.delivered
          : delivered // ignore: cast_nullable_to_non_nullable
              as bool,
      lineTotal: lineTotal == freezed
          ? _value.lineTotal
          : lineTotal // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
abstract class _$ProductHistoryEntityCopyWith<$Res>
    implements $ProductHistoryEntityCopyWith<$Res> {
  factory _$ProductHistoryEntityCopyWith(_ProductHistoryEntity value,
          $Res Function(_ProductHistoryEntity) then) =
      __$ProductHistoryEntityCopyWithImpl<$Res>;
  @override
  $Res call(
      {String image,
      String name,
      String detail,
      int quantity,
      bool delivered,
      @JsonKey(name: 'line_total') double lineTotal});
}

/// @nodoc
class __$ProductHistoryEntityCopyWithImpl<$Res>
    extends _$ProductHistoryEntityCopyWithImpl<$Res>
    implements _$ProductHistoryEntityCopyWith<$Res> {
  __$ProductHistoryEntityCopyWithImpl(
      _ProductHistoryEntity _value, $Res Function(_ProductHistoryEntity) _then)
      : super(_value, (v) => _then(v as _ProductHistoryEntity));

  @override
  _ProductHistoryEntity get _value => super._value as _ProductHistoryEntity;

  @override
  $Res call({
    Object? image = freezed,
    Object? name = freezed,
    Object? detail = freezed,
    Object? quantity = freezed,
    Object? delivered = freezed,
    Object? lineTotal = freezed,
  }) {
    return _then(_ProductHistoryEntity(
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
      delivered: delivered == freezed
          ? _value.delivered
          : delivered // ignore: cast_nullable_to_non_nullable
              as bool,
      lineTotal: lineTotal == freezed
          ? _value.lineTotal
          : lineTotal // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ProductHistoryEntity extends _ProductHistoryEntity {
  const _$_ProductHistoryEntity(
      {required this.image,
      required this.name,
      required this.detail,
      required this.quantity,
      required this.delivered,
      @JsonKey(name: 'line_total') required this.lineTotal})
      : super._();

  factory _$_ProductHistoryEntity.fromJson(Map<String, dynamic> json) =>
      _$$_ProductHistoryEntityFromJson(json);

  @override
  final String image;
  @override
  final String name;
  @override
  final String detail;
  @override
  final int quantity;
  @override
  final bool delivered;
  @override
  @JsonKey(name: 'line_total')
  final double lineTotal;

  @override
  String toString() {
    return 'ProductHistoryEntity(image: $image, name: $name, detail: $detail, quantity: $quantity, delivered: $delivered, lineTotal: $lineTotal)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ProductHistoryEntity &&
            const DeepCollectionEquality().equals(other.image, image) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.detail, detail) &&
            const DeepCollectionEquality().equals(other.quantity, quantity) &&
            const DeepCollectionEquality().equals(other.delivered, delivered) &&
            const DeepCollectionEquality().equals(other.lineTotal, lineTotal));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(image),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(detail),
      const DeepCollectionEquality().hash(quantity),
      const DeepCollectionEquality().hash(delivered),
      const DeepCollectionEquality().hash(lineTotal));

  @JsonKey(ignore: true)
  @override
  _$ProductHistoryEntityCopyWith<_ProductHistoryEntity> get copyWith =>
      __$ProductHistoryEntityCopyWithImpl<_ProductHistoryEntity>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProductHistoryEntityToJson(this);
  }
}

abstract class _ProductHistoryEntity extends ProductHistoryEntity {
  const factory _ProductHistoryEntity(
          {required String image,
          required String name,
          required String detail,
          required int quantity,
          required bool delivered,
          @JsonKey(name: 'line_total') required double lineTotal}) =
      _$_ProductHistoryEntity;
  const _ProductHistoryEntity._() : super._();

  factory _ProductHistoryEntity.fromJson(Map<String, dynamic> json) =
      _$_ProductHistoryEntity.fromJson;

  @override
  String get image;
  @override
  String get name;
  @override
  String get detail;
  @override
  int get quantity;
  @override
  bool get delivered;
  @override
  @JsonKey(name: 'line_total')
  double get lineTotal;
  @override
  @JsonKey(ignore: true)
  _$ProductHistoryEntityCopyWith<_ProductHistoryEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
