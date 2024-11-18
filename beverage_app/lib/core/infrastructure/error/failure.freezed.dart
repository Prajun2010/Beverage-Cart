// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$FailureTearOff {
  const _$FailureTearOff();

  _Server server({required String message, HttpStatus? code}) {
    return _Server(
      message: message,
      code: code,
    );
  }

  _Cache cache({String message = 'No Data Found'}) {
    return _Cache(
      message: message,
    );
  }

  _Unauthorized unauthorized({required String message, HttpStatus? code}) {
    return _Unauthorized(
      message: message,
      code: code,
    );
  }

  _Network network(
      {String message = 'No Internet Connection', HttpStatus? code}) {
    return _Network(
      message: message,
      code: code,
    );
  }

  _Unhandled unhandled({required String message}) {
    return _Unhandled(
      message: message,
    );
  }
}

/// @nodoc
const $Failure = _$FailureTearOff();

/// @nodoc
mixin _$Failure {
  String get message => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message, HttpStatus? code) server,
    required TResult Function(String message) cache,
    required TResult Function(String message, HttpStatus? code) unauthorized,
    required TResult Function(String message, HttpStatus? code) network,
    required TResult Function(String message) unhandled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String message, HttpStatus? code)? server,
    TResult Function(String message)? cache,
    TResult Function(String message, HttpStatus? code)? unauthorized,
    TResult Function(String message, HttpStatus? code)? network,
    TResult Function(String message)? unhandled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message, HttpStatus? code)? server,
    TResult Function(String message)? cache,
    TResult Function(String message, HttpStatus? code)? unauthorized,
    TResult Function(String message, HttpStatus? code)? network,
    TResult Function(String message)? unhandled,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Server value) server,
    required TResult Function(_Cache value) cache,
    required TResult Function(_Unauthorized value) unauthorized,
    required TResult Function(_Network value) network,
    required TResult Function(_Unhandled value) unhandled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Server value)? server,
    TResult Function(_Cache value)? cache,
    TResult Function(_Unauthorized value)? unauthorized,
    TResult Function(_Network value)? network,
    TResult Function(_Unhandled value)? unhandled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Server value)? server,
    TResult Function(_Cache value)? cache,
    TResult Function(_Unauthorized value)? unauthorized,
    TResult Function(_Network value)? network,
    TResult Function(_Unhandled value)? unhandled,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FailureCopyWith<Failure> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FailureCopyWith<$Res> {
  factory $FailureCopyWith(Failure value, $Res Function(Failure) then) =
      _$FailureCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class _$FailureCopyWithImpl<$Res> implements $FailureCopyWith<$Res> {
  _$FailureCopyWithImpl(this._value, this._then);

  final Failure _value;
  // ignore: unused_field
  final $Res Function(Failure) _then;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$ServerCopyWith<$Res> implements $FailureCopyWith<$Res> {
  factory _$ServerCopyWith(_Server value, $Res Function(_Server) then) =
      __$ServerCopyWithImpl<$Res>;
  @override
  $Res call({String message, HttpStatus? code});
}

/// @nodoc
class __$ServerCopyWithImpl<$Res> extends _$FailureCopyWithImpl<$Res>
    implements _$ServerCopyWith<$Res> {
  __$ServerCopyWithImpl(_Server _value, $Res Function(_Server) _then)
      : super(_value, (v) => _then(v as _Server));

  @override
  _Server get _value => super._value as _Server;

  @override
  $Res call({
    Object? message = freezed,
    Object? code = freezed,
  }) {
    return _then(_Server(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as HttpStatus?,
    ));
  }
}

/// @nodoc

class _$_Server implements _Server {
  const _$_Server({required this.message, this.code});

  @override
  final String message;
  @override
  final HttpStatus? code;

  @override
  String toString() {
    return 'Failure.server(message: $message, code: $code)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Server &&
            const DeepCollectionEquality().equals(other.message, message) &&
            const DeepCollectionEquality().equals(other.code, code));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(message),
      const DeepCollectionEquality().hash(code));

  @JsonKey(ignore: true)
  @override
  _$ServerCopyWith<_Server> get copyWith =>
      __$ServerCopyWithImpl<_Server>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message, HttpStatus? code) server,
    required TResult Function(String message) cache,
    required TResult Function(String message, HttpStatus? code) unauthorized,
    required TResult Function(String message, HttpStatus? code) network,
    required TResult Function(String message) unhandled,
  }) {
    return server(message, code);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String message, HttpStatus? code)? server,
    TResult Function(String message)? cache,
    TResult Function(String message, HttpStatus? code)? unauthorized,
    TResult Function(String message, HttpStatus? code)? network,
    TResult Function(String message)? unhandled,
  }) {
    return server?.call(message, code);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message, HttpStatus? code)? server,
    TResult Function(String message)? cache,
    TResult Function(String message, HttpStatus? code)? unauthorized,
    TResult Function(String message, HttpStatus? code)? network,
    TResult Function(String message)? unhandled,
    required TResult orElse(),
  }) {
    if (server != null) {
      return server(message, code);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Server value) server,
    required TResult Function(_Cache value) cache,
    required TResult Function(_Unauthorized value) unauthorized,
    required TResult Function(_Network value) network,
    required TResult Function(_Unhandled value) unhandled,
  }) {
    return server(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Server value)? server,
    TResult Function(_Cache value)? cache,
    TResult Function(_Unauthorized value)? unauthorized,
    TResult Function(_Network value)? network,
    TResult Function(_Unhandled value)? unhandled,
  }) {
    return server?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Server value)? server,
    TResult Function(_Cache value)? cache,
    TResult Function(_Unauthorized value)? unauthorized,
    TResult Function(_Network value)? network,
    TResult Function(_Unhandled value)? unhandled,
    required TResult orElse(),
  }) {
    if (server != null) {
      return server(this);
    }
    return orElse();
  }
}

