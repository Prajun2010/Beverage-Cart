// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'bottom_navigation_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$BottomNavigationStateTearOff {
  const _$BottomNavigationStateTearOff();

  _BottomNavigationState call({required int tabPosition}) {
    return _BottomNavigationState(
      tabPosition: tabPosition,
    );
  }
}

/// @nodoc
const $BottomNavigationState = _$BottomNavigationStateTearOff();

/// @nodoc
mixin _$BottomNavigationState {
  int get tabPosition => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BottomNavigationStateCopyWith<BottomNavigationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BottomNavigationStateCopyWith<$Res> {
  factory $BottomNavigationStateCopyWith(BottomNavigationState value,
          $Res Function(BottomNavigationState) then) =
      _$BottomNavigationStateCopyWithImpl<$Res>;
  $Res call({int tabPosition});
}

/// @nodoc
class _$BottomNavigationStateCopyWithImpl<$Res>
    implements $BottomNavigationStateCopyWith<$Res> {
  _$BottomNavigationStateCopyWithImpl(this._value, this._then);

  final BottomNavigationState _value;
  // ignore: unused_field
  final $Res Function(BottomNavigationState) _then;

  @override
  $Res call({
    Object? tabPosition = freezed,
  }) {
    return _then(_value.copyWith(
      tabPosition: tabPosition == freezed
          ? _value.tabPosition
          : tabPosition // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$BottomNavigationStateCopyWith<$Res>
    implements $BottomNavigationStateCopyWith<$Res> {
  factory _$BottomNavigationStateCopyWith(_BottomNavigationState value,
          $Res Function(_BottomNavigationState) then) =
      __$BottomNavigationStateCopyWithImpl<$Res>;
  @override
  $Res call({int tabPosition});
}

/// @nodoc
class __$BottomNavigationStateCopyWithImpl<$Res>
    extends _$BottomNavigationStateCopyWithImpl<$Res>
    implements _$BottomNavigationStateCopyWith<$Res> {
  __$BottomNavigationStateCopyWithImpl(_BottomNavigationState _value,
      $Res Function(_BottomNavigationState) _then)
      : super(_value, (v) => _then(v as _BottomNavigationState));

  @override
  _BottomNavigationState get _value => super._value as _BottomNavigationState;

  @override
  $Res call({
    Object? tabPosition = freezed,
  }) {
    return _then(_BottomNavigationState(
      tabPosition: tabPosition == freezed
          ? _value.tabPosition
          : tabPosition // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_BottomNavigationState implements _BottomNavigationState {
  const _$_BottomNavigationState({required this.tabPosition});

  @override
  final int tabPosition;

  @override
  String toString() {
    return 'BottomNavigationState(tabPosition: $tabPosition)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _BottomNavigationState &&
            const DeepCollectionEquality()
                .equals(other.tabPosition, tabPosition));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(tabPosition));

  @JsonKey(ignore: true)
  @override
  _$BottomNavigationStateCopyWith<_BottomNavigationState> get copyWith =>
      __$BottomNavigationStateCopyWithImpl<_BottomNavigationState>(
          this, _$identity);
}

abstract class _BottomNavigationState implements BottomNavigationState {
  const factory _BottomNavigationState({required int tabPosition}) =
      _$_BottomNavigationState;

  @override
  int get tabPosition;
  @override
  @JsonKey(ignore: true)
  _$BottomNavigationStateCopyWith<_BottomNavigationState> get copyWith =>
      throw _privateConstructorUsedError;
}
