// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'order_details_watcher_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$OrderDetailsWatcherEventTearOff {
  const _$OrderDetailsWatcherEventTearOff();

  _FetchOrderDetails fetchOrderDetails({required String url}) {
    return _FetchOrderDetails(
      url: url,
    );
  }
}

/// @nodoc
const $OrderDetailsWatcherEvent = _$OrderDetailsWatcherEventTearOff();

/// @nodoc
mixin _$OrderDetailsWatcherEvent {
  String get url => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String url) fetchOrderDetails,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String url)? fetchOrderDetails,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String url)? fetchOrderDetails,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchOrderDetails value) fetchOrderDetails,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_FetchOrderDetails value)? fetchOrderDetails,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchOrderDetails value)? fetchOrderDetails,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $OrderDetailsWatcherEventCopyWith<OrderDetailsWatcherEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderDetailsWatcherEventCopyWith<$Res> {
  factory $OrderDetailsWatcherEventCopyWith(OrderDetailsWatcherEvent value,
          $Res Function(OrderDetailsWatcherEvent) then) =
      _$OrderDetailsWatcherEventCopyWithImpl<$Res>;
  $Res call({String url});
}

/// @nodoc
class _$OrderDetailsWatcherEventCopyWithImpl<$Res>
    implements $OrderDetailsWatcherEventCopyWith<$Res> {
  _$OrderDetailsWatcherEventCopyWithImpl(this._value, this._then);

  final OrderDetailsWatcherEvent _value;
  // ignore: unused_field
  final $Res Function(OrderDetailsWatcherEvent) _then;

  @override
  $Res call({
    Object? url = freezed,
  }) {
    return _then(_value.copyWith(
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$FetchOrderDetailsCopyWith<$Res>
    implements $OrderDetailsWatcherEventCopyWith<$Res> {
  factory _$FetchOrderDetailsCopyWith(
          _FetchOrderDetails value, $Res Function(_FetchOrderDetails) then) =
      __$FetchOrderDetailsCopyWithImpl<$Res>;
  @override
  $Res call({String url});
}

/// @nodoc
class __$FetchOrderDetailsCopyWithImpl<$Res>
    extends _$OrderDetailsWatcherEventCopyWithImpl<$Res>
    implements _$FetchOrderDetailsCopyWith<$Res> {
  __$FetchOrderDetailsCopyWithImpl(
      _FetchOrderDetails _value, $Res Function(_FetchOrderDetails) _then)
      : super(_value, (v) => _then(v as _FetchOrderDetails));

  @override
  _FetchOrderDetails get _value => super._value as _FetchOrderDetails;

  @override
  $Res call({
    Object? url = freezed,
  }) {
    return _then(_FetchOrderDetails(
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_FetchOrderDetails implements _FetchOrderDetails {
  const _$_FetchOrderDetails({required this.url});

  @override
  final String url;

  @override
  String toString() {
    return 'OrderDetailsWatcherEvent.fetchOrderDetails(url: $url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _FetchOrderDetails &&
            const DeepCollectionEquality().equals(other.url, url));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(url));

  @JsonKey(ignore: true)
  @override
  _$FetchOrderDetailsCopyWith<_FetchOrderDetails> get copyWith =>
      __$FetchOrderDetailsCopyWithImpl<_FetchOrderDetails>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String url) fetchOrderDetails,
  }) {
    return fetchOrderDetails(url);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String url)? fetchOrderDetails,
  }) {
    return fetchOrderDetails?.call(url);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String url)? fetchOrderDetails,
    required TResult orElse(),
  }) {
    if (fetchOrderDetails != null) {
      return fetchOrderDetails(url);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchOrderDetails value) fetchOrderDetails,
  }) {
    return fetchOrderDetails(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_FetchOrderDetails value)? fetchOrderDetails,
  }) {
    return fetchOrderDetails?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchOrderDetails value)? fetchOrderDetails,
    required TResult orElse(),
  }) {
    if (fetchOrderDetails != null) {
      return fetchOrderDetails(this);
    }
    return orElse();
  }
}

abstract class _FetchOrderDetails implements OrderDetailsWatcherEvent {
  const factory _FetchOrderDetails({required String url}) =
      _$_FetchOrderDetails;

