// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'distributor_watcher_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$DistributorWatcherEventTearOff {
  const _$DistributorWatcherEventTearOff();

  _FetchDistributor fetchDistributor() {
    return const _FetchDistributor();
  }
}

/// @nodoc
const $DistributorWatcherEvent = _$DistributorWatcherEventTearOff();

/// @nodoc
mixin _$DistributorWatcherEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchDistributor,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? fetchDistributor,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchDistributor,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchDistributor value) fetchDistributor,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_FetchDistributor value)? fetchDistributor,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchDistributor value)? fetchDistributor,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DistributorWatcherEventCopyWith<$Res> {
  factory $DistributorWatcherEventCopyWith(DistributorWatcherEvent value,
          $Res Function(DistributorWatcherEvent) then) =
      _$DistributorWatcherEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$DistributorWatcherEventCopyWithImpl<$Res>
    implements $DistributorWatcherEventCopyWith<$Res> {
  _$DistributorWatcherEventCopyWithImpl(this._value, this._then);

  final DistributorWatcherEvent _value;
  // ignore: unused_field
  final $Res Function(DistributorWatcherEvent) _then;
}

/// @nodoc
abstract class _$FetchDistributorCopyWith<$Res> {
  factory _$FetchDistributorCopyWith(
          _FetchDistributor value, $Res Function(_FetchDistributor) then) =
      __$FetchDistributorCopyWithImpl<$Res>;
}

/// @nodoc
class __$FetchDistributorCopyWithImpl<$Res>
    extends _$DistributorWatcherEventCopyWithImpl<$Res>
    implements _$FetchDistributorCopyWith<$Res> {
  __$FetchDistributorCopyWithImpl(
      _FetchDistributor _value, $Res Function(_FetchDistributor) _then)
      : super(_value, (v) => _then(v as _FetchDistributor));

  @override
  _FetchDistributor get _value => super._value as _FetchDistributor;
}

/// @nodoc

class _$_FetchDistributor implements _FetchDistributor {
  const _$_FetchDistributor();

  @override
  String toString() {
    return 'DistributorWatcherEvent.fetchDistributor()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _FetchDistributor);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchDistributor,
  }) {
    return fetchDistributor();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? fetchDistributor,
  }) {
    return fetchDistributor?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchDistributor,
    required TResult orElse(),
  }) {
    if (fetchDistributor != null) {
      return fetchDistributor();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchDistributor value) fetchDistributor,
  }) {
    return fetchDistributor(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_FetchDistributor value)? fetchDistributor,
  }) {
    return fetchDistributor?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchDistributor value)? fetchDistributor,
    required TResult orElse(),
  }) {
    if (fetchDistributor != null) {
      return fetchDistributor(this);
    }
    return orElse();
  }
}

abstract class _FetchDistributor implements DistributorWatcherEvent {
  const factory _FetchDistributor() = _$_FetchDistributor;
}

/// @nodoc
class _$DistributorWatcherStateTearOff {
  const _$DistributorWatcherStateTearOff();

  _DistributorWatcherState call(
      {required bool isProcessing,
      Either<Failure, List<DistributorEntity>>? failureOrSuccess}) {
    return _DistributorWatcherState(
      isProcessing: isProcessing,
      failureOrSuccess: failureOrSuccess,
    );
  }
}

/// @nodoc
const $DistributorWatcherState = _$DistributorWatcherStateTearOff();

/// @nodoc
mixin _$DistributorWatcherState {
  bool get isProcessing => throw _privateConstructorUsedError;
  Either<Failure, List<DistributorEntity>>? get failureOrSuccess =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DistributorWatcherStateCopyWith<DistributorWatcherState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DistributorWatcherStateCopyWith<$Res> {
  factory $DistributorWatcherStateCopyWith(DistributorWatcherState value,
          $Res Function(DistributorWatcherState) then) =
      _$DistributorWatcherStateCopyWithImpl<$Res>;
  $Res call(
      {bool isProcessing,
      Either<Failure, List<DistributorEntity>>? failureOrSuccess});
}

/// @nodoc
class _$DistributorWatcherStateCopyWithImpl<$Res>
    implements $DistributorWatcherStateCopyWith<$Res> {
  _$DistributorWatcherStateCopyWithImpl(this._value, this._then);

  final DistributorWatcherState _value;
  // ignore: unused_field
  final $Res Function(DistributorWatcherState) _then;

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
              as Either<Failure, List<DistributorEntity>>?,
    ));
  }
}

/// @nodoc
abstract class _$DistributorWatcherStateCopyWith<$Res>
    implements $DistributorWatcherStateCopyWith<$Res> {
  factory _$DistributorWatcherStateCopyWith(_DistributorWatcherState value,
          $Res Function(_DistributorWatcherState) then) =
      __$DistributorWatcherStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isProcessing,
      Either<Failure, List<DistributorEntity>>? failureOrSuccess});
}

/// @nodoc
class __$DistributorWatcherStateCopyWithImpl<$Res>
    extends _$DistributorWatcherStateCopyWithImpl<$Res>
    implements _$DistributorWatcherStateCopyWith<$Res> {
  __$DistributorWatcherStateCopyWithImpl(_DistributorWatcherState _value,
      $Res Function(_DistributorWatcherState) _then)
      : super(_value, (v) => _then(v as _DistributorWatcherState));

  @override
  _DistributorWatcherState get _value =>
      super._value as _DistributorWatcherState;

  @override
  $Res call({
    Object? isProcessing = freezed,
    Object? failureOrSuccess = freezed,
  }) {
    return _then(_DistributorWatcherState(
      isProcessing: isProcessing == freezed
          ? _value.isProcessing
          : isProcessing // ignore: cast_nullable_to_non_nullable
              as bool,
      failureOrSuccess: failureOrSuccess == freezed
          ? _value.failureOrSuccess
          : failureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Either<Failure, List<DistributorEntity>>?,
    ));
  }
}

/// @nodoc

class _$_DistributorWatcherState implements _DistributorWatcherState {
  const _$_DistributorWatcherState(
      {required this.isProcessing, this.failureOrSuccess});

  @override
  final bool isProcessing;
  @override
  final Either<Failure, List<DistributorEntity>>? failureOrSuccess;

  @override
  String toString() {
    return 'DistributorWatcherState(isProcessing: $isProcessing, failureOrSuccess: $failureOrSuccess)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DistributorWatcherState &&
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
  _$DistributorWatcherStateCopyWith<_DistributorWatcherState> get copyWith =>
      __$DistributorWatcherStateCopyWithImpl<_DistributorWatcherState>(
          this, _$identity);
}

abstract class _DistributorWatcherState implements DistributorWatcherState {
  const factory _DistributorWatcherState(
          {required bool isProcessing,
          Either<Failure, List<DistributorEntity>>? failureOrSuccess}) =
      _$_DistributorWatcherState;

  @override
  bool get isProcessing;
  @override
  Either<Failure, List<DistributorEntity>>? get failureOrSuccess;
  @override
  @JsonKey(ignore: true)
  _$DistributorWatcherStateCopyWith<_DistributorWatcherState> get copyWith =>
      throw _privateConstructorUsedError;
}
