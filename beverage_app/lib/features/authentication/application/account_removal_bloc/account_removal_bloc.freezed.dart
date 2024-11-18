// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'account_removal_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AccountRemovalEventTearOff {
  const _$AccountRemovalEventTearOff();

  _RemoveAccount removeAccount() {
    return const _RemoveAccount();
  }
}

/// @nodoc
const $AccountRemovalEvent = _$AccountRemovalEventTearOff();

/// @nodoc
mixin _$AccountRemovalEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() removeAccount,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? removeAccount,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? removeAccount,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RemoveAccount value) removeAccount,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_RemoveAccount value)? removeAccount,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RemoveAccount value)? removeAccount,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccountRemovalEventCopyWith<$Res> {
  factory $AccountRemovalEventCopyWith(
          AccountRemovalEvent value, $Res Function(AccountRemovalEvent) then) =
      _$AccountRemovalEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$AccountRemovalEventCopyWithImpl<$Res>
    implements $AccountRemovalEventCopyWith<$Res> {
  _$AccountRemovalEventCopyWithImpl(this._value, this._then);

  final AccountRemovalEvent _value;
  // ignore: unused_field
  final $Res Function(AccountRemovalEvent) _then;
}

/// @nodoc
abstract class _$RemoveAccountCopyWith<$Res> {
  factory _$RemoveAccountCopyWith(
          _RemoveAccount value, $Res Function(_RemoveAccount) then) =
      __$RemoveAccountCopyWithImpl<$Res>;
}

/// @nodoc
class __$RemoveAccountCopyWithImpl<$Res>
    extends _$AccountRemovalEventCopyWithImpl<$Res>
    implements _$RemoveAccountCopyWith<$Res> {
  __$RemoveAccountCopyWithImpl(
      _RemoveAccount _value, $Res Function(_RemoveAccount) _then)
      : super(_value, (v) => _then(v as _RemoveAccount));

  @override
  _RemoveAccount get _value => super._value as _RemoveAccount;
}

/// @nodoc

class _$_RemoveAccount implements _RemoveAccount {
  const _$_RemoveAccount();

  @override
  String toString() {
    return 'AccountRemovalEvent.removeAccount()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _RemoveAccount);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() removeAccount,
  }) {
    return removeAccount();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? removeAccount,
  }) {
    return removeAccount?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? removeAccount,
    required TResult orElse(),
  }) {
    if (removeAccount != null) {
      return removeAccount();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RemoveAccount value) removeAccount,
  }) {
    return removeAccount(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_RemoveAccount value)? removeAccount,
  }) {
    return removeAccount?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RemoveAccount value)? removeAccount,
    required TResult orElse(),
  }) {
    if (removeAccount != null) {
      return removeAccount(this);
    }
    return orElse();
  }
}

abstract class _RemoveAccount implements AccountRemovalEvent {
  const factory _RemoveAccount() = _$_RemoveAccount;
}

/// @nodoc
class _$AccountRemovalStateTearOff {
  const _$AccountRemovalStateTearOff();

  _AccountRemovalState call({Either<Failure, Unit>? failureOrSuccess}) {
    return _AccountRemovalState(
      failureOrSuccess: failureOrSuccess,
    );
  }
}

/// @nodoc
const $AccountRemovalState = _$AccountRemovalStateTearOff();

/// @nodoc
mixin _$AccountRemovalState {
  Either<Failure, Unit>? get failureOrSuccess =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AccountRemovalStateCopyWith<AccountRemovalState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccountRemovalStateCopyWith<$Res> {
  factory $AccountRemovalStateCopyWith(
          AccountRemovalState value, $Res Function(AccountRemovalState) then) =
      _$AccountRemovalStateCopyWithImpl<$Res>;
  $Res call({Either<Failure, Unit>? failureOrSuccess});
}

/// @nodoc
class _$AccountRemovalStateCopyWithImpl<$Res>
    implements $AccountRemovalStateCopyWith<$Res> {
  _$AccountRemovalStateCopyWithImpl(this._value, this._then);

  final AccountRemovalState _value;
  // ignore: unused_field
  final $Res Function(AccountRemovalState) _then;

  @override
  $Res call({
    Object? failureOrSuccess = freezed,
  }) {
    return _then(_value.copyWith(
      failureOrSuccess: failureOrSuccess == freezed
          ? _value.failureOrSuccess
          : failureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Either<Failure, Unit>?,
    ));
  }
}

/// @nodoc
abstract class _$AccountRemovalStateCopyWith<$Res>
    implements $AccountRemovalStateCopyWith<$Res> {
  factory _$AccountRemovalStateCopyWith(_AccountRemovalState value,
          $Res Function(_AccountRemovalState) then) =
      __$AccountRemovalStateCopyWithImpl<$Res>;
  @override
  $Res call({Either<Failure, Unit>? failureOrSuccess});
}

/// @nodoc
class __$AccountRemovalStateCopyWithImpl<$Res>
    extends _$AccountRemovalStateCopyWithImpl<$Res>
    implements _$AccountRemovalStateCopyWith<$Res> {
  __$AccountRemovalStateCopyWithImpl(
      _AccountRemovalState _value, $Res Function(_AccountRemovalState) _then)
      : super(_value, (v) => _then(v as _AccountRemovalState));

  @override
  _AccountRemovalState get _value => super._value as _AccountRemovalState;

  @override
  $Res call({
    Object? failureOrSuccess = freezed,
  }) {
    return _then(_AccountRemovalState(
      failureOrSuccess: failureOrSuccess == freezed
          ? _value.failureOrSuccess
          : failureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Either<Failure, Unit>?,
    ));
  }
}

/// @nodoc

class _$_AccountRemovalState implements _AccountRemovalState {
  const _$_AccountRemovalState({this.failureOrSuccess});

  @override
  final Either<Failure, Unit>? failureOrSuccess;

  @override
  String toString() {
    return 'AccountRemovalState(failureOrSuccess: $failureOrSuccess)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AccountRemovalState &&
            const DeepCollectionEquality()
                .equals(other.failureOrSuccess, failureOrSuccess));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(failureOrSuccess));

  @JsonKey(ignore: true)
  @override
  _$AccountRemovalStateCopyWith<_AccountRemovalState> get copyWith =>
      __$AccountRemovalStateCopyWithImpl<_AccountRemovalState>(
          this, _$identity);
}

abstract class _AccountRemovalState implements AccountRemovalState {
  const factory _AccountRemovalState(
      {Either<Failure, Unit>? failureOrSuccess}) = _$_AccountRemovalState;

  @override
  Either<Failure, Unit>? get failureOrSuccess;
  @override
  @JsonKey(ignore: true)
  _$AccountRemovalStateCopyWith<_AccountRemovalState> get copyWith =>
      throw _privateConstructorUsedError;
}
