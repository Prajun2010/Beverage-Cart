// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'product_action_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ProductActionEventTearOff {
  const _$ProductActionEventTearOff();

  _PlaceOrder placeOrder({required List<Map<String, dynamic>> data}) {
    return _PlaceOrder(
      data: data,
    );
  }

  _SelectPaymentMethod selectPaymentMethod({required int selectId}) {
    return _SelectPaymentMethod(
      selectId: selectId,
    );
  }

  _Payment payment(
      {required double amount, required List<Map<String, dynamic>> data}) {
    return _Payment(
      amount: amount,
      data: data,
    );
  }

  _PaymentOutstanding paymentOutstanding({required double amount}) {
    return _PaymentOutstanding(
      amount: amount,
    );
  }
}

/// @nodoc
const $ProductActionEvent = _$ProductActionEventTearOff();

/// @nodoc
mixin _$ProductActionEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Map<String, dynamic>> data) placeOrder,
    required TResult Function(int selectId) selectPaymentMethod,
    required TResult Function(double amount, List<Map<String, dynamic>> data)
        payment,
    required TResult Function(double amount) paymentOutstanding,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<Map<String, dynamic>> data)? placeOrder,
    TResult Function(int selectId)? selectPaymentMethod,
    TResult Function(double amount, List<Map<String, dynamic>> data)? payment,
    TResult Function(double amount)? paymentOutstanding,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Map<String, dynamic>> data)? placeOrder,
    TResult Function(int selectId)? selectPaymentMethod,
    TResult Function(double amount, List<Map<String, dynamic>> data)? payment,
    TResult Function(double amount)? paymentOutstanding,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PlaceOrder value) placeOrder,
    required TResult Function(_SelectPaymentMethod value) selectPaymentMethod,
    required TResult Function(_Payment value) payment,
    required TResult Function(_PaymentOutstanding value) paymentOutstanding,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_PlaceOrder value)? placeOrder,
    TResult Function(_SelectPaymentMethod value)? selectPaymentMethod,
    TResult Function(_Payment value)? payment,
    TResult Function(_PaymentOutstanding value)? paymentOutstanding,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PlaceOrder value)? placeOrder,
    TResult Function(_SelectPaymentMethod value)? selectPaymentMethod,
    TResult Function(_Payment value)? payment,
    TResult Function(_PaymentOutstanding value)? paymentOutstanding,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductActionEventCopyWith<$Res> {
  factory $ProductActionEventCopyWith(
          ProductActionEvent value, $Res Function(ProductActionEvent) then) =
      _$ProductActionEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ProductActionEventCopyWithImpl<$Res>
    implements $ProductActionEventCopyWith<$Res> {
  _$ProductActionEventCopyWithImpl(this._value, this._then);

  final ProductActionEvent _value;
  // ignore: unused_field
  final $Res Function(ProductActionEvent) _then;
}

/// @nodoc
abstract class _$PlaceOrderCopyWith<$Res> {
  factory _$PlaceOrderCopyWith(
          _PlaceOrder value, $Res Function(_PlaceOrder) then) =
      __$PlaceOrderCopyWithImpl<$Res>;
  $Res call({List<Map<String, dynamic>> data});
}

/// @nodoc
class __$PlaceOrderCopyWithImpl<$Res>
    extends _$ProductActionEventCopyWithImpl<$Res>
    implements _$PlaceOrderCopyWith<$Res> {
  __$PlaceOrderCopyWithImpl(
      _PlaceOrder _value, $Res Function(_PlaceOrder) _then)
      : super(_value, (v) => _then(v as _PlaceOrder));

  @override
  _PlaceOrder get _value => super._value as _PlaceOrder;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_PlaceOrder(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>,
    ));
  }
}

/// @nodoc

class _$_PlaceOrder implements _PlaceOrder {
  const _$_PlaceOrder({required this.data});

  @override
  final List<Map<String, dynamic>> data;

