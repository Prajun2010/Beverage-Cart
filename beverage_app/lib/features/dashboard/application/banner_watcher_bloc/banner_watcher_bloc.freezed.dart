// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'banner_watcher_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$BannerWatcherEventTearOff {
  const _$BannerWatcherEventTearOff();

  _FetchBanner fetchBanner() {
    return const _FetchBanner();
  }
}

/// @nodoc
const $BannerWatcherEvent = _$BannerWatcherEventTearOff();

/// @nodoc
mixin _$BannerWatcherEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchBanner,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? fetchBanner,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchBanner,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchBanner value) fetchBanner,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_FetchBanner value)? fetchBanner,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchBanner value)? fetchBanner,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BannerWatcherEventCopyWith<$Res> {
  factory $BannerWatcherEventCopyWith(
          BannerWatcherEvent value, $Res Function(BannerWatcherEvent) then) =
      _$BannerWatcherEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$BannerWatcherEventCopyWithImpl<$Res>
    implements $BannerWatcherEventCopyWith<$Res> {
  _$BannerWatcherEventCopyWithImpl(this._value, this._then);

  final BannerWatcherEvent _value;
  // ignore: unused_field
  final $Res Function(BannerWatcherEvent) _then;
}

/// @nodoc
abstract class _$FetchBannerCopyWith<$Res> {
  factory _$FetchBannerCopyWith(
          _FetchBanner value, $Res Function(_FetchBanner) then) =
      __$FetchBannerCopyWithImpl<$Res>;
}

/// @nodoc
class __$FetchBannerCopyWithImpl<$Res>
    extends _$BannerWatcherEventCopyWithImpl<$Res>
    implements _$FetchBannerCopyWith<$Res> {
  __$FetchBannerCopyWithImpl(
      _FetchBanner _value, $Res Function(_FetchBanner) _then)
      : super(_value, (v) => _then(v as _FetchBanner));

  @override
  _FetchBanner get _value => super._value as _FetchBanner;
}

/// @nodoc

class _$_FetchBanner implements _FetchBanner {
  const _$_FetchBanner();

  @override
  String toString() {
    return 'BannerWatcherEvent.fetchBanner()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _FetchBanner);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchBanner,
  }) {
    return fetchBanner();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? fetchBanner,
  }) {
    return fetchBanner?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchBanner,
    required TResult orElse(),
  }) {
    if (fetchBanner != null) {
      return fetchBanner();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchBanner value) fetchBanner,
  }) {
    return fetchBanner(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_FetchBanner value)? fetchBanner,
  }) {
    return fetchBanner?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchBanner value)? fetchBanner,
    required TResult orElse(),
  }) {
    if (fetchBanner != null) {
      return fetchBanner(this);
    }
    return orElse();
  }
}

abstract class _FetchBanner implements BannerWatcherEvent {
  const factory _FetchBanner() = _$_FetchBanner;
}

/// @nodoc
class _$BannerWatcherStateTearOff {
  const _$BannerWatcherStateTearOff();

  _BannerWatcherState call(
      {required bool isLoading,
      Either<Failure, BannerEntity>? failureOrSuccess}) {
    return _BannerWatcherState(
      isLoading: isLoading,
      failureOrSuccess: failureOrSuccess,
    );
  }
}

/// @nodoc
const $BannerWatcherState = _$BannerWatcherStateTearOff();

/// @nodoc
mixin _$BannerWatcherState {
  bool get isLoading => throw _privateConstructorUsedError;
  Either<Failure, BannerEntity>? get failureOrSuccess =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BannerWatcherStateCopyWith<BannerWatcherState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BannerWatcherStateCopyWith<$Res> {
  factory $BannerWatcherStateCopyWith(
          BannerWatcherState value, $Res Function(BannerWatcherState) then) =
      _$BannerWatcherStateCopyWithImpl<$Res>;
  $Res call({bool isLoading, Either<Failure, BannerEntity>? failureOrSuccess});
}

/// @nodoc
class _$BannerWatcherStateCopyWithImpl<$Res>
    implements $BannerWatcherStateCopyWith<$Res> {
  _$BannerWatcherStateCopyWithImpl(this._value, this._then);

  final BannerWatcherState _value;
  // ignore: unused_field
  final $Res Function(BannerWatcherState) _then;

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
              as Either<Failure, BannerEntity>?,
    ));
  }
}

/// @nodoc
abstract class _$BannerWatcherStateCopyWith<$Res>
    implements $BannerWatcherStateCopyWith<$Res> {
  factory _$BannerWatcherStateCopyWith(
          _BannerWatcherState value, $Res Function(_BannerWatcherState) then) =
      __$BannerWatcherStateCopyWithImpl<$Res>;
  @override
  $Res call({bool isLoading, Either<Failure, BannerEntity>? failureOrSuccess});
}

/// @nodoc
class __$BannerWatcherStateCopyWithImpl<$Res>
    extends _$BannerWatcherStateCopyWithImpl<$Res>
    implements _$BannerWatcherStateCopyWith<$Res> {
  __$BannerWatcherStateCopyWithImpl(
      _BannerWatcherState _value, $Res Function(_BannerWatcherState) _then)
      : super(_value, (v) => _then(v as _BannerWatcherState));

  @override
  _BannerWatcherState get _value => super._value as _BannerWatcherState;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? failureOrSuccess = freezed,
  }) {
    return _then(_BannerWatcherState(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      failureOrSuccess: failureOrSuccess == freezed
          ? _value.failureOrSuccess
          : failureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Either<Failure, BannerEntity>?,
    ));
  }
}

/// @nodoc

class _$_BannerWatcherState implements _BannerWatcherState {
  const _$_BannerWatcherState({required this.isLoading, this.failureOrSuccess});

  @override
  final bool isLoading;
  @override
  final Either<Failure, BannerEntity>? failureOrSuccess;

  @override
  String toString() {
    return 'BannerWatcherState(isLoading: $isLoading, failureOrSuccess: $failureOrSuccess)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _BannerWatcherState &&
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
  _$BannerWatcherStateCopyWith<_BannerWatcherState> get copyWith =>
      __$BannerWatcherStateCopyWithImpl<_BannerWatcherState>(this, _$identity);
}

abstract class _BannerWatcherState implements BannerWatcherState {
  const factory _BannerWatcherState(
      {required bool isLoading,
      Either<Failure, BannerEntity>? failureOrSuccess}) = _$_BannerWatcherState;

  @override
  bool get isLoading;
  @override
  Either<Failure, BannerEntity>? get failureOrSuccess;
  @override
  @JsonKey(ignore: true)
  _$BannerWatcherStateCopyWith<_BannerWatcherState> get copyWith =>
      throw _privateConstructorUsedError;
}
