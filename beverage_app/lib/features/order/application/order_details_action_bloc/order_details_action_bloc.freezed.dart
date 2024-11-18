// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'order_details_action_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$OrderDetailsActionEventTearOff {
  const _$OrderDetailsActionEventTearOff();

  _Reorder reorder({required String url}) {
    return _Reorder(
      url: url,
    );
  }
}

/// @nodoc
const $OrderDetailsActionEvent = _$OrderDetailsActionEventTearOff();

/// @nodoc
mixin _$OrderDetailsActionEvent {
  String get url => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String url) reorder,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String url)? reorder,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String url)? reorder,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Reorder value) reorder,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Reorder value)? reorder,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Reorder value)? reorder,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $OrderDetailsActionEventCopyWith<OrderDetailsActionEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderDetailsActionEventCopyWith<$Res> {
  factory $OrderDetailsActionEventCopyWith(OrderDetailsActionEvent value,
          $Res Function(OrderDetailsActionEvent) then) =
      _$OrderDetailsActionEventCopyWithImpl<$Res>;
  $Res call({String url});
}

/// @nodoc
class _$OrderDetailsActionEventCopyWithImpl<$Res>
    implements $OrderDetailsActionEventCopyWith<$Res> {
  _$OrderDetailsActionEventCopyWithImpl(this._value, this._then);

  final OrderDetailsActionEvent _value;
  // ignore: unused_field
  final $Res Function(OrderDetailsActionEvent) _then;

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
abstract class _$ReorderCopyWith<$Res>
    implements $OrderDetailsActionEventCopyWith<$Res> {
  factory _$ReorderCopyWith(_Reorder value, $Res Function(_Reorder) then) =
      __$ReorderCopyWithImpl<$Res>;
  @override
  $Res call({String url});
}

/// @nodoc
class __$ReorderCopyWithImpl<$Res>
    extends _$OrderDetailsActionEventCopyWithImpl<$Res>
    implements _$ReorderCopyWith<$Res> {
  __$ReorderCopyWithImpl(_Reorder _value, $Res Function(_Reorder) _then)
      : super(_value, (v) => _then(v as _Reorder));

  @override
  _Reorder get _value => super._value as _Reorder;

  @override
  $Res call({
    Object? url = freezed,
  }) {
    return _then(_Reorder(
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Reorder implements _Reorder {
  const _$_Reorder({required this.url});

  @override
  final String url;

  @override
  String toString() {
    return 'OrderDetailsActionEvent.reorder(url: $url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Reorder &&
            const DeepCollectionEquality().equals(other.url, url));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(url));

  @JsonKey(ignore: true)
  @override
  _$ReorderCopyWith<_Reorder> get copyWith =>
      __$ReorderCopyWithImpl<_Reorder>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String url) reorder,
  }) {
    return reorder(url);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String url)? reorder,
  }) {
    return reorder?.call(url);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String url)? reorder,
    required TResult orElse(),
  }) {
    if (reorder != null) {
      return reorder(url);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Reorder value) reorder,
  }) {
    return reorder(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Reorder value)? reorder,
  }) {
    return reorder?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Reorder value)? reorder,
    required TResult orElse(),
  }) {
    if (reorder != null) {
      return reorder(this);
    }
    return orElse();
  }
}

abstract class _Reorder implements OrderDetailsActionEvent {
  const factory _Reorder({required String url}) = _$_Reorder;