  @override
  String toString() {
    return 'ProductActionEvent.placeOrder(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PlaceOrder &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  _$PlaceOrderCopyWith<_PlaceOrder> get copyWith =>
      __$PlaceOrderCopyWithImpl<_PlaceOrder>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Map<String, dynamic>> data) placeOrder,
    required TResult Function(int selectId) selectPaymentMethod,
    required TResult Function(double amount, List<Map<String, dynamic>> data)
        payment,
    required TResult Function(double amount) paymentOutstanding,
  }) {
    return placeOrder(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<Map<String, dynamic>> data)? placeOrder,
    TResult Function(int selectId)? selectPaymentMethod,
    TResult Function(double amount, List<Map<String, dynamic>> data)? payment,
    TResult Function(double amount)? paymentOutstanding,
  }) {
    return placeOrder?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Map<String, dynamic>> data)? placeOrder,
    TResult Function(int selectId)? selectPaymentMethod,
    TResult Function(double amount, List<Map<String, dynamic>> data)? payment,
    TResult Function(double amount)? paymentOutstanding,
    required TResult orElse(),
  }) {
    if (placeOrder != null) {
      return placeOrder(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PlaceOrder value) placeOrder,
    required TResult Function(_SelectPaymentMethod value) selectPaymentMethod,
    required TResult Function(_Payment value) payment,
    required TResult Function(_PaymentOutstanding value) paymentOutstanding,
  }) {
    return placeOrder(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_PlaceOrder value)? placeOrder,
    TResult Function(_SelectPaymentMethod value)? selectPaymentMethod,
    TResult Function(_Payment value)? payment,
    TResult Function(_PaymentOutstanding value)? paymentOutstanding,
  }) {
    return placeOrder?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PlaceOrder value)? placeOrder,
    TResult Function(_SelectPaymentMethod value)? selectPaymentMethod,
    TResult Function(_Payment value)? payment,
    TResult Function(_PaymentOutstanding value)? paymentOutstanding,
    required TResult orElse(),
  }) {
    if (placeOrder != null) {
      return placeOrder(this);
    }
    return orElse();
  }
}

abstract class _PlaceOrder implements ProductActionEvent {
  const factory _PlaceOrder({required List<Map<String, dynamic>> data}) =
      _$_PlaceOrder;

  List<Map<String, dynamic>> get data;
  @JsonKey(ignore: true)
  _$PlaceOrderCopyWith<_PlaceOrder> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$SelectPaymentMethodCopyWith<$Res> {
  factory _$SelectPaymentMethodCopyWith(_SelectPaymentMethod value,
          $Res Function(_SelectPaymentMethod) then) =
      __$SelectPaymentMethodCopyWithImpl<$Res>;
  $Res call({int selectId});
}

/// @nodoc
class __$SelectPaymentMethodCopyWithImpl<$Res>
    extends _$ProductActionEventCopyWithImpl<$Res>
    implements _$SelectPaymentMethodCopyWith<$Res> {
  __$SelectPaymentMethodCopyWithImpl(
      _SelectPaymentMethod _value, $Res Function(_SelectPaymentMethod) _then)
      : super(_value, (v) => _then(v as _SelectPaymentMethod));

  @override
  _SelectPaymentMethod get _value => super._value as _SelectPaymentMethod;

  @override
  $Res call({
    Object? selectId = freezed,
  }) {
    return _then(_SelectPaymentMethod(
      selectId: selectId == freezed
          ? _value.selectId
          : selectId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_SelectPaymentMethod implements _SelectPaymentMethod {
  const _$_SelectPaymentMethod({required this.selectId});

  @override
  final int selectId;

  @override
  String toString() {
    return 'ProductActionEvent.selectPaymentMethod(selectId: $selectId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SelectPaymentMethod &&
            const DeepCollectionEquality().equals(other.selectId, selectId));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(selectId));

  @JsonKey(ignore: true)
  @override
  _$SelectPaymentMethodCopyWith<_SelectPaymentMethod> get copyWith =>
      __$SelectPaymentMethodCopyWithImpl<_SelectPaymentMethod>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Map<String, dynamic>> data) placeOrder,
    required TResult Function(int selectId) selectPaymentMethod,
    required TResult Function(double amount, List<Map<String, dynamic>> data)
        payment,
    required TResult Function(double amount) paymentOutstanding,
  }) {
    return selectPaymentMethod(selectId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<Map<String, dynamic>> data)? placeOrder,
    TResult Function(int selectId)? selectPaymentMethod,
    TResult Function(double amount, List<Map<String, dynamic>> data)? payment,
    TResult Function(double amount)? paymentOutstanding,
  }) {
    return selectPaymentMethod?.call(selectId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Map<String, dynamic>> data)? placeOrder,
    TResult Function(int selectId)? selectPaymentMethod,
    TResult Function(double amount, List<Map<String, dynamic>> data)? payment,
    TResult Function(double amount)? paymentOutstanding,
    required TResult orElse(),
  }) {
    if (selectPaymentMethod != null) {
      return selectPaymentMethod(selectId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PlaceOrder value) placeOrder,
    required TResult Function(_SelectPaymentMethod value) selectPaymentMethod,
    required TResult Function(_Payment value) payment,
    required TResult Function(_PaymentOutstanding value) paymentOutstanding,
  }) {
    return selectPaymentMethod(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_PlaceOrder value)? placeOrder,
    TResult Function(_SelectPaymentMethod value)? selectPaymentMethod,
    TResult Function(_Payment value)? payment,
    TResult Function(_PaymentOutstanding value)? paymentOutstanding,
  }) {
    return selectPaymentMethod?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PlaceOrder value)? placeOrder,
    TResult Function(_SelectPaymentMethod value)? selectPaymentMethod,
    TResult Function(_Payment value)? payment,
    TResult Function(_PaymentOutstanding value)? paymentOutstanding,
    required TResult orElse(),
  }) {
    if (selectPaymentMethod != null) {
      return selectPaymentMethod(this);
    }
    return orElse();
  }
}

