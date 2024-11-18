// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'link_detail_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LinkDetailEntity _$LinkDetailEntityFromJson(Map<String, dynamic> json) {
  return _LinkDetailEntity.fromJson(json);
}

/// @nodoc
class _$LinkDetailEntityTearOff {
  const _$LinkDetailEntityTearOff();

  _LinkDetailEntity call(
      {required int id,
      required String link,
      @JsonKey(name: 'name') required String linkType}) {
    return _LinkDetailEntity(
      id: id,
      link: link,
      linkType: linkType,
    );
  }

  LinkDetailEntity fromJson(Map<String, Object?> json) {
    return LinkDetailEntity.fromJson(json);
  }
}

/// @nodoc
const $LinkDetailEntity = _$LinkDetailEntityTearOff();

/// @nodoc
mixin _$LinkDetailEntity {
  int get id => throw _privateConstructorUsedError;
  String get link => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String get linkType => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LinkDetailEntityCopyWith<LinkDetailEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LinkDetailEntityCopyWith<$Res> {
  factory $LinkDetailEntityCopyWith(
          LinkDetailEntity value, $Res Function(LinkDetailEntity) then) =
      _$LinkDetailEntityCopyWithImpl<$Res>;
  $Res call({int id, String link, @JsonKey(name: 'name') String linkType});
}

/// @nodoc
class _$LinkDetailEntityCopyWithImpl<$Res>
    implements $LinkDetailEntityCopyWith<$Res> {
  _$LinkDetailEntityCopyWithImpl(this._value, this._then);

  final LinkDetailEntity _value;
  // ignore: unused_field
  final $Res Function(LinkDetailEntity) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? link = freezed,
    Object? linkType = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      link: link == freezed
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String,
      linkType: linkType == freezed
          ? _value.linkType
          : linkType // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$LinkDetailEntityCopyWith<$Res>
    implements $LinkDetailEntityCopyWith<$Res> {
  factory _$LinkDetailEntityCopyWith(
          _LinkDetailEntity value, $Res Function(_LinkDetailEntity) then) =
      __$LinkDetailEntityCopyWithImpl<$Res>;
  @override
  $Res call({int id, String link, @JsonKey(name: 'name') String linkType});
}

/// @nodoc
class __$LinkDetailEntityCopyWithImpl<$Res>
    extends _$LinkDetailEntityCopyWithImpl<$Res>
    implements _$LinkDetailEntityCopyWith<$Res> {
  __$LinkDetailEntityCopyWithImpl(
      _LinkDetailEntity _value, $Res Function(_LinkDetailEntity) _then)
      : super(_value, (v) => _then(v as _LinkDetailEntity));

  @override
  _LinkDetailEntity get _value => super._value as _LinkDetailEntity;

  @override
  $Res call({
    Object? id = freezed,
    Object? link = freezed,
    Object? linkType = freezed,
  }) {
    return _then(_LinkDetailEntity(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      link: link == freezed
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String,
      linkType: linkType == freezed
          ? _value.linkType
          : linkType // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LinkDetailEntity extends _LinkDetailEntity {
  const _$_LinkDetailEntity(
      {required this.id,
      required this.link,
      @JsonKey(name: 'name') required this.linkType})
      : super._();

  factory _$_LinkDetailEntity.fromJson(Map<String, dynamic> json) =>
      _$$_LinkDetailEntityFromJson(json);

  @override
  final int id;
  @override
  final String link;
  @override
  @JsonKey(name: 'name')
  final String linkType;

  @override
  String toString() {
    return 'LinkDetailEntity(id: $id, link: $link, linkType: $linkType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LinkDetailEntity &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.link, link) &&
            const DeepCollectionEquality().equals(other.linkType, linkType));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(link),
      const DeepCollectionEquality().hash(linkType));

  @JsonKey(ignore: true)
  @override
  _$LinkDetailEntityCopyWith<_LinkDetailEntity> get copyWith =>
      __$LinkDetailEntityCopyWithImpl<_LinkDetailEntity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LinkDetailEntityToJson(this);
  }
}

abstract class _LinkDetailEntity extends LinkDetailEntity {
  const factory _LinkDetailEntity(
      {required int id,
      required String link,
      @JsonKey(name: 'name') required String linkType}) = _$_LinkDetailEntity;
  const _LinkDetailEntity._() : super._();

  factory _LinkDetailEntity.fromJson(Map<String, dynamic> json) =
      _$_LinkDetailEntity.fromJson;

  @override
  int get id;
  @override
  String get link;
  @override
  @JsonKey(name: 'name')
  String get linkType;
  @override
  @JsonKey(ignore: true)
  _$LinkDetailEntityCopyWith<_LinkDetailEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