abstract class _Server implements Failure {
  const factory _Server({required String message, HttpStatus? code}) =
      _$_Server;

  @override
  String get message;
  HttpStatus? get code;
  @override
  @JsonKey(ignore: true)
  _$ServerCopyWith<_Server> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$CacheCopyWith<$Res> implements $FailureCopyWith<$Res> {
  factory _$CacheCopyWith(_Cache value, $Res Function(_Cache) then) =
      __$CacheCopyWithImpl<$Res>;
  @override
  $Res call({String message});
}

/// @nodoc
class __$CacheCopyWithImpl<$Res> extends _$FailureCopyWithImpl<$Res>
    implements _$CacheCopyWith<$Res> {
  __$CacheCopyWithImpl(_Cache _value, $Res Function(_Cache) _then)
      : super(_value, (v) => _then(v as _Cache));

  @override
  _Cache get _value => super._value as _Cache;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_Cache(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Cache implements _Cache {
  const _$_Cache({this.message = 'No Data Found'});

  @JsonKey()
  @override
  final String message;

  @override
  String toString() {
    return 'Failure.cache(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Cache &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$CacheCopyWith<_Cache> get copyWith =>
      __$CacheCopyWithImpl<_Cache>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message, HttpStatus? code) server,
    required TResult Function(String message) cache,
    required TResult Function(String message, HttpStatus? code) unauthorized,
    required TResult Function(String message, HttpStatus? code) network,
    required TResult Function(String message) unhandled,
  }) {
    return cache(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String message, HttpStatus? code)? server,
    TResult Function(String message)? cache,
    TResult Function(String message, HttpStatus? code)? unauthorized,
    TResult Function(String message, HttpStatus? code)? network,
    TResult Function(String message)? unhandled,
  }) {
    return cache?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message, HttpStatus? code)? server,
    TResult Function(String message)? cache,
    TResult Function(String message, HttpStatus? code)? unauthorized,
    TResult Function(String message, HttpStatus? code)? network,
    TResult Function(String message)? unhandled,
    required TResult orElse(),
  }) {
    if (cache != null) {
      return cache(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Server value) server,
    required TResult Function(_Cache value) cache,
    required TResult Function(_Unauthorized value) unauthorized,
    required TResult Function(_Network value) network,
    required TResult Function(_Unhandled value) unhandled,
  }) {
    return cache(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Server value)? server,
    TResult Function(_Cache value)? cache,
    TResult Function(_Unauthorized value)? unauthorized,
    TResult Function(_Network value)? network,
    TResult Function(_Unhandled value)? unhandled,
  }) {
    return cache?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Server value)? server,
    TResult Function(_Cache value)? cache,
    TResult Function(_Unauthorized value)? unauthorized,
    TResult Function(_Network value)? network,
    TResult Function(_Unhandled value)? unhandled,
    required TResult orElse(),
  }) {
    if (cache != null) {
      return cache(this);
    }
    return orElse();
  }
}

abstract class _Cache implements Failure {
  const factory _Cache({String message}) = _$_Cache;

  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$CacheCopyWith<_Cache> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$UnauthorizedCopyWith<$Res> implements $FailureCopyWith<$Res> {
  factory _$UnauthorizedCopyWith(
          _Unauthorized value, $Res Function(_Unauthorized) then) =
      __$UnauthorizedCopyWithImpl<$Res>;
  @override
  $Res call({String message, HttpStatus? code});
}

/// @nodoc
class __$UnauthorizedCopyWithImpl<$Res> extends _$FailureCopyWithImpl<$Res>
    implements _$UnauthorizedCopyWith<$Res> {
  __$UnauthorizedCopyWithImpl(
      _Unauthorized _value, $Res Function(_Unauthorized) _then)
      : super(_value, (v) => _then(v as _Unauthorized));

  @override
  _Unauthorized get _value => super._value as _Unauthorized;

  @override
  $Res call({
    Object? message = freezed,
    Object? code = freezed,
  }) {
    return _then(_Unauthorized(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as HttpStatus?,
    ));
  }
}

/// @nodoc

class _$_Unauthorized implements _Unauthorized {
  const _$_Unauthorized({required this.message, this.code});