abstract class _SelectPaymentMethod implements ProductActionEvent {
  const factory _SelectPaymentMethod({required int selectId}) =
      _$_SelectPaymentMethod;

  int get selectId;
  @JsonKey(ignore: true)
  _$SelectPaymentMethodCopyWith<_SelectPaymentMethod> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$PaymentCopyWith<$Res> {
  factory _$PaymentCopyWith(_Payment value, $Res Function(_Payment) then) =
      __$PaymentCopyWithImpl<$Res>;
  $Res call({double amount, List<Map<String, dynamic>> data});
}

/// @nodoc
class __$PaymentCopyWithImpl<$Res>
    extends _$ProductActionEventCopyWithImpl<$Res>
    implements _$PaymentCopyWith<$Res> {
  __$PaymentCopyWithImpl(_Payment _value, $Res Function(_Payment) _then)
      : super(_value, (v) => _then(v as _Payment));

  @override
  _Payment get _value => super._value as _Payment;

  @override
  $Res call({
    Object? amount = freezed,
    Object? data = freezed,
  }) {
    return _then(_Payment(
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>,
    ));
  }
}

/// @nodoc

class _$_Payment implements _Payment {
  const _$_Payment({required this.amount, required this.data});

  @override
  final double amount;
  @override
  final List<Map<String, dynamic>> data;

  @override
  String toString() {
    return 'ProductActionEvent.payment(amount: $amount, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Payment &&
            const DeepCollectionEquality().equals(other.amount, amount) &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(amount),
      const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  _$PaymentCopyWith<_Payment> get copyWith =>
      __$PaymentCopyWithImpl<_Payment>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Map<String, dynamic>> data) placeOrder,
    required TResult Function(int selectId) selectPaymentMethod,
    required TResult Function(double amount, List<Map<String, dynamic>> data)
        payment,
    required TResult Function(double amount) paymentOutstanding,
  }) {
    return payment(amount, data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<Map<String, dynamic>> data)? placeOrder,
    TResult Function(int selectId)? selectPaymentMethod,
    TResult Function(double amount, List<Map<String, dynamic>> data)? payment,
    TResult Function(double amount)? paymentOutstanding,
  }) {
    return payment?.call(amount, data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Map<String, dynamic>> data)? placeOrder,
    TResult Function(int selectId)? selectPaymentMethod,
    TResult Function(double amount, List<Map<String, dynamic>> data)? payment,
    TResult Function(double amount)? paymentOutstanding,
    required TResult orElse(),
  }) {
    if (payment != null) {
      return payment(amount, data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PlaceOrder value) placeOrder,
    required TResult Function(_SelectPaymentMethod value) selectPaymentMethod,
    required TResult Function(_Payment value) payment,
    required TResult Function(_PaymentOutstanding value) paymentOutstanding,
  }) {
    return payment(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_PlaceOrder value)? placeOrder,
    TResult Function(_SelectPaymentMethod value)? selectPaymentMethod,
    TResult Function(_Payment value)? payment,
    TResult Function(_PaymentOutstanding value)? paymentOutstanding,
  }) {
    return payment?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PlaceOrder value)? placeOrder,
    TResult Function(_SelectPaymentMethod value)? selectPaymentMethod,
    TResult Function(_Payment value)? payment,
    TResult Function(_PaymentOutstanding value)? paymentOutstanding,
    required TResult orElse(),
  }) {
    if (payment != null) {
      return payment(this);
    }
    return orElse();
  }
}

abstract class _Payment implements ProductActionEvent {
  const factory _Payment(
      {required double amount,
      required List<Map<String, dynamic>> data}) = _$_Payment;

