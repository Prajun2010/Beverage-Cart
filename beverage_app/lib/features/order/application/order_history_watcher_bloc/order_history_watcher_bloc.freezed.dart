// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'order_history_watcher_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$OrderHistoryWatcherEventTearOff {
  const _$OrderHistoryWatcherEventTearOff();

  _FetchOrderHistory fetchOrderHistory() {
    return const _FetchOrderHistory();
  }
}

/// @nodoc
const $OrderHistoryWatcherEvent = _$OrderHistoryWatcherEventTearOff();

/// @nodoc
mixin _$OrderHistoryWatcherEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchOrderHistory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? fetchOrderHistory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchOrderHistory,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchOrderHistory value) fetchOrderHistory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_FetchOrderHistory value)? fetchOrderHistory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchOrderHistory value)? fetchOrderHistory,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderHistoryWatcherEventCopyWith<$Res> {
  factory $OrderHistoryWatcherEventCopyWith(OrderHistoryWatcherEvent value,
          $Res Function(OrderHistoryWatcherEvent) then) =
      _$OrderHistoryWatcherEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$OrderHistoryWatcherEventCopyWithImpl<$Res>
    implements $OrderHistoryWatcherEventCopyWith<$Res> {
  _$OrderHistoryWatcherEventCopyWithImpl(this._value, this._then);

  final OrderHistoryWatcherEvent _value;
  // ignore: unused_field
  final $Res Function(OrderHistoryWatcherEvent) _then;
}

/// @nodoc
abstract class _$FetchOrderHistoryCopyWith<$Res> {
  factory _$FetchOrderHistoryCopyWith(
          _FetchOrderHistory value, $Res Function(_FetchOrderHistory) then) =
      __$FetchOrderHistoryCopyWithImpl<$Res>;
}

/// @nodoc
class __$FetchOrderHistoryCopyWithImpl<$Res>
    extends _$OrderHistoryWatcherEventCopyWithImpl<$Res>
    implements _$FetchOrderHistoryCopyWith<$Res> {
  __$FetchOrderHistoryCopyWithImpl(
      _FetchOrderHistory _value, $Res Function(_FetchOrderHistory) _then)
      : super(_value, (v) => _then(v as _FetchOrderHistory));

  @override
  _FetchOrderHistory get _value => super._value as _FetchOrderHistory;
}

/// @nodoc

class _$_FetchOrderHistory implements _FetchOrderHistory {
  const _$_FetchOrderHistory();

  @override
  String toString() {
    return 'OrderHistoryWatcherEvent.fetchOrderHistory()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _FetchOrderHistory);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchOrderHistory,
  }) {
    return fetchOrderHistory();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? fetchOrderHistory,
  }) {
    return fetchOrderHistory?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchOrderHistory,
    required TResult orElse(),
  }) {
    if (fetchOrderHistory != null) {
      return fetchOrderHistory();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchOrderHistory value) fetchOrderHistory,
  }) {
    return fetchOrderHistory(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_FetchOrderHistory value)? fetchOrderHistory,
  }) {
    return fetchOrderHistory?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchOrderHistory value)? fetchOrderHistory,
    required TResult orElse(),
  }) {
    if (fetchOrderHistory != null) {
      return fetchOrderHistory(this);
    }
    return orElse();
  }
}

abstract class _FetchOrderHistory implements OrderHistoryWatcherEvent {
  const factory _FetchOrderHistory() = _$_FetchOrderHistory;
}

/// @nodoc
class _$OrderHistoryWatcherStateTearOff {
  const _$OrderHistoryWatcherStateTearOff();

  _OrderHistoryWatcherState call(
      {required bool isProcessing,
      Either<Failure, List<OrderHistoryEntity>>? failureOrSuccess}) {
    return _OrderHistoryWatcherState(
      isProcessing: isProcessing,
      failureOrSuccess: failureOrSuccess,
    );
  }
}

/// @nodoc
const $OrderHistoryWatcherState = _$OrderHistoryWatcherStateTearOff();