  @override
  final String message;
  @override
  final HttpStatus? code;

  @override
  String toString() {
    return 'Failure.unauthorized(message: $message, code: $code)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Unauthorized &&
            const DeepCollectionEquality().equals(other.message, message) &&
            const DeepCollectionEquality().equals(other.code, code));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(message),
      const DeepCollectionEquality().hash(code));

  @JsonKey(ignore: true)
  @override
  _$UnauthorizedCopyWith<_Unauthorized> get copyWith =>
      __$UnauthorizedCopyWithImpl<_Unauthorized>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message, HttpStatus? code) server,
    required TResult Function(String message) cache,
    required TResult Function(String message, HttpStatus? code) unauthorized,
    required TResult Function(String message, HttpStatus? code) network,
    required TResult Function(String message) unhandled,
  }) {
    return unauthorized(message, code);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String message, HttpStatus? code)? server,
    TResult Function(String message)? cache,
    TResult Function(String message, HttpStatus? code)? unauthorized,
    TResult Function(String message, HttpStatus? code)? network,
    TResult Function(String message)? unhandled,
  }) {
    return unauthorized?.call(message, code);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message, HttpStatus? code)? server,
    TResult Function(String message)? cache,
    TResult Function(String message, HttpStatus? code)? unauthorized,
    TResult Function(String message, HttpStatus? code)? network,
    TResult Function(String message)? unhandled,
    required TResult orElse(),
  }) {
    if (unauthorized != null) {
      return unauthorized(message, code);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Server value) server,
    required TResult Function(_Cache value) cache,
    required TResult Function(_Unauthorized value) unauthorized,
    required TResult Function(_Network value) network,
    required TResult Function(_Unhandled value) unhandled,
  }) {
    return unauthorized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Server value)? server,
    TResult Function(_Cache value)? cache,
    TResult Function(_Unauthorized value)? unauthorized,
    TResult Function(_Network value)? network,
    TResult Function(_Unhandled value)? unhandled,
  }) {
    return unauthorized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Server value)? server,
    TResult Function(_Cache value)? cache,
    TResult Function(_Unauthorized value)? unauthorized,
    TResult Function(_Network value)? network,
    TResult Function(_Unhandled value)? unhandled,
    required TResult orElse(),
  }) {
    if (unauthorized != null) {
      return unauthorized(this);
    }
    return orElse();
  }
}

abstract class _Unauthorized implements Failure {
  const factory _Unauthorized({required String message, HttpStatus? code}) =
      _$_Unauthorized;

  @override
  String get message;
  HttpStatus? get code;
  @override
  @JsonKey(ignore: true)
  _$UnauthorizedCopyWith<_Unauthorized> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$NetworkCopyWith<$Res> implements $FailureCopyWith<$Res> {
  factory _$NetworkCopyWith(_Network value, $Res Function(_Network) then) =
      __$NetworkCopyWithImpl<$Res>;
  @override
  $Res call({String message, HttpStatus? code});
}

/// @nodoc
class __$NetworkCopyWithImpl<$Res> extends _$FailureCopyWithImpl<$Res>
    implements _$NetworkCopyWith<$Res> {
  __$NetworkCopyWithImpl(_Network _value, $Res Function(_Network) _then)
      : super(_value, (v) => _then(v as _Network));

  @override
  _Network get _value => super._value as _Network;

  @override
  $Res call({
    Object? message = freezed,
    Object? code = freezed,
  }) {
    return _then(_Network(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as HttpStatus?,
    ));
  }
}

/// @nodoc

class _$_Network implements _Network {
  const _$_Network({this.message = 'No Internet Connection', this.code});

  @JsonKey()
  @override
  final String message;
  @override
  final HttpStatus? code;

  @override
  String toString() {
    return 'Failure.network(message: $message, code: $code)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Network &&
            const DeepCollectionEquality().equals(other.message, message) &&
            const DeepCollectionEquality().equals(other.code, code));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(message),
      const DeepCollectionEquality().hash(code));

