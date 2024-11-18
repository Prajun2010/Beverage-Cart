// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'order_ledger_watcher_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$OrderLedgerWatcherEventTearOff {
  const _$OrderLedgerWatcherEventTearOff();

  _FetchOrderLedgers fetchOrderLedgers() {
    return const _FetchOrderLedgers();
  }
}

/// @nodoc
const $OrderLedgerWatcherEvent = _$OrderLedgerWatcherEventTearOff();

/// @nodoc
mixin _$OrderLedgerWatcherEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchOrderLedgers,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? fetchOrderLedgers,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchOrderLedgers,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchOrderLedgers value) fetchOrderLedgers,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_FetchOrderLedgers value)? fetchOrderLedgers,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchOrderLedgers value)? fetchOrderLedgers,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderLedgerWatcherEventCopyWith<$Res> {
  factory $OrderLedgerWatcherEventCopyWith(OrderLedgerWatcherEvent value,
          $Res Function(OrderLedgerWatcherEvent) then) =
      _$OrderLedgerWatcherEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$OrderLedgerWatcherEventCopyWithImpl<$Res>
    implements $OrderLedgerWatcherEventCopyWith<$Res> {
  _$OrderLedgerWatcherEventCopyWithImpl(this._value, this._then);

  final OrderLedgerWatcherEvent _value;
  // ignore: unused_field
  final $Res Function(OrderLedgerWatcherEvent) _then;
}

/// @nodoc
abstract class _$FetchOrderLedgersCopyWith<$Res> {
  factory _$FetchOrderLedgersCopyWith(
          _FetchOrderLedgers value, $Res Function(_FetchOrderLedgers) then) =
      __$FetchOrderLedgersCopyWithImpl<$Res>;
}

/// @nodoc
class __$FetchOrderLedgersCopyWithImpl<$Res>
    extends _$OrderLedgerWatcherEventCopyWithImpl<$Res>
    implements _$FetchOrderLedgersCopyWith<$Res> {
  __$FetchOrderLedgersCopyWithImpl(
      _FetchOrderLedgers _value, $Res Function(_FetchOrderLedgers) _then)
      : super(_value, (v) => _then(v as _FetchOrderLedgers));

  @override
  _FetchOrderLedgers get _value => super._value as _FetchOrderLedgers;
}

/// @nodoc

class _$_FetchOrderLedgers implements _FetchOrderLedgers {
  const _$_FetchOrderLedgers();

  @override
  String toString() {
    return 'OrderLedgerWatcherEvent.fetchOrderLedgers()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _FetchOrderLedgers);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchOrderLedgers,
  }) {
    return fetchOrderLedgers();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? fetchOrderLedgers,
  }) {
    return fetchOrderLedgers?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchOrderLedgers,
    required TResult orElse(),
  }) {
    if (fetchOrderLedgers != null) {
      return fetchOrderLedgers();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchOrderLedgers value) fetchOrderLedgers,
  }) {
    return fetchOrderLedgers(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_FetchOrderLedgers value)? fetchOrderLedgers,
  }) {
    return fetchOrderLedgers?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchOrderLedgers value)? fetchOrderLedgers,
    required TResult orElse(),
  }) {
    if (fetchOrderLedgers != null) {
      return fetchOrderLedgers(this);
    }
    return orElse();
  }
}

abstract class _FetchOrderLedgers implements OrderLedgerWatcherEvent {
  const factory _FetchOrderLedgers() = _$_FetchOrderLedgers;
}

/// @nodoc
class _$OrderLedgerWatcherStateTearOff {
  const _$OrderLedgerWatcherStateTearOff();

  _OrderLedgerWatcherState call(
      {required bool isLoading,
      Either<Failure, List<OrderLedgerEntity>>? failureOrSuccess}) {
    return _OrderLedgerWatcherState(
      isLoading: isLoading,
      failureOrSuccess: failureOrSuccess,
    );
  }
}

/// @nodoc
const $OrderLedgerWatcherState = _$OrderLedgerWatcherStateTearOff();

