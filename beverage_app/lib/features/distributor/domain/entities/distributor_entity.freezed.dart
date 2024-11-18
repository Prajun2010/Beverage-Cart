// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'distributor_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DistributorEntity _$DistributorEntityFromJson(Map<String, dynamic> json) {
  return _DistributorEntity.fromJson(json);
}

/// @nodoc
class _$DistributorEntityTearOff {
  const _$DistributorEntityTearOff();

  _DistributorEntity call(
      {required String distributor,
      required String url,
      required String gstin}) {
    return _DistributorEntity(
      distributor: distributor,
      url: url,
      gstin: gstin,
    );
  }

  DistributorEntity fromJson(Map<String, Object?> json) {
    return DistributorEntity.fromJson(json);
  }
}

/// @nodoc
const $DistributorEntity = _$DistributorEntityTearOff();

/// @nodoc
mixin _$DistributorEntity {
  String get distributor => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;
  String get gstin => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DistributorEntityCopyWith<DistributorEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DistributorEntityCopyWith<$Res> {
  factory $DistributorEntityCopyWith(
          DistributorEntity value, $Res Function(DistributorEntity) then) =
      _$DistributorEntityCopyWithImpl<$Res>;
  $Res call({String distributor, String url, String gstin});
}

/// @nodoc
class _$DistributorEntityCopyWithImpl<$Res>
    implements $DistributorEntityCopyWith<$Res> {
  _$DistributorEntityCopyWithImpl(this._value, this._then);

  final DistributorEntity _value;
  // ignore: unused_field
  final $Res Function(DistributorEntity) _then;

  @override
  $Res call({
    Object? distributor = freezed,
    Object? url = freezed,
    Object? gstin = freezed,
  }) {
    return _then(_value.copyWith(
      distributor: distributor == freezed
          ? _value.distributor
          : distributor // ignore: cast_nullable_to_non_nullable
              as String,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      gstin: gstin == freezed
          ? _value.gstin
          : gstin // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$DistributorEntityCopyWith<$Res>
    implements $DistributorEntityCopyWith<$Res> {
  factory _$DistributorEntityCopyWith(
          _DistributorEntity value, $Res Function(_DistributorEntity) then) =
      __$DistributorEntityCopyWithImpl<$Res>;
  @override
  $Res call({String distributor, String url, String gstin});
}

/// @nodoc
class __$DistributorEntityCopyWithImpl<$Res>
    extends _$DistributorEntityCopyWithImpl<$Res>
    implements _$DistributorEntityCopyWith<$Res> {
  __$DistributorEntityCopyWithImpl(
      _DistributorEntity _value, $Res Function(_DistributorEntity) _then)
      : super(_value, (v) => _then(v as _DistributorEntity));

  @override
  _DistributorEntity get _value => super._value as _DistributorEntity;

  @override
  $Res call({
    Object? distributor = freezed,
    Object? url = freezed,
    Object? gstin = freezed,
  }) {
    return _then(_DistributorEntity(
      distributor: distributor == freezed
          ? _value.distributor
          : distributor // ignore: cast_nullable_to_non_nullable
              as String,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      gstin: gstin == freezed
          ? _value.gstin
          : gstin // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DistributorEntity extends _DistributorEntity {
  const _$_DistributorEntity(
      {required this.distributor, required this.url, required this.gstin})
      : super._();

  factory _$_DistributorEntity.fromJson(Map<String, dynamic> json) =>
      _$$_DistributorEntityFromJson(json);

  @override
  final String distributor;
  @override
  final String url;
  @override
  final String gstin;

  @override
  String toString() {
    return 'DistributorEntity(distributor: $distributor, url: $url, gstin: $gstin)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DistributorEntity &&
            const DeepCollectionEquality()
                .equals(other.distributor, distributor) &&
            const DeepCollectionEquality().equals(other.url, url) &&
            const DeepCollectionEquality().equals(other.gstin, gstin));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(distributor),
      const DeepCollectionEquality().hash(url),
      const DeepCollectionEquality().hash(gstin));

  @JsonKey(ignore: true)
  @override
  _$DistributorEntityCopyWith<_DistributorEntity> get copyWith =>
      __$DistributorEntityCopyWithImpl<_DistributorEntity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DistributorEntityToJson(this);
  }
}

abstract class _DistributorEntity extends DistributorEntity {
  const factory _DistributorEntity(
      {required String distributor,
      required String url,
      required String gstin}) = _$_DistributorEntity;
  const _DistributorEntity._() : super._();

  factory _DistributorEntity.fromJson(Map<String, dynamic> json) =
      _$_DistributorEntity.fromJson;

  @override
  String get distributor;
  @override
  String get url;
  @override
  String get gstin;
  @override
  @JsonKey(ignore: true)
  _$DistributorEntityCopyWith<_DistributorEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