  double get amount;
  List<Map<String, dynamic>> get data;
  @JsonKey(ignore: true)
  _$PaymentCopyWith<_Payment> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$PaymentOutstandingCopyWith<$Res> {
  factory _$PaymentOutstandingCopyWith(
          _PaymentOutstanding value, $Res Function(_PaymentOutstanding) then) =
      __$PaymentOutstandingCopyWithImpl<$Res>;
  $Res call({double amount});
}

/// @nodoc
class __$PaymentOutstandingCopyWithImpl<$Res>
    extends _$ProductActionEventCopyWithImpl<$Res>
    implements _$PaymentOutstandingCopyWith<$Res> {
  __$PaymentOutstandingCopyWithImpl(
      _PaymentOutstanding _value, $Res Function(_PaymentOutstanding) _then)
      : super(_value, (v) => _then(v as _PaymentOutstanding));

  @override
  _PaymentOutstanding get _value => super._value as _PaymentOutstanding;

  @override
  $Res call({
    Object? amount = freezed,
  }) {
    return _then(_PaymentOutstanding(
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$_PaymentOutstanding implements _PaymentOutstanding {
  const _$_PaymentOutstanding({required this.amount});

  @override
  final double amount;

  @override
  String toString() {
    return 'ProductActionEvent.paymentOutstanding(amount: $amount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PaymentOutstanding &&
            const DeepCollectionEquality().equals(other.amount, amount));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(amount));

  @JsonKey(ignore: true)
  @override
  _$PaymentOutstandingCopyWith<_PaymentOutstanding> get copyWith =>
      __$PaymentOutstandingCopyWithImpl<_PaymentOutstanding>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Map<String, dynamic>> data) placeOrder,
    required TResult Function(int selectId) selectPaymentMethod,
    required TResult Function(double amount, List<Map<String, dynamic>> data)
        payment,
    required TResult Function(double amount) paymentOutstanding,
  }) {
    return paymentOutstanding(amount);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<Map<String, dynamic>> data)? placeOrder,
    TResult Function(int selectId)? selectPaymentMethod,
    TResult Function(double amount, List<Map<String, dynamic>> data)? payment,
    TResult Function(double amount)? paymentOutstanding,
  }) {
    return paymentOutstanding?.call(amount);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Map<String, dynamic>> data)? placeOrder,
    TResult Function(int selectId)? selectPaymentMethod,
    TResult Function(double amount, List<Map<String, dynamic>> data)? payment,
    TResult Function(double amount)? paymentOutstanding,
    required TResult orElse(),
  }) {
    if (paymentOutstanding != null) {
      return paymentOutstanding(amount);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PlaceOrder value) placeOrder,
    required TResult Function(_SelectPaymentMethod value) selectPaymentMethod,
    required TResult Function(_Payment value) payment,
    required TResult Function(_PaymentOutstanding value) paymentOutstanding,
  }) {
    return paymentOutstanding(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_PlaceOrder value)? placeOrder,
    TResult Function(_SelectPaymentMethod value)? selectPaymentMethod,
    TResult Function(_Payment value)? payment,
    TResult Function(_PaymentOutstanding value)? paymentOutstanding,
  }) {
    return paymentOutstanding?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PlaceOrder value)? placeOrder,
    TResult Function(_SelectPaymentMethod value)? selectPaymentMethod,
    TResult Function(_Payment value)? payment,
    TResult Function(_PaymentOutstanding value)? paymentOutstanding,
    required TResult orElse(),
  }) {
    if (paymentOutstanding != null) {
      return paymentOutstanding(this);
    }
    return orElse();
  }
}

abstract class _PaymentOutstanding implements ProductActionEvent {
  const factory _PaymentOutstanding({required double amount}) =
      _$_PaymentOutstanding;