  @override
  String get url;
  @override
  @JsonKey(ignore: true)
  _$ReorderCopyWith<_Reorder> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$OrderDetailsActionStateTearOff {
  const _$OrderDetailsActionStateTearOff();

  _OrderDetailsActionState call(
      {required bool isProcessing, Either<Failure, Unit>? failureOrSuccess}) {
    return _OrderDetailsActionState(
      isProcessing: isProcessing,
      failureOrSuccess: failureOrSuccess,
    );
  }
}

/// @nodoc
const $OrderDetailsActionState = _$OrderDetailsActionStateTearOff();

/// @nodoc
mixin _$OrderDetailsActionState {
  bool get isProcessing => throw _privateConstructorUsedError;
  Either<Failure, Unit>? get failureOrSuccess =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $OrderDetailsActionStateCopyWith<OrderDetailsActionState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderDetailsActionStateCopyWith<$Res> {
  factory $OrderDetailsActionStateCopyWith(OrderDetailsActionState value,
          $Res Function(OrderDetailsActionState) then) =
      _$OrderDetailsActionStateCopyWithImpl<$Res>;
  $Res call({bool isProcessing, Either<Failure, Unit>? failureOrSuccess});
}

/// @nodoc
class _$OrderDetailsActionStateCopyWithImpl<$Res>
    implements $OrderDetailsActionStateCopyWith<$Res> {
  _$OrderDetailsActionStateCopyWithImpl(this._value, this._then);

  final OrderDetailsActionState _value;
  // ignore: unused_field
  final $Res Function(OrderDetailsActionState) _then;

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
              as Either<Failure, Unit>?,
    ));
  }
}

/// @nodoc
abstract class _$OrderDetailsActionStateCopyWith<$Res>
    implements $OrderDetailsActionStateCopyWith<$Res> {
  factory _$OrderDetailsActionStateCopyWith(_OrderDetailsActionState value,
          $Res Function(_OrderDetailsActionState) then) =
      __$OrderDetailsActionStateCopyWithImpl<$Res>;
  @override
  $Res call({bool isProcessing, Either<Failure, Unit>? failureOrSuccess});
}

/// @nodoc
class __$OrderDetailsActionStateCopyWithImpl<$Res>
    extends _$OrderDetailsActionStateCopyWithImpl<$Res>
    implements _$OrderDetailsActionStateCopyWith<$Res> {
  __$OrderDetailsActionStateCopyWithImpl(_OrderDetailsActionState _value,
      $Res Function(_OrderDetailsActionState) _then)
      : super(_value, (v) => _then(v as _OrderDetailsActionState));

  @override
  _OrderDetailsActionState get _value =>
      super._value as _OrderDetailsActionState;

  @override
  $Res call({
    Object? isProcessing = freezed,
    Object? failureOrSuccess = freezed,
  }) {
    return _then(_OrderDetailsActionState(
      isProcessing: isProcessing == freezed
          ? _value.isProcessing
          : isProcessing // ignore: cast_nullable_to_non_nullable
              as bool,
      failureOrSuccess: failureOrSuccess == freezed
          ? _value.failureOrSuccess
          : failureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Either<Failure, Unit>?,
    ));
  }
}

/// @nodoc

class _$_OrderDetailsActionState implements _OrderDetailsActionState {
  const _$_OrderDetailsActionState(
      {required this.isProcessing, this.failureOrSuccess});

  @override
  final bool isProcessing;
  @override
  final Either<Failure, Unit>? failureOrSuccess;

  @override
  String toString() {
    return 'OrderDetailsActionState(isProcessing: $isProcessing, failureOrSuccess: $failureOrSuccess)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _OrderDetailsActionState &&
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
  _$OrderDetailsActionStateCopyWith<_OrderDetailsActionState> get copyWith =>
      __$OrderDetailsActionStateCopyWithImpl<_OrderDetailsActionState>(
          this, _$identity);
}

abstract class _OrderDetailsActionState implements OrderDetailsActionState {
  const factory _OrderDetailsActionState(
      {required bool isProcessing,
      Either<Failure, Unit>? failureOrSuccess}) = _$_OrderDetailsActionState;

  @override
  bool get isProcessing;
  @override
  Either<Failure, Unit>? get failureOrSuccess;
  @override
  @JsonKey(ignore: true)
  _$OrderDetailsActionStateCopyWith<_OrderDetailsActionState> get copyWith =>
      throw _privateConstructorUsedError;
}
