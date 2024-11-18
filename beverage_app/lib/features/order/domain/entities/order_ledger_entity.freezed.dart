// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'order_ledger_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

OrderLedgerEntity _$OrderLedgerEntityFromJson(Map<String, dynamic> json) {
  return _OrderLedgerEntity.fromJson(json);
}

/// @nodoc
class _$OrderLedgerEntityTearOff {
  const _$OrderLedgerEntityTearOff();

  _OrderLedgerEntity call(
      {@JsonKey(name: 'transaction_name') required String transactionName,
      @JsonKey(name: 'transaction_type') required String transactionType,
      required double amount,
      required String date}) {
    return _OrderLedgerEntity(
      transactionName: transactionName,
      transactionType: transactionType,
      amount: amount,
      date: date,
    );
  }

  OrderLedgerEntity fromJson(Map<String, Object?> json) {
    return OrderLedgerEntity.fromJson(json);
  }
}

/// @nodoc
const $OrderLedgerEntity = _$OrderLedgerEntityTearOff();

/// @nodoc
mixin _$OrderLedgerEntity {
  @JsonKey(name: 'transaction_name')
  String get transactionName => throw _privateConstructorUsedError;
  @JsonKey(name: 'transaction_type')
  String get transactionType => throw _privateConstructorUsedError;
  double get amount => throw _privateConstructorUsedError;
  String get date => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OrderLedgerEntityCopyWith<OrderLedgerEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderLedgerEntityCopyWith<$Res> {
  factory $OrderLedgerEntityCopyWith(
          OrderLedgerEntity value, $Res Function(OrderLedgerEntity) then) =
      _$OrderLedgerEntityCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'transaction_name') String transactionName,
      @JsonKey(name: 'transaction_type') String transactionType,
      double amount,
      String date});
}

/// @nodoc
class _$OrderLedgerEntityCopyWithImpl<$Res>
    implements $OrderLedgerEntityCopyWith<$Res> {
  _$OrderLedgerEntityCopyWithImpl(this._value, this._then);

  final OrderLedgerEntity _value;
  // ignore: unused_field
  final $Res Function(OrderLedgerEntity) _then;

  @override
  $Res call({
    Object? transactionName = freezed,
    Object? transactionType = freezed,
    Object? amount = freezed,
    Object? date = freezed,
  }) {
    return _then(_value.copyWith(
      transactionName: transactionName == freezed
          ? _value.transactionName
          : transactionName // ignore: cast_nullable_to_non_nullable
              as String,
      transactionType: transactionType == freezed
          ? _value.transactionType
          : transactionType // ignore: cast_nullable_to_non_nullable
              as String,
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$OrderLedgerEntityCopyWith<$Res>
    implements $OrderLedgerEntityCopyWith<$Res> {
  factory _$OrderLedgerEntityCopyWith(
          _OrderLedgerEntity value, $Res Function(_OrderLedgerEntity) then) =
      __$OrderLedgerEntityCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'transaction_name') String transactionName,
      @JsonKey(name: 'transaction_type') String transactionType,
      double amount,
      String date});
}

/// @nodoc
class __$OrderLedgerEntityCopyWithImpl<$Res>
    extends _$OrderLedgerEntityCopyWithImpl<$Res>
    implements _$OrderLedgerEntityCopyWith<$Res> {
  __$OrderLedgerEntityCopyWithImpl(
      _OrderLedgerEntity _value, $Res Function(_OrderLedgerEntity) _then)
      : super(_value, (v) => _then(v as _OrderLedgerEntity));

  @override
  _OrderLedgerEntity get _value => super._value as _OrderLedgerEntity;

  @override
  $Res call({
    Object? transactionName = freezed,
    Object? transactionType = freezed,
    Object? amount = freezed,
    Object? date = freezed,
  }) {
    return _then(_OrderLedgerEntity(
      transactionName: transactionName == freezed
          ? _value.transactionName
          : transactionName // ignore: cast_nullable_to_non_nullable
              as String,
      transactionType: transactionType == freezed
          ? _value.transactionType
          : transactionType // ignore: cast_nullable_to_non_nullable
              as String,
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_OrderLedgerEntity extends _OrderLedgerEntity {
  const _$_OrderLedgerEntity(
      {@JsonKey(name: 'transaction_name') required this.transactionName,
      @JsonKey(name: 'transaction_type') required this.transactionType,
      required this.amount,
      required this.date})
      : super._();

  factory _$_OrderLedgerEntity.fromJson(Map<String, dynamic> json) =>
      _$$_OrderLedgerEntityFromJson(json);

  @override
  @JsonKey(name: 'transaction_name')
  final String transactionName;
  @override
  @JsonKey(name: 'transaction_type')
  final String transactionType;
  @override
  final double amount;
  @override
  final String date;

  @override
  String toString() {
    return 'OrderLedgerEntity(transactionName: $transactionName, transactionType: $transactionType, amount: $amount, date: $date)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _OrderLedgerEntity &&
            const DeepCollectionEquality()
                .equals(other.transactionName, transactionName) &&
            const DeepCollectionEquality()
                .equals(other.transactionType, transactionType) &&
            const DeepCollectionEquality().equals(other.amount, amount) &&
            const DeepCollectionEquality().equals(other.date, date));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(transactionName),
      const DeepCollectionEquality().hash(transactionType),
      const DeepCollectionEquality().hash(amount),
      const DeepCollectionEquality().hash(date));

  @JsonKey(ignore: true)
  @override
  _$OrderLedgerEntityCopyWith<_OrderLedgerEntity> get copyWith =>
      __$OrderLedgerEntityCopyWithImpl<_OrderLedgerEntity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OrderLedgerEntityToJson(this);
  }
}

abstract class _OrderLedgerEntity extends OrderLedgerEntity {
  const factory _OrderLedgerEntity(
      {@JsonKey(name: 'transaction_name') required String transactionName,
      @JsonKey(name: 'transaction_type') required String transactionType,
      required double amount,
      required String date}) = _$_OrderLedgerEntity;
  const _OrderLedgerEntity._() : super._();

  factory _OrderLedgerEntity.fromJson(Map<String, dynamic> json) =
      _$_OrderLedgerEntity.fromJson;

  @override
  @JsonKey(name: 'transaction_name')
  String get transactionName;
  @override
  @JsonKey(name: 'transaction_type')
  String get transactionType;
  @override
  double get amount;
  @override
  String get date;
  @override
  @JsonKey(ignore: true)
  _$OrderLedgerEntityCopyWith<_OrderLedgerEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