  @override
  String get url;
  @override
  @JsonKey(ignore: true)
  _$FetchOrderDetailsCopyWith<_FetchOrderDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$OrderDetailsWatcherStateTearOff {
  const _$OrderDetailsWatcherStateTearOff();

  _OrderDetailsWatcherState call(
      {required bool isProcessing,
      Either<Failure, OrderDetailsEntity>? failureOrSuccess}) {
    return _OrderDetailsWatcherState(
      isProcessing: isProcessing,
      failureOrSuccess: failureOrSuccess,
    );
  }
}

/// @nodoc
const $OrderDetailsWatcherState = _$OrderDetailsWatcherStateTearOff();

/// @nodoc
mixin _$OrderDetailsWatcherState {
  bool get isProcessing => throw _privateConstructorUsedError;
  Either<Failure, OrderDetailsEntity>? get failureOrSuccess =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $OrderDetailsWatcherStateCopyWith<OrderDetailsWatcherState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderDetailsWatcherStateCopyWith<$Res> {
  factory $OrderDetailsWatcherStateCopyWith(OrderDetailsWatcherState value,
          $Res Function(OrderDetailsWatcherState) then) =
      _$OrderDetailsWatcherStateCopyWithImpl<$Res>;
  $Res call(
      {bool isProcessing,
      Either<Failure, OrderDetailsEntity>? failureOrSuccess});
}

/// @nodoc
class _$OrderDetailsWatcherStateCopyWithImpl<$Res>
    implements $OrderDetailsWatcherStateCopyWith<$Res> {
  _$OrderDetailsWatcherStateCopyWithImpl(this._value, this._then);

  final OrderDetailsWatcherState _value;
  // ignore: unused_field
  final $Res Function(OrderDetailsWatcherState) _then;

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
              as Either<Failure, OrderDetailsEntity>?,
    ));
  }
}

/// @nodoc
abstract class _$OrderDetailsWatcherStateCopyWith<$Res>
    implements $OrderDetailsWatcherStateCopyWith<$Res> {
  factory _$OrderDetailsWatcherStateCopyWith(_OrderDetailsWatcherState value,
          $Res Function(_OrderDetailsWatcherState) then) =
      __$OrderDetailsWatcherStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isProcessing,
      Either<Failure, OrderDetailsEntity>? failureOrSuccess});
}

/// @nodoc
class __$OrderDetailsWatcherStateCopyWithImpl<$Res>
    extends _$OrderDetailsWatcherStateCopyWithImpl<$Res>
    implements _$OrderDetailsWatcherStateCopyWith<$Res> {
  __$OrderDetailsWatcherStateCopyWithImpl(_OrderDetailsWatcherState _value,
      $Res Function(_OrderDetailsWatcherState) _then)
      : super(_value, (v) => _then(v as _OrderDetailsWatcherState));

  @override
  _OrderDetailsWatcherState get _value =>
      super._value as _OrderDetailsWatcherState;

  @override
  $Res call({
    Object? isProcessing = freezed,
    Object? failureOrSuccess = freezed,
  }) {
    return _then(_OrderDetailsWatcherState(
      isProcessing: isProcessing == freezed
          ? _value.isProcessing
          : isProcessing // ignore: cast_nullable_to_non_nullable
              as bool,
      failureOrSuccess: failureOrSuccess == freezed
          ? _value.failureOrSuccess
          : failureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Either<Failure, OrderDetailsEntity>?,
    ));
  }
}

/// @nodoc

class _$_OrderDetailsWatcherState implements _OrderDetailsWatcherState {
  const _$_OrderDetailsWatcherState(
      {required this.isProcessing, this.failureOrSuccess});

  @override
  final bool isProcessing;
  @override
  final Either<Failure, OrderDetailsEntity>? failureOrSuccess;

  @override
  String toString() {
    return 'OrderDetailsWatcherState(isProcessing: $isProcessing, failureOrSuccess: $failureOrSuccess)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _OrderDetailsWatcherState &&
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
  _$OrderDetailsWatcherStateCopyWith<_OrderDetailsWatcherState> get copyWith =>
      __$OrderDetailsWatcherStateCopyWithImpl<_OrderDetailsWatcherState>(
          this, _$identity);
}

abstract class _OrderDetailsWatcherState implements OrderDetailsWatcherState {
  const factory _OrderDetailsWatcherState(
          {required bool isProcessing,
          Either<Failure, OrderDetailsEntity>? failureOrSuccess}) =
      _$_OrderDetailsWatcherState;

  @override
  bool get isProcessing;
  @override
  Either<Failure, OrderDetailsEntity>? get failureOrSuccess;
  @override
  @JsonKey(ignore: true)
  _$OrderDetailsWatcherStateCopyWith<_OrderDetailsWatcherState> get copyWith =>
      throw _privateConstructorUsedError;
}