  double get amount;
  @JsonKey(ignore: true)
  _$PaymentOutstandingCopyWith<_PaymentOutstanding> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$ProductActionStateTearOff {
  const _$ProductActionStateTearOff();

  _ProductActionState call(
      {required bool isProcessing,
      required int paymentSelectId,
      Either<Failure, String>? failureOrSuccess}) {
    return _ProductActionState(
      isProcessing: isProcessing,
      paymentSelectId: paymentSelectId,
      failureOrSuccess: failureOrSuccess,
    );
  }
}

/// @nodoc
const $ProductActionState = _$ProductActionStateTearOff();

/// @nodoc
mixin _$ProductActionState {
  bool get isProcessing => throw _privateConstructorUsedError;
  int get paymentSelectId => throw _privateConstructorUsedError;
  Either<Failure, String>? get failureOrSuccess =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProductActionStateCopyWith<ProductActionState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductActionStateCopyWith<$Res> {
  factory $ProductActionStateCopyWith(
          ProductActionState value, $Res Function(ProductActionState) then) =
      _$ProductActionStateCopyWithImpl<$Res>;
  $Res call(
      {bool isProcessing,
      int paymentSelectId,
      Either<Failure, String>? failureOrSuccess});
}

/// @nodoc
class _$ProductActionStateCopyWithImpl<$Res>
    implements $ProductActionStateCopyWith<$Res> {
  _$ProductActionStateCopyWithImpl(this._value, this._then);

  final ProductActionState _value;
  // ignore: unused_field
  final $Res Function(ProductActionState) _then;

  @override
  $Res call({
    Object? isProcessing = freezed,
    Object? paymentSelectId = freezed,
    Object? failureOrSuccess = freezed,
  }) {
    return _then(_value.copyWith(
      isProcessing: isProcessing == freezed
          ? _value.isProcessing
          : isProcessing // ignore: cast_nullable_to_non_nullable
              as bool,
      paymentSelectId: paymentSelectId == freezed
          ? _value.paymentSelectId
          : paymentSelectId // ignore: cast_nullable_to_non_nullable
              as int,
      failureOrSuccess: failureOrSuccess == freezed
          ? _value.failureOrSuccess
          : failureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Either<Failure, String>?,
    ));
  }
}

/// @nodoc
abstract class _$ProductActionStateCopyWith<$Res>
    implements $ProductActionStateCopyWith<$Res> {
  factory _$ProductActionStateCopyWith(
          _ProductActionState value, $Res Function(_ProductActionState) then) =
      __$ProductActionStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isProcessing,
      int paymentSelectId,
      Either<Failure, String>? failureOrSuccess});
}

/// @nodoc
class __$ProductActionStateCopyWithImpl<$Res>
    extends _$ProductActionStateCopyWithImpl<$Res>
    implements _$ProductActionStateCopyWith<$Res> {
  __$ProductActionStateCopyWithImpl(
      _ProductActionState _value, $Res Function(_ProductActionState) _then)
      : super(_value, (v) => _then(v as _ProductActionState));

  @override
  _ProductActionState get _value => super._value as _ProductActionState;

  @override
  $Res call({
    Object? isProcessing = freezed,
    Object? paymentSelectId = freezed,
    Object? failureOrSuccess = freezed,
  }) {
    return _then(_ProductActionState(
      isProcessing: isProcessing == freezed
          ? _value.isProcessing
          : isProcessing // ignore: cast_nullable_to_non_nullable
              as bool,
      paymentSelectId: paymentSelectId == freezed
          ? _value.paymentSelectId
          : paymentSelectId // ignore: cast_nullable_to_non_nullable
              as int,
      failureOrSuccess: failureOrSuccess == freezed
          ? _value.failureOrSuccess
          : failureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Either<Failure, String>?,
    ));
  }
}

/// @nodoc

class _$_ProductActionState implements _ProductActionState {
  const _$_ProductActionState(
      {required this.isProcessing,
      required this.paymentSelectId,
      this.failureOrSuccess});

  @override
  final bool isProcessing;
  @override
  final int paymentSelectId;
  @override
  final Either<Failure, String>? failureOrSuccess;

  @override
  String toString() {
    return 'ProductActionState(isProcessing: $isProcessing, paymentSelectId: $paymentSelectId, failureOrSuccess: $failureOrSuccess)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ProductActionState &&
            const DeepCollectionEquality()
                .equals(other.isProcessing, isProcessing) &&
            const DeepCollectionEquality()
                .equals(other.paymentSelectId, paymentSelectId) &&
            const DeepCollectionEquality()
                .equals(other.failureOrSuccess, failureOrSuccess));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isProcessing),
      const DeepCollectionEquality().hash(paymentSelectId),
      const DeepCollectionEquality().hash(failureOrSuccess));

  @JsonKey(ignore: true)
  @override
  _$ProductActionStateCopyWith<_ProductActionState> get copyWith =>
      __$ProductActionStateCopyWithImpl<_ProductActionState>(this, _$identity);
}

abstract class _ProductActionState implements ProductActionState {
  const factory _ProductActionState(
      {required bool isProcessing,
      required int paymentSelectId,
      Either<Failure, String>? failureOrSuccess}) = _$_ProductActionState;

  @override
  bool get isProcessing;
  @override
  int get paymentSelectId;
  @override
  Either<Failure, String>? get failureOrSuccess;
  @override
  @JsonKey(ignore: true)
  _$ProductActionStateCopyWith<_ProductActionState> get copyWith =>
      throw _privateConstructorUsedError;
}