/// @nodoc
mixin _$OrderHistoryWatcherState {
  bool get isProcessing => throw _privateConstructorUsedError;
  Either<Failure, List<OrderHistoryEntity>>? get failureOrSuccess =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $OrderHistoryWatcherStateCopyWith<OrderHistoryWatcherState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderHistoryWatcherStateCopyWith<$Res> {
  factory $OrderHistoryWatcherStateCopyWith(OrderHistoryWatcherState value,
          $Res Function(OrderHistoryWatcherState) then) =
      _$OrderHistoryWatcherStateCopyWithImpl<$Res>;
  $Res call(
      {bool isProcessing,
      Either<Failure, List<OrderHistoryEntity>>? failureOrSuccess});
}

/// @nodoc
class _$OrderHistoryWatcherStateCopyWithImpl<$Res>
    implements $OrderHistoryWatcherStateCopyWith<$Res> {
  _$OrderHistoryWatcherStateCopyWithImpl(this._value, this._then);

  final OrderHistoryWatcherState _value;
  // ignore: unused_field
  final $Res Function(OrderHistoryWatcherState) _then;

  @override
  $Res call({
    Object? isProcessing = freezed,
    Object? failureOrSuccess = freezed,
  }) {
    return _then(_value.copyWith(
      isProcessing: isProcessing == freezed
          ? _value.isProcessing
          : isProcessing // ignore: cast_nullable_to_non_nullable
              as bool,
      failureOrSuccess: failureOrSuccess == freezed
          ? _value.failureOrSuccess
          : failureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Either<Failure, List<OrderHistoryEntity>>?,
    ));
  }
}

/// @nodoc
abstract class _$OrderHistoryWatcherStateCopyWith<$Res>
    implements $OrderHistoryWatcherStateCopyWith<$Res> {
  factory _$OrderHistoryWatcherStateCopyWith(_OrderHistoryWatcherState value,
          $Res Function(_OrderHistoryWatcherState) then) =
      __$OrderHistoryWatcherStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isProcessing,
      Either<Failure, List<OrderHistoryEntity>>? failureOrSuccess});
}

/// @nodoc
class __$OrderHistoryWatcherStateCopyWithImpl<$Res>
    extends _$OrderHistoryWatcherStateCopyWithImpl<$Res>
    implements _$OrderHistoryWatcherStateCopyWith<$Res> {
  __$OrderHistoryWatcherStateCopyWithImpl(_OrderHistoryWatcherState _value,
      $Res Function(_OrderHistoryWatcherState) _then)
      : super(_value, (v) => _then(v as _OrderHistoryWatcherState));

  @override
  _OrderHistoryWatcherState get _value =>
      super._value as _OrderHistoryWatcherState;

  @override
  $Res call({
    Object? isProcessing = freezed,
    Object? failureOrSuccess = freezed,
  }) {
    return _then(_OrderHistoryWatcherState(
      isProcessing: isProcessing == freezed
          ? _value.isProcessing
          : isProcessing // ignore: cast_nullable_to_non_nullable
              as bool,
      failureOrSuccess: failureOrSuccess == freezed
          ? _value.failureOrSuccess
          : failureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Either<Failure, List<OrderHistoryEntity>>?,
    ));
  }
}

/// @nodoc

class _$_OrderHistoryWatcherState implements _OrderHistoryWatcherState {
  const _$_OrderHistoryWatcherState(
      {required this.isProcessing, this.failureOrSuccess});

  @override
  final bool isProcessing;
  @override
  final Either<Failure, List<OrderHistoryEntity>>? failureOrSuccess;

  @override
  String toString() {
    return 'OrderHistoryWatcherState(isProcessing: $isProcessing, failureOrSuccess: $failureOrSuccess)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _OrderHistoryWatcherState &&
            const DeepCollectionEquality()
                .equals(other.isProcessing, isProcessing) &&
            const DeepCollectionEquality()
                .equals(other.failureOrSuccess, failureOrSuccess));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isProcessing),
      const DeepCollectionEquality().hash(failureOrSuccess));

  @JsonKey(ignore: true)
  @override
  _$OrderHistoryWatcherStateCopyWith<_OrderHistoryWatcherState> get copyWith =>
      __$OrderHistoryWatcherStateCopyWithImpl<_OrderHistoryWatcherState>(
          this, _$identity);
}

abstract class _OrderHistoryWatcherState implements OrderHistoryWatcherState {
  const factory _OrderHistoryWatcherState(
          {required bool isProcessing,
          Either<Failure, List<OrderHistoryEntity>>? failureOrSuccess}) =
      _$_OrderHistoryWatcherState;

  @override
  bool get isProcessing;
  @override
  Either<Failure, List<OrderHistoryEntity>>? get failureOrSuccess;
  @override
  @JsonKey(ignore: true)
  _$OrderHistoryWatcherStateCopyWith<_OrderHistoryWatcherState> get copyWith =>
      throw _privateConstructorUsedError;
}
