// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'profile_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ProfileEntity _$ProfileEntityFromJson(Map<String, dynamic> json) {
  return _ProfileEntity.fromJson(json);
}

/// @nodoc
class _$ProfileEntityTearOff {
  const _$ProfileEntityTearOff();

  _ProfileEntity call(
      {@JsonKey(name: 'trade_name')
          required String tradeName,
      @JsonKey(name: 'outlet_name')
          required String outletName,
      @JsonKey(name: 'credit_limit')
          required double creditLimit,
      @JsonKey(name: 'outstanding_balance')
          required double outstandingBalance}) {
    return _ProfileEntity(
      tradeName: tradeName,
      outletName: outletName,
      creditLimit: creditLimit,
      outstandingBalance: outstandingBalance,
    );
  }

  ProfileEntity fromJson(Map<String, Object?> json) {
    return ProfileEntity.fromJson(json);
  }
}

/// @nodoc
const $ProfileEntity = _$ProfileEntityTearOff();

/// @nodoc
mixin _$ProfileEntity {
  @JsonKey(name: 'trade_name')
  String get tradeName => throw _privateConstructorUsedError;
  @JsonKey(name: 'outlet_name')
  String get outletName => throw _privateConstructorUsedError;
  @JsonKey(name: 'credit_limit')
  double get creditLimit => throw _privateConstructorUsedError;
  @JsonKey(name: 'outstanding_balance')
  double get outstandingBalance => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProfileEntityCopyWith<ProfileEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileEntityCopyWith<$Res> {
  factory $ProfileEntityCopyWith(
          ProfileEntity value, $Res Function(ProfileEntity) then) =
      _$ProfileEntityCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'trade_name') String tradeName,
      @JsonKey(name: 'outlet_name') String outletName,
      @JsonKey(name: 'credit_limit') double creditLimit,
      @JsonKey(name: 'outstanding_balance') double outstandingBalance});
}

/// @nodoc
class _$ProfileEntityCopyWithImpl<$Res>
    implements $ProfileEntityCopyWith<$Res> {
  _$ProfileEntityCopyWithImpl(this._value, this._then);

  final ProfileEntity _value;
  // ignore: unused_field
  final $Res Function(ProfileEntity) _then;

  @override
  $Res call({
    Object? tradeName = freezed,
    Object? outletName = freezed,
    Object? creditLimit = freezed,
    Object? outstandingBalance = freezed,
  }) {
    return _then(_value.copyWith(
      tradeName: tradeName == freezed
          ? _value.tradeName
          : tradeName // ignore: cast_nullable_to_non_nullable
              as String,
      outletName: outletName == freezed
          ? _value.outletName
          : outletName // ignore: cast_nullable_to_non_nullable
              as String,
      creditLimit: creditLimit == freezed
          ? _value.creditLimit
          : creditLimit // ignore: cast_nullable_to_non_nullable
              as double,
      outstandingBalance: outstandingBalance == freezed
          ? _value.outstandingBalance
          : outstandingBalance // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
abstract class _$ProfileEntityCopyWith<$Res>
    implements $ProfileEntityCopyWith<$Res> {
  factory _$ProfileEntityCopyWith(
          _ProfileEntity value, $Res Function(_ProfileEntity) then) =
      __$ProfileEntityCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'trade_name') String tradeName,
      @JsonKey(name: 'outlet_name') String outletName,
      @JsonKey(name: 'credit_limit') double creditLimit,
      @JsonKey(name: 'outstanding_balance') double outstandingBalance});
}

/// @nodoc
class __$ProfileEntityCopyWithImpl<$Res>
    extends _$ProfileEntityCopyWithImpl<$Res>
    implements _$ProfileEntityCopyWith<$Res> {
  __$ProfileEntityCopyWithImpl(
      _ProfileEntity _value, $Res Function(_ProfileEntity) _then)
      : super(_value, (v) => _then(v as _ProfileEntity));

  @override
  _ProfileEntity get _value => super._value as _ProfileEntity;

  @override
  $Res call({
    Object? tradeName = freezed,
    Object? outletName = freezed,
    Object? creditLimit = freezed,
    Object? outstandingBalance = freezed,
  }) {
    return _then(_ProfileEntity(
      tradeName: tradeName == freezed
          ? _value.tradeName
          : tradeName // ignore: cast_nullable_to_non_nullable
              as String,
      outletName: outletName == freezed
          ? _value.outletName
          : outletName // ignore: cast_nullable_to_non_nullable
              as String,
      creditLimit: creditLimit == freezed
          ? _value.creditLimit
          : creditLimit // ignore: cast_nullable_to_non_nullable
              as double,
      outstandingBalance: outstandingBalance == freezed
          ? _value.outstandingBalance
          : outstandingBalance // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ProfileEntity extends _ProfileEntity {
  const _$_ProfileEntity(
      {@JsonKey(name: 'trade_name') required this.tradeName,
      @JsonKey(name: 'outlet_name') required this.outletName,
      @JsonKey(name: 'credit_limit') required this.creditLimit,
      @JsonKey(name: 'outstanding_balance') required this.outstandingBalance})
      : super._();

  factory _$_ProfileEntity.fromJson(Map<String, dynamic> json) =>
      _$$_ProfileEntityFromJson(json);

  @override
  @JsonKey(name: 'trade_name')
  final String tradeName;
  @override
  @JsonKey(name: 'outlet_name')
  final String outletName;
  @override
  @JsonKey(name: 'credit_limit')
  final double creditLimit;
  @override
  @JsonKey(name: 'outstanding_balance')
  final double outstandingBalance;

  @override
  String toString() {
    return 'ProfileEntity(tradeName: $tradeName, outletName: $outletName, creditLimit: $creditLimit, outstandingBalance: $outstandingBalance)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ProfileEntity &&
            const DeepCollectionEquality().equals(other.tradeName, tradeName) &&
            const DeepCollectionEquality()
                .equals(other.outletName, outletName) &&
            const DeepCollectionEquality()
                .equals(other.creditLimit, creditLimit) &&
            const DeepCollectionEquality()
                .equals(other.outstandingBalance, outstandingBalance));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(tradeName),
      const DeepCollectionEquality().hash(outletName),
      const DeepCollectionEquality().hash(creditLimit),
      const DeepCollectionEquality().hash(outstandingBalance));

  @JsonKey(ignore: true)
  @override
  _$ProfileEntityCopyWith<_ProfileEntity> get copyWith =>
      __$ProfileEntityCopyWithImpl<_ProfileEntity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProfileEntityToJson(this);
  }
}

abstract class _ProfileEntity extends ProfileEntity {
  const factory _ProfileEntity(
      {@JsonKey(name: 'trade_name')
          required String tradeName,
      @JsonKey(name: 'outlet_name')
          required String outletName,
      @JsonKey(name: 'credit_limit')
          required double creditLimit,
      @JsonKey(name: 'outstanding_balance')
          required double outstandingBalance}) = _$_ProfileEntity;
  const _ProfileEntity._() : super._();

  factory _ProfileEntity.fromJson(Map<String, dynamic> json) =
      _$_ProfileEntity.fromJson;

  @override
  @JsonKey(name: 'trade_name')
  String get tradeName;
  @override
  @JsonKey(name: 'outlet_name')
  String get outletName;
  @override
  @JsonKey(name: 'credit_limit')
  double get creditLimit;
  @override
  @JsonKey(name: 'outstanding_balance')
  double get outstandingBalance;
  @override
  @JsonKey(ignore: true)
  _$ProfileEntityCopyWith<_ProfileEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