/// @nodoc
mixin _$OrderLedgerWatcherState {
  bool get isLoading => throw _privateConstructorUsedError;
  Either<Failure, List<OrderLedgerEntity>>? get failureOrSuccess =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $OrderLedgerWatcherStateCopyWith<OrderLedgerWatcherState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderLedgerWatcherStateCopyWith<$Res> {
  factory $OrderLedgerWatcherStateCopyWith(OrderLedgerWatcherState value,
          $Res Function(OrderLedgerWatcherState) then) =
      _$OrderLedgerWatcherStateCopyWithImpl<$Res>;
  $Res call(
      {bool isLoading,
      Either<Failure, List<OrderLedgerEntity>>? failureOrSuccess});
}

/// @nodoc
class _$OrderLedgerWatcherStateCopyWithImpl<$Res>
    implements $OrderLedgerWatcherStateCopyWith<$Res> {
  _$OrderLedgerWatcherStateCopyWithImpl(this._value, this._then);

  final OrderLedgerWatcherState _value;
  // ignore: unused_field
  final $Res Function(OrderLedgerWatcherState) _then;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? failureOrSuccess = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      failureOrSuccess: failureOrSuccess == freezed
          ? _value.failureOrSuccess
          : failureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Either<Failure, List<OrderLedgerEntity>>?,
    ));
  }
}

/// @nodoc
abstract class _$OrderLedgerWatcherStateCopyWith<$Res>
    implements $OrderLedgerWatcherStateCopyWith<$Res> {
  factory _$OrderLedgerWatcherStateCopyWith(_OrderLedgerWatcherState value,
          $Res Function(_OrderLedgerWatcherState) then) =
      __$OrderLedgerWatcherStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isLoading,
      Either<Failure, List<OrderLedgerEntity>>? failureOrSuccess});
}

/// @nodoc
class __$OrderLedgerWatcherStateCopyWithImpl<$Res>
    extends _$OrderLedgerWatcherStateCopyWithImpl<$Res>
    implements _$OrderLedgerWatcherStateCopyWith<$Res> {
  __$OrderLedgerWatcherStateCopyWithImpl(_OrderLedgerWatcherState _value,
      $Res Function(_OrderLedgerWatcherState) _then)
      : super(_value, (v) => _then(v as _OrderLedgerWatcherState));

  @override
  _OrderLedgerWatcherState get _value =>
      super._value as _OrderLedgerWatcherState;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? failureOrSuccess = freezed,
  }) {
    return _then(_OrderLedgerWatcherState(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      failureOrSuccess: failureOrSuccess == freezed
          ? _value.failureOrSuccess
          : failureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Either<Failure, List<OrderLedgerEntity>>?,
    ));
  }
}

/// @nodoc

class _$_OrderLedgerWatcherState implements _OrderLedgerWatcherState {
  const _$_OrderLedgerWatcherState(
      {required this.isLoading, this.failureOrSuccess});

  @override
  final bool isLoading;
  @override
  final Either<Failure, List<OrderLedgerEntity>>? failureOrSuccess;

  @override
  String toString() {
    return 'OrderLedgerWatcherState(isLoading: $isLoading, failureOrSuccess: $failureOrSuccess)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _OrderLedgerWatcherState &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality()
                .equals(other.failureOrSuccess, failureOrSuccess));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(failureOrSuccess));

  @JsonKey(ignore: true)
  @override
  _$OrderLedgerWatcherStateCopyWith<_OrderLedgerWatcherState> get copyWith =>
      __$OrderLedgerWatcherStateCopyWithImpl<_OrderLedgerWatcherState>(
          this, _$identity);
}

abstract class _OrderLedgerWatcherState implements OrderLedgerWatcherState {
  const factory _OrderLedgerWatcherState(
          {required bool isLoading,
          Either<Failure, List<OrderLedgerEntity>>? failureOrSuccess}) =
      _$_OrderLedgerWatcherState;

  @override
  bool get isLoading;
  @override
  Either<Failure, List<OrderLedgerEntity>>? get failureOrSuccess;
  @override
  @JsonKey(ignore: true)
  _$OrderLedgerWatcherStateCopyWith<_OrderLedgerWatcherState> get copyWith =>
      throw _privateConstructorUsedError;
}