  @JsonKey(ignore: true)
  @override
  _$NetworkCopyWith<_Network> get copyWith =>
      __$NetworkCopyWithImpl<_Network>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message, HttpStatus? code) server,
    required TResult Function(String message) cache,
    required TResult Function(String message, HttpStatus? code) unauthorized,
    required TResult Function(String message, HttpStatus? code) network,
    required TResult Function(String message) unhandled,
  }) {
    return network(message, code);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String message, HttpStatus? code)? server,
    TResult Function(String message)? cache,
    TResult Function(String message, HttpStatus? code)? unauthorized,
    TResult Function(String message, HttpStatus? code)? network,
    TResult Function(String message)? unhandled,
  }) {
    return network?.call(message, code);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message, HttpStatus? code)? server,
    TResult Function(String message)? cache,
    TResult Function(String message, HttpStatus? code)? unauthorized,
    TResult Function(String message, HttpStatus? code)? network,
    TResult Function(String message)? unhandled,
    required TResult orElse(),
  }) {
    if (network != null) {
      return network(message, code);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Server value) server,
    required TResult Function(_Cache value) cache,
    required TResult Function(_Unauthorized value) unauthorized,
    required TResult Function(_Network value) network,
    required TResult Function(_Unhandled value) unhandled,
  }) {
    return network(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Server value)? server,
    TResult Function(_Cache value)? cache,
    TResult Function(_Unauthorized value)? unauthorized,
    TResult Function(_Network value)? network,
    TResult Function(_Unhandled value)? unhandled,
  }) {
    return network?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Server value)? server,
    TResult Function(_Cache value)? cache,
    TResult Function(_Unauthorized value)? unauthorized,
    TResult Function(_Network value)? network,
    TResult Function(_Unhandled value)? unhandled,
    required TResult orElse(),
  }) {
    if (network != null) {
      return network(this);
    }
    return orElse();
  }
}

abstract class _Network implements Failure {
  const factory _Network({String message, HttpStatus? code}) = _$_Network;

  @override
  String get message;
  HttpStatus? get code;
  @override
  @JsonKey(ignore: true)
  _$NetworkCopyWith<_Network> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$UnhandledCopyWith<$Res> implements $FailureCopyWith<$Res> {
  factory _$UnhandledCopyWith(
          _Unhandled value, $Res Function(_Unhandled) then) =
      __$UnhandledCopyWithImpl<$Res>;
  @override
  $Res call({String message});
}

/// @nodoc
class __$UnhandledCopyWithImpl<$Res> extends _$FailureCopyWithImpl<$Res>
    implements _$UnhandledCopyWith<$Res> {
  __$UnhandledCopyWithImpl(_Unhandled _value, $Res Function(_Unhandled) _then)
      : super(_value, (v) => _then(v as _Unhandled));

  @override
  _Unhandled get _value => super._value as _Unhandled;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_Unhandled(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Unhandled implements _Unhandled {
  const _$_Unhandled({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'Failure.unhandled(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Unhandled &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$UnhandledCopyWith<_Unhandled> get copyWith =>
      __$UnhandledCopyWithImpl<_Unhandled>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message, HttpStatus? code) server,
    required TResult Function(String message) cache,
    required TResult Function(String message, HttpStatus? code) unauthorized,
    required TResult Function(String message, HttpStatus? code) network,
    required TResult Function(String message) unhandled,
  }) {
    return unhandled(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String message, HttpStatus? code)? server,
    TResult Function(String message)? cache,
    TResult Function(String message, HttpStatus? code)? unauthorized,
    TResult Function(String message, HttpStatus? code)? network,
    TResult Function(String message)? unhandled,
  }) {
    return unhandled?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message, HttpStatus? code)? server,
    TResult Function(String message)? cache,
    TResult Function(String message, HttpStatus? code)? unauthorized,
    TResult Function(String message, HttpStatus? code)? network,
    TResult Function(String message)? unhandled,
    required TResult orElse(),
  }) {
    if (unhandled != null) {
      return unhandled(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Server value) server,
    required TResult Function(_Cache value) cache,
    required TResult Function(_Unauthorized value) unauthorized,
    required TResult Function(_Network value) network,
    required TResult Function(_Unhandled value) unhandled,
  }) {
    return unhandled(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Server value)? server,
    TResult Function(_Cache value)? cache,
    TResult Function(_Unauthorized value)? unauthorized,
    TResult Function(_Network value)? network,
    TResult Function(_Unhandled value)? unhandled,
  }) {
    return unhandled?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Server value)? server,
    TResult Function(_Cache value)? cache,
    TResult Function(_Unauthorized value)? unauthorized,
    TResult Function(_Network value)? network,
    TResult Function(_Unhandled value)? unhandled,
    required TResult orElse(),
  }) {
    if (unhandled != null) {
      return unhandled(this);
    }
    return orElse();
  }
}

abstract class _Unhandled implements Failure {
  const factory _Unhandled({required String message}) = _$_Unhandled;

  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$UnhandledCopyWith<_Unhandled> get copyWith =>
      throw _privateConstructorUsedError;
}
