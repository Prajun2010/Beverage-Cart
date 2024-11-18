// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'auth_credential_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AuthCredentialEntity _$AuthCredentialEntityFromJson(Map<String, dynamic> json) {
  return _AuthCredentialEntity.fromJson(json);
}

/// @nodoc
class _$AuthCredentialEntityTearOff {
  const _$AuthCredentialEntityTearOff();

  _AuthCredentialEntity call({required String token}) {
    return _AuthCredentialEntity(
      token: token,
    );
  }

  AuthCredentialEntity fromJson(Map<String, Object?> json) {
    return AuthCredentialEntity.fromJson(json);
  }
}

/// @nodoc
const $AuthCredentialEntity = _$AuthCredentialEntityTearOff();

/// @nodoc
mixin _$AuthCredentialEntity {
  String get token => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AuthCredentialEntityCopyWith<AuthCredentialEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthCredentialEntityCopyWith<$Res> {
  factory $AuthCredentialEntityCopyWith(AuthCredentialEntity value,
          $Res Function(AuthCredentialEntity) then) =
      _$AuthCredentialEntityCopyWithImpl<$Res>;
  $Res call({String token});
}

/// @nodoc
class _$AuthCredentialEntityCopyWithImpl<$Res>
    implements $AuthCredentialEntityCopyWith<$Res> {
  _$AuthCredentialEntityCopyWithImpl(this._value, this._then);

  final AuthCredentialEntity _value;
  // ignore: unused_field
  final $Res Function(AuthCredentialEntity) _then;

  @override
  $Res call({
    Object? token = freezed,
  }) {
    return _then(_value.copyWith(
      token: token == freezed
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$AuthCredentialEntityCopyWith<$Res>
    implements $AuthCredentialEntityCopyWith<$Res> {
  factory _$AuthCredentialEntityCopyWith(_AuthCredentialEntity value,
          $Res Function(_AuthCredentialEntity) then) =
      __$AuthCredentialEntityCopyWithImpl<$Res>;
  @override
  $Res call({String token});
}

/// @nodoc
class __$AuthCredentialEntityCopyWithImpl<$Res>
    extends _$AuthCredentialEntityCopyWithImpl<$Res>
    implements _$AuthCredentialEntityCopyWith<$Res> {
  __$AuthCredentialEntityCopyWithImpl(
      _AuthCredentialEntity _value, $Res Function(_AuthCredentialEntity) _then)
      : super(_value, (v) => _then(v as _AuthCredentialEntity));

  @override
  _AuthCredentialEntity get _value => super._value as _AuthCredentialEntity;

  @override
  $Res call({
    Object? token = freezed,
  }) {
    return _then(_AuthCredentialEntity(
      token: token == freezed
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AuthCredentialEntity extends _AuthCredentialEntity {
  const _$_AuthCredentialEntity({required this.token}) : super._();

  factory _$_AuthCredentialEntity.fromJson(Map<String, dynamic> json) =>
      _$$_AuthCredentialEntityFromJson(json);

  @override
  final String token;

  @override
  String toString() {
    return 'AuthCredentialEntity(token: $token)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AuthCredentialEntity &&
            const DeepCollectionEquality().equals(other.token, token));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(token));

  @JsonKey(ignore: true)
  @override
  _$AuthCredentialEntityCopyWith<_AuthCredentialEntity> get copyWith =>
      __$AuthCredentialEntityCopyWithImpl<_AuthCredentialEntity>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AuthCredentialEntityToJson(this);
  }
}

abstract class _AuthCredentialEntity extends AuthCredentialEntity {
  const factory _AuthCredentialEntity({required String token}) =
      _$_AuthCredentialEntity;
  const _AuthCredentialEntity._() : super._();

  factory _AuthCredentialEntity.fromJson(Map<String, dynamic> json) =
      _$_AuthCredentialEntity.fromJson;

  @override
  String get token;
  @override
  @JsonKey(ignore: true)
  _$AuthCredentialEntityCopyWith<_AuthCredentialEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
