// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'order_details_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

OrderDetailsEntity _$OrderDetailsEntityFromJson(Map<String, dynamic> json) {
  return _OrderDetailsEntity.fromJson(json);
}

/// @nodoc
class _$OrderDetailsEntityTearOff {
  const _$OrderDetailsEntityTearOff();

  _OrderDetailsEntity call(
      {@JsonKey(name: 'order_no') required int orderNo,
      required String date,
      required String distributor,
      required String address,
      required String status,
      @JsonKey(name: 'sub_total') required double subTotal,
      required double tax,
      @JsonKey(name: 'total_amount') required double totalAmount,
      required String reorder,
      required List<ProductHistoryEntity> products}) {
    return _OrderDetailsEntity(
      orderNo: orderNo,
      date: date,
      distributor: distributor,
      address: address,
      status: status,
      subTotal: subTotal,
      tax: tax,
      totalAmount: totalAmount,
      reorder: reorder,
      products: products,
    );
  }

  OrderDetailsEntity fromJson(Map<String, Object?> json) {
    return OrderDetailsEntity.fromJson(json);
  }
}

/// @nodoc
const $OrderDetailsEntity = _$OrderDetailsEntityTearOff();

/// @nodoc
mixin _$OrderDetailsEntity {
  @JsonKey(name: 'order_no')
  int get orderNo => throw _privateConstructorUsedError;
  String get date => throw _privateConstructorUsedError;
  String get distributor => throw _privateConstructorUsedError;
  String get address => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'sub_total')
  double get subTotal => throw _privateConstructorUsedError;
  double get tax => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_amount')
  double get totalAmount => throw _privateConstructorUsedError;
  String get reorder => throw _privateConstructorUsedError;
  List<ProductHistoryEntity> get products => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OrderDetailsEntityCopyWith<OrderDetailsEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderDetailsEntityCopyWith<$Res> {
  factory $OrderDetailsEntityCopyWith(
          OrderDetailsEntity value, $Res Function(OrderDetailsEntity) then) =
      _$OrderDetailsEntityCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'order_no') int orderNo,
      String date,
      String distributor,
      String address,
      String status,
      @JsonKey(name: 'sub_total') double subTotal,
      double tax,
      @JsonKey(name: 'total_amount') double totalAmount,
      String reorder,
      List<ProductHistoryEntity> products});
}

/// @nodoc
class _$OrderDetailsEntityCopyWithImpl<$Res>
    implements $OrderDetailsEntityCopyWith<$Res> {
  _$OrderDetailsEntityCopyWithImpl(this._value, this._then);

  final OrderDetailsEntity _value;
  // ignore: unused_field
  final $Res Function(OrderDetailsEntity) _then;

  @override
  $Res call({
    Object? orderNo = freezed,
    Object? date = freezed,
    Object? distributor = freezed,
    Object? address = freezed,
    Object? status = freezed,
    Object? subTotal = freezed,
    Object? tax = freezed,
    Object? totalAmount = freezed,
    Object? reorder = freezed,
    Object? products = freezed,
  }) {
    return _then(_value.copyWith(
      orderNo: orderNo == freezed
          ? _value.orderNo
          : orderNo // ignore: cast_nullable_to_non_nullable
              as int,
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      distributor: distributor == freezed
          ? _value.distributor
          : distributor // ignore: cast_nullable_to_non_nullable
              as String,
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
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
      reorder: reorder == freezed
          ? _value.reorder
          : reorder // ignore: cast_nullable_to_non_nullable
              as String,
      products: products == freezed
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<ProductHistoryEntity>,
    ));
  }
}

/// @nodoc
abstract class _$OrderDetailsEntityCopyWith<$Res>
    implements $OrderDetailsEntityCopyWith<$Res> {
  factory _$OrderDetailsEntityCopyWith(
          _OrderDetailsEntity value, $Res Function(_OrderDetailsEntity) then) =
      __$OrderDetailsEntityCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'order_no') int orderNo,
      String date,
      String distributor,
      String address,
      String status,
      @JsonKey(name: 'sub_total') double subTotal,
      double tax,
      @JsonKey(name: 'total_amount') double totalAmount,
      String reorder,
      List<ProductHistoryEntity> products});
}

