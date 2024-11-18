// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'order_history_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

OrderHistoryEntity _$OrderHistoryEntityFromJson(Map<String, dynamic> json) {
  return _OrderHistoryEntity.fromJson(json);
}

/// @nodoc
class _$OrderHistoryEntityTearOff {
  const _$OrderHistoryEntityTearOff();

  _OrderHistoryEntity call(
      {@JsonKey(name: 'order_no') required int orderNo,
      required String distributor,
      required String date,
      required int quantity,
      required String status,
      @JsonKey(name: 'total_amount') required double totalAmount,
      required String url}) {
    return _OrderHistoryEntity(
      orderNo: orderNo,
      distributor: distributor,
      date: date,
      quantity: quantity,
      status: status,
      totalAmount: totalAmount,
      url: url,
    );
  }

  OrderHistoryEntity fromJson(Map<String, Object?> json) {
    return OrderHistoryEntity.fromJson(json);
  }
}

/// @nodoc
const $OrderHistoryEntity = _$OrderHistoryEntityTearOff();

/// @nodoc
mixin _$OrderHistoryEntity {
  @JsonKey(name: 'order_no')
  int get orderNo => throw _privateConstructorUsedError;
  String get distributor => throw _privateConstructorUsedError;
  String get date => throw _privateConstructorUsedError;
  int get quantity => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_amount')
  double get totalAmount => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OrderHistoryEntityCopyWith<OrderHistoryEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderHistoryEntityCopyWith<$Res> {
  factory $OrderHistoryEntityCopyWith(
          OrderHistoryEntity value, $Res Function(OrderHistoryEntity) then) =
      _$OrderHistoryEntityCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'order_no') int orderNo,
      String distributor,
      String date,
      int quantity,
      String status,
      @JsonKey(name: 'total_amount') double totalAmount,
      String url});
}

/// @nodoc
class _$OrderHistoryEntityCopyWithImpl<$Res>
    implements $OrderHistoryEntityCopyWith<$Res> {
  _$OrderHistoryEntityCopyWithImpl(this._value, this._then);

  final OrderHistoryEntity _value;
  // ignore: unused_field
  final $Res Function(OrderHistoryEntity) _then;

  @override
  $Res call({
    Object? orderNo = freezed,
    Object? distributor = freezed,
    Object? date = freezed,
    Object? quantity = freezed,
    Object? status = freezed,
    Object? totalAmount = freezed,
    Object? url = freezed,
  }) {
    return _then(_value.copyWith(
      orderNo: orderNo == freezed
          ? _value.orderNo
          : orderNo // ignore: cast_nullable_to_non_nullable
              as int,
      distributor: distributor == freezed
          ? _value.distributor
          : distributor // ignore: cast_nullable_to_non_nullable
              as String,
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      quantity: quantity == freezed
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      totalAmount: totalAmount == freezed
          ? _value.totalAmount
          : totalAmount // ignore: cast_nullable_to_non_nullable
              as double,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$OrderHistoryEntityCopyWith<$Res>
    implements $OrderHistoryEntityCopyWith<$Res> {
  factory _$OrderHistoryEntityCopyWith(
          _OrderHistoryEntity value, $Res Function(_OrderHistoryEntity) then) =
      __$OrderHistoryEntityCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'order_no') int orderNo,
      String distributor,
      String date,
      int quantity,
      String status,
      @JsonKey(name: 'total_amount') double totalAmount,
      String url});
}

/// @nodoc
class __$OrderHistoryEntityCopyWithImpl<$Res>
    extends _$OrderHistoryEntityCopyWithImpl<$Res>
    implements _$OrderHistoryEntityCopyWith<$Res> {
  __$OrderHistoryEntityCopyWithImpl(
      _OrderHistoryEntity _value, $Res Function(_OrderHistoryEntity) _then)
      : super(_value, (v) => _then(v as _OrderHistoryEntity));

  @override
  _OrderHistoryEntity get _value => super._value as _OrderHistoryEntity;

  @override
  $Res call({
    Object? orderNo = freezed,
    Object? distributor = freezed,
    Object? date = freezed,
    Object? quantity = freezed,
    Object? status = freezed,
    Object? totalAmount = freezed,
    Object? url = freezed,
  }) {
    return _then(_OrderHistoryEntity(
      orderNo: orderNo == freezed
          ? _value.orderNo
          : orderNo // ignore: cast_nullable_to_non_nullable
              as int,
      distributor: distributor == freezed
          ? _value.distributor
          : distributor // ignore: cast_nullable_to_non_nullable
              as String,
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      quantity: quantity == freezed
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      totalAmount: totalAmount == freezed
          ? _value.totalAmount
          : totalAmount // ignore: cast_nullable_to_non_nullable
              as double,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_OrderHistoryEntity extends _OrderHistoryEntity {
  const _$_OrderHistoryEntity(
      {@JsonKey(name: 'order_no') required this.orderNo,
      required this.distributor,
      required this.date,
      required this.quantity,
      required this.status,
      @JsonKey(name: 'total_amount') required this.totalAmount,
      required this.url})
      : super._();

  factory _$_OrderHistoryEntity.fromJson(Map<String, dynamic> json) =>
      _$$_OrderHistoryEntityFromJson(json);

  @override
  @JsonKey(name: 'order_no')
  final int orderNo;
  @override
  final String distributor;
  @override
  final String date;
  @override
  final int quantity;
  @override
  final String status;
  @override
  @JsonKey(name: 'total_amount')
  final double totalAmount;
  @override
  final String url;

  @override
  String toString() {
    return 'OrderHistoryEntity(orderNo: $orderNo, distributor: $distributor, date: $date, quantity: $quantity, status: $status, totalAmount: $totalAmount, url: $url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _OrderHistoryEntity &&
            const DeepCollectionEquality().equals(other.orderNo, orderNo) &&
            const DeepCollectionEquality()
                .equals(other.distributor, distributor) &&
            const DeepCollectionEquality().equals(other.date, date) &&
            const DeepCollectionEquality().equals(other.quantity, quantity) &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality()
                .equals(other.totalAmount, totalAmount) &&
            const DeepCollectionEquality().equals(other.url, url));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(orderNo),
      const DeepCollectionEquality().hash(distributor),
      const DeepCollectionEquality().hash(date),
      const DeepCollectionEquality().hash(quantity),
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(totalAmount),
      const DeepCollectionEquality().hash(url));

  @JsonKey(ignore: true)
  @override
  _$OrderHistoryEntityCopyWith<_OrderHistoryEntity> get copyWith =>
      __$OrderHistoryEntityCopyWithImpl<_OrderHistoryEntity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OrderHistoryEntityToJson(this);
  }
}

abstract class _OrderHistoryEntity extends OrderHistoryEntity {
  const factory _OrderHistoryEntity(
      {@JsonKey(name: 'order_no') required int orderNo,
      required String distributor,
      required String date,
      required int quantity,
      required String status,
      @JsonKey(name: 'total_amount') required double totalAmount,
      required String url}) = _$_OrderHistoryEntity;
  const _OrderHistoryEntity._() : super._();

  factory _OrderHistoryEntity.fromJson(Map<String, dynamic> json) =
      _$_OrderHistoryEntity.fromJson;

  @override
  @JsonKey(name: 'order_no')
  int get orderNo;
  @override
  String get distributor;
  @override
  String get date;
  @override
  int get quantity;
  @override
  String get status;
  @override
  @JsonKey(name: 'total_amount')
  double get totalAmount;
  @override
  String get url;
  @override
  @JsonKey(ignore: true)
  _$OrderHistoryEntityCopyWith<_OrderHistoryEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
