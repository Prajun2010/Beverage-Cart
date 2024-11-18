// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'link_watcher_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$LinkWatcherEventTearOff {
  const _$LinkWatcherEventTearOff();

  _Started started() {
    return const _Started();
  }
}

/// @nodoc
const $LinkWatcherEvent = _$LinkWatcherEventTearOff();

/// @nodoc
mixin _$LinkWatcherEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LinkWatcherEventCopyWith<$Res> {
  factory $LinkWatcherEventCopyWith(
          LinkWatcherEvent value, $Res Function(LinkWatcherEvent) then) =
      _$LinkWatcherEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$LinkWatcherEventCopyWithImpl<$Res>
    implements $LinkWatcherEventCopyWith<$Res> {
  _$LinkWatcherEventCopyWithImpl(this._value, this._then);

  final LinkWatcherEvent _value;
  // ignore: unused_field
  final $Res Function(LinkWatcherEvent) _then;
}

/// @nodoc
abstract class _$StartedCopyWith<$Res> {
  factory _$StartedCopyWith(_Started value, $Res Function(_Started) then) =
      __$StartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$StartedCopyWithImpl<$Res> extends _$LinkWatcherEventCopyWithImpl<$Res>
    implements _$StartedCopyWith<$Res> {
  __$StartedCopyWithImpl(_Started _value, $Res Function(_Started) _then)
      : super(_value, (v) => _then(v as _Started));

  @override
  _Started get _value => super._value as _Started;
}

/// @nodoc

class _$_Started implements _Started {
  const _$_Started();

  @override
  String toString() {
    return 'LinkWatcherEvent.started()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Started);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements LinkWatcherEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
class _$LinkWatcherStateTearOff {
  const _$LinkWatcherStateTearOff();

  _LinkWatcherState call(
      {String? privacyLink,
      String? creditLink,
      String? termsLink,
      String? requestProductLink}) {
    return _LinkWatcherState(
      privacyLink: privacyLink,
      creditLink: creditLink,
      termsLink: termsLink,
      requestProductLink: requestProductLink,
    );
  }
}

/// @nodoc
const $LinkWatcherState = _$LinkWatcherStateTearOff();

/// @nodoc
mixin _$LinkWatcherState {
  String? get privacyLink => throw _privateConstructorUsedError;
  String? get creditLink => throw _privateConstructorUsedError;
  String? get termsLink => throw _privateConstructorUsedError;
  String? get requestProductLink => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LinkWatcherStateCopyWith<LinkWatcherState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LinkWatcherStateCopyWith<$Res> {
  factory $LinkWatcherStateCopyWith(
          LinkWatcherState value, $Res Function(LinkWatcherState) then) =
      _$LinkWatcherStateCopyWithImpl<$Res>;
  $Res call(
      {String? privacyLink,
      String? creditLink,
      String? termsLink,
      String? requestProductLink});
}

/// @nodoc
class _$LinkWatcherStateCopyWithImpl<$Res>
    implements $LinkWatcherStateCopyWith<$Res> {
  _$LinkWatcherStateCopyWithImpl(this._value, this._then);

  final LinkWatcherState _value;
  // ignore: unused_field
  final $Res Function(LinkWatcherState) _then;

  @override
  $Res call({
    Object? privacyLink = freezed,
    Object? creditLink = freezed,
    Object? termsLink = freezed,
    Object? requestProductLink = freezed,
  }) {
    return _then(_value.copyWith(
      privacyLink: privacyLink == freezed
          ? _value.privacyLink
          : privacyLink // ignore: cast_nullable_to_non_nullable
              as String?,
      creditLink: creditLink == freezed
          ? _value.creditLink
          : creditLink // ignore: cast_nullable_to_non_nullable
              as String?,
      termsLink: termsLink == freezed
          ? _value.termsLink
          : termsLink // ignore: cast_nullable_to_non_nullable
              as String?,
      requestProductLink: requestProductLink == freezed
          ? _value.requestProductLink
          : requestProductLink // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$LinkWatcherStateCopyWith<$Res>
    implements $LinkWatcherStateCopyWith<$Res> {
  factory _$LinkWatcherStateCopyWith(
          _LinkWatcherState value, $Res Function(_LinkWatcherState) then) =
      __$LinkWatcherStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? privacyLink,
      String? creditLink,
      String? termsLink,
      String? requestProductLink});
}

/// @nodoc
class __$LinkWatcherStateCopyWithImpl<$Res>
    extends _$LinkWatcherStateCopyWithImpl<$Res>
    implements _$LinkWatcherStateCopyWith<$Res> {
  __$LinkWatcherStateCopyWithImpl(
      _LinkWatcherState _value, $Res Function(_LinkWatcherState) _then)
      : super(_value, (v) => _then(v as _LinkWatcherState));

  @override
  _LinkWatcherState get _value => super._value as _LinkWatcherState;

  @override
  $Res call({
    Object? privacyLink = freezed,
    Object? creditLink = freezed,
    Object? termsLink = freezed,
    Object? requestProductLink = freezed,
  }) {
    return _then(_LinkWatcherState(
      privacyLink: privacyLink == freezed
          ? _value.privacyLink
          : privacyLink // ignore: cast_nullable_to_non_nullable
              as String?,
      creditLink: creditLink == freezed
          ? _value.creditLink
          : creditLink // ignore: cast_nullable_to_non_nullable
              as String?,
      termsLink: termsLink == freezed
          ? _value.termsLink
          : termsLink // ignore: cast_nullable_to_non_nullable
              as String?,
      requestProductLink: requestProductLink == freezed
          ? _value.requestProductLink
          : requestProductLink // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_LinkWatcherState implements _LinkWatcherState {
  const _$_LinkWatcherState(
      {this.privacyLink,
      this.creditLink,
      this.termsLink,
      this.requestProductLink});

  @override
  final String? privacyLink;
  @override
  final String? creditLink;
  @override
  final String? termsLink;
  @override
  final String? requestProductLink;

  @override
  String toString() {
    return 'LinkWatcherState(privacyLink: $privacyLink, creditLink: $creditLink, termsLink: $termsLink, requestProductLink: $requestProductLink)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LinkWatcherState &&
            const DeepCollectionEquality()
                .equals(other.privacyLink, privacyLink) &&
            const DeepCollectionEquality()
                .equals(other.creditLink, creditLink) &&
            const DeepCollectionEquality().equals(other.termsLink, termsLink) &&
            const DeepCollectionEquality()
                .equals(other.requestProductLink, requestProductLink));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(privacyLink),
      const DeepCollectionEquality().hash(creditLink),
      const DeepCollectionEquality().hash(termsLink),
      const DeepCollectionEquality().hash(requestProductLink));

  @JsonKey(ignore: true)
  @override
  _$LinkWatcherStateCopyWith<_LinkWatcherState> get copyWith =>
      __$LinkWatcherStateCopyWithImpl<_LinkWatcherState>(this, _$identity);
}

abstract class _LinkWatcherState implements LinkWatcherState {
  const factory _LinkWatcherState(
      {String? privacyLink,
      String? creditLink,
      String? termsLink,
      String? requestProductLink}) = _$_LinkWatcherState;

  @override
  String? get privacyLink;
  @override
  String? get creditLink;
  @override
  String? get termsLink;
  @override
  String? get requestProductLink;
  @override
  @JsonKey(ignore: true)
  _$LinkWatcherStateCopyWith<_LinkWatcherState> get copyWith =>
      throw _privateConstructorUsedError;
}