/// @nodoc
class __$OrderDetailsEntityCopyWithImpl<$Res>
    extends _$OrderDetailsEntityCopyWithImpl<$Res>
    implements _$OrderDetailsEntityCopyWith<$Res> {
  __$OrderDetailsEntityCopyWithImpl(
      _OrderDetailsEntity _value, $Res Function(_OrderDetailsEntity) _then)
      : super(_value, (v) => _then(v as _OrderDetailsEntity));

  @override
  _OrderDetailsEntity get _value => super._value as _OrderDetailsEntity;

  @override
  $Res call({
    Object? orderNo = freezed,
    Object? date = freezed,
    Object? distributor = freezed,
    Object? address = freezed,
    Object? status = freezed,
    Object? subTotal = freezed,
    Object? tax = freezed,
    Object? totalAmount = freezed,
    Object? reorder = freezed,
    Object? products = freezed,
  }) {
    return _then(_OrderDetailsEntity(
      orderNo: orderNo == freezed
          ? _value.orderNo
          : orderNo // ignore: cast_nullable_to_non_nullable
              as int,
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      distributor: distributor == freezed
          ? _value.distributor
          : distributor // ignore: cast_nullable_to_non_nullable
              as String,
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
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
      reorder: reorder == freezed
          ? _value.reorder
          : reorder // ignore: cast_nullable_to_non_nullable
              as String,
      products: products == freezed
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<ProductHistoryEntity>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_OrderDetailsEntity extends _OrderDetailsEntity {
  const _$_OrderDetailsEntity(
      {@JsonKey(name: 'order_no') required this.orderNo,
      required this.date,
      required this.distributor,
      required this.address,
      required this.status,
      @JsonKey(name: 'sub_total') required this.subTotal,
      required this.tax,
      @JsonKey(name: 'total_amount') required this.totalAmount,
      required this.reorder,
      required this.products})
      : super._();

  factory _$_OrderDetailsEntity.fromJson(Map<String, dynamic> json) =>
      _$$_OrderDetailsEntityFromJson(json);

  @override
  @JsonKey(name: 'order_no')
  final int orderNo;
  @override
  final String date;
  @override
  final String distributor;
  @override
  final String address;
  @override
  final String status;
  @override
  @JsonKey(name: 'sub_total')
  final double subTotal;
  @override
  final double tax;
  @override
  @JsonKey(name: 'total_amount')
  final double totalAmount;
  @override
  final String reorder;
  @override
  final List<ProductHistoryEntity> products;

  @override
  String toString() {
    return 'OrderDetailsEntity(orderNo: $orderNo, date: $date, distributor: $distributor, address: $address, status: $status, subTotal: $subTotal, tax: $tax, totalAmount: $totalAmount, reorder: $reorder, products: $products)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _OrderDetailsEntity &&
            const DeepCollectionEquality().equals(other.orderNo, orderNo) &&
            const DeepCollectionEquality().equals(other.date, date) &&
            const DeepCollectionEquality()
                .equals(other.distributor, distributor) &&
            const DeepCollectionEquality().equals(other.address, address) &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality().equals(other.subTotal, subTotal) &&
            const DeepCollectionEquality().equals(other.tax, tax) &&
            const DeepCollectionEquality()
                .equals(other.totalAmount, totalAmount) &&
            const DeepCollectionEquality().equals(other.reorder, reorder) &&
            const DeepCollectionEquality().equals(other.products, products));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(orderNo),
      const DeepCollectionEquality().hash(date),
      const DeepCollectionEquality().hash(distributor),
      const DeepCollectionEquality().hash(address),
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(subTotal),
      const DeepCollectionEquality().hash(tax),
      const DeepCollectionEquality().hash(totalAmount),
      const DeepCollectionEquality().hash(reorder),
      const DeepCollectionEquality().hash(products));

  @JsonKey(ignore: true)
  @override
  _$OrderDetailsEntityCopyWith<_OrderDetailsEntity> get copyWith =>
      __$OrderDetailsEntityCopyWithImpl<_OrderDetailsEntity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OrderDetailsEntityToJson(this);
  }
}

abstract class _OrderDetailsEntity extends OrderDetailsEntity {
  const factory _OrderDetailsEntity(
      {@JsonKey(name: 'order_no') required int orderNo,
      required String date,
      required String distributor,
      required String address,
      required String status,
      @JsonKey(name: 'sub_total') required double subTotal,
      required double tax,
      @JsonKey(name: 'total_amount') required double totalAmount,
      required String reorder,
      required List<ProductHistoryEntity> products}) = _$_OrderDetailsEntity;
  const _OrderDetailsEntity._() : super._();

  factory _OrderDetailsEntity.fromJson(Map<String, dynamic> json) =
      _$_OrderDetailsEntity.fromJson;

  @override
  @JsonKey(name: 'order_no')
  int get orderNo;
  @override
  String get date;
  @override
  String get distributor;
  @override
  String get address;
  @override
  String get status;
  @override
  @JsonKey(name: 'sub_total')
  double get subTotal;
  @override
  double get tax;
  @override
  @JsonKey(name: 'total_amount')
  double get totalAmount;
  @override
  String get reorder;
  @override
  List<ProductHistoryEntity> get products;
  @override
  @JsonKey(ignore: true)
  _$OrderDetailsEntityCopyWith<_OrderDetailsEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
