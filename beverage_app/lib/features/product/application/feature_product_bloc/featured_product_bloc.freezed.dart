// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'featured_product_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$FeaturedProductEventTearOff {
  const _$FeaturedProductEventTearOff();

  _FetchFeaturedProduct fetchFeaturedProducts() {
    return const _FetchFeaturedProduct();
  }
}

/// @nodoc
const $FeaturedProductEvent = _$FeaturedProductEventTearOff();

/// @nodoc
mixin _$FeaturedProductEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchFeaturedProducts,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? fetchFeaturedProducts,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchFeaturedProducts,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchFeaturedProduct value)
        fetchFeaturedProducts,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_FetchFeaturedProduct value)? fetchFeaturedProducts,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchFeaturedProduct value)? fetchFeaturedProducts,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FeaturedProductEventCopyWith<$Res> {
  factory $FeaturedProductEventCopyWith(FeaturedProductEvent value,
          $Res Function(FeaturedProductEvent) then) =
      _$FeaturedProductEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$FeaturedProductEventCopyWithImpl<$Res>
    implements $FeaturedProductEventCopyWith<$Res> {
  _$FeaturedProductEventCopyWithImpl(this._value, this._then);

  final FeaturedProductEvent _value;
  // ignore: unused_field
  final $Res Function(FeaturedProductEvent) _then;
}

/// @nodoc
abstract class _$FetchFeaturedProductCopyWith<$Res> {
  factory _$FetchFeaturedProductCopyWith(_FetchFeaturedProduct value,
          $Res Function(_FetchFeaturedProduct) then) =
      __$FetchFeaturedProductCopyWithImpl<$Res>;
}

/// @nodoc
class __$FetchFeaturedProductCopyWithImpl<$Res>
    extends _$FeaturedProductEventCopyWithImpl<$Res>
    implements _$FetchFeaturedProductCopyWith<$Res> {
  __$FetchFeaturedProductCopyWithImpl(
      _FetchFeaturedProduct _value, $Res Function(_FetchFeaturedProduct) _then)
      : super(_value, (v) => _then(v as _FetchFeaturedProduct));

  @override
  _FetchFeaturedProduct get _value => super._value as _FetchFeaturedProduct;
}

/// @nodoc

class _$_FetchFeaturedProduct implements _FetchFeaturedProduct {
  const _$_FetchFeaturedProduct();

  @override
  String toString() {
    return 'FeaturedProductEvent.fetchFeaturedProducts()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _FetchFeaturedProduct);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchFeaturedProducts,
  }) {
    return fetchFeaturedProducts();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? fetchFeaturedProducts,
  }) {
    return fetchFeaturedProducts?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchFeaturedProducts,
    required TResult orElse(),
  }) {
    if (fetchFeaturedProducts != null) {
      return fetchFeaturedProducts();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchFeaturedProduct value)
        fetchFeaturedProducts,
  }) {
    return fetchFeaturedProducts(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_FetchFeaturedProduct value)? fetchFeaturedProducts,
  }) {
    return fetchFeaturedProducts?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchFeaturedProduct value)? fetchFeaturedProducts,
    required TResult orElse(),
  }) {
    if (fetchFeaturedProducts != null) {
      return fetchFeaturedProducts(this);
    }
    return orElse();
  }
}

abstract class _FetchFeaturedProduct implements FeaturedProductEvent {
  const factory _FetchFeaturedProduct() = _$_FetchFeaturedProduct;
}

/// @nodoc
class _$FeaturedProductStateTearOff {
  const _$FeaturedProductStateTearOff();

  _FeaturedProductState call(
      {Either<Failure, List<CategoryItemsEntity>>? failureOrSuccess,
      required bool isLoading}) {
    return _FeaturedProductState(
      failureOrSuccess: failureOrSuccess,
      isLoading: isLoading,
    );
  }
}

/// @nodoc
const $FeaturedProductState = _$FeaturedProductStateTearOff();

/// @nodoc
mixin _$FeaturedProductState {
  Either<Failure, List<CategoryItemsEntity>>? get failureOrSuccess =>
      throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FeaturedProductStateCopyWith<FeaturedProductState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FeaturedProductStateCopyWith<$Res> {
  factory $FeaturedProductStateCopyWith(FeaturedProductState value,
          $Res Function(FeaturedProductState) then) =
      _$FeaturedProductStateCopyWithImpl<$Res>;
  $Res call(
      {Either<Failure, List<CategoryItemsEntity>>? failureOrSuccess,
      bool isLoading});
}

/// @nodoc
class _$FeaturedProductStateCopyWithImpl<$Res>
    implements $FeaturedProductStateCopyWith<$Res> {
  _$FeaturedProductStateCopyWithImpl(this._value, this._then);

  final FeaturedProductState _value;
  // ignore: unused_field
  final $Res Function(FeaturedProductState) _then;

  @override
  $Res call({
    Object? failureOrSuccess = freezed,
    Object? isLoading = freezed,
  }) {
    return _then(_value.copyWith(
      failureOrSuccess: failureOrSuccess == freezed
          ? _value.failureOrSuccess
          : failureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Either<Failure, List<CategoryItemsEntity>>?,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$FeaturedProductStateCopyWith<$Res>
    implements $FeaturedProductStateCopyWith<$Res> {
  factory _$FeaturedProductStateCopyWith(_FeaturedProductState value,
          $Res Function(_FeaturedProductState) then) =
      __$FeaturedProductStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {Either<Failure, List<CategoryItemsEntity>>? failureOrSuccess,
      bool isLoading});
}

/// @nodoc
class __$FeaturedProductStateCopyWithImpl<$Res>
    extends _$FeaturedProductStateCopyWithImpl<$Res>
    implements _$FeaturedProductStateCopyWith<$Res> {
  __$FeaturedProductStateCopyWithImpl(
      _FeaturedProductState _value, $Res Function(_FeaturedProductState) _then)
      : super(_value, (v) => _then(v as _FeaturedProductState));

  @override
  _FeaturedProductState get _value => super._value as _FeaturedProductState;

  @override
  $Res call({
    Object? failureOrSuccess = freezed,
    Object? isLoading = freezed,
  }) {
    return _then(_FeaturedProductState(
      failureOrSuccess: failureOrSuccess == freezed
          ? _value.failureOrSuccess
          : failureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Either<Failure, List<CategoryItemsEntity>>?,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_FeaturedProductState implements _FeaturedProductState {
  const _$_FeaturedProductState(
      {this.failureOrSuccess, required this.isLoading});

  @override
  final Either<Failure, List<CategoryItemsEntity>>? failureOrSuccess;
  @override
  final bool isLoading;

  @override
  String toString() {
    return 'FeaturedProductState(failureOrSuccess: $failureOrSuccess, isLoading: $isLoading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _FeaturedProductState &&
            const DeepCollectionEquality()
                .equals(other.failureOrSuccess, failureOrSuccess) &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(failureOrSuccess),
      const DeepCollectionEquality().hash(isLoading));

  @JsonKey(ignore: true)
  @override
  _$FeaturedProductStateCopyWith<_FeaturedProductState> get copyWith =>
      __$FeaturedProductStateCopyWithImpl<_FeaturedProductState>(
          this, _$identity);
}

abstract class _FeaturedProductState implements FeaturedProductState {
  const factory _FeaturedProductState(
      {Either<Failure, List<CategoryItemsEntity>>? failureOrSuccess,
      required bool isLoading}) = _$_FeaturedProductState;

  @override
  Either<Failure, List<CategoryItemsEntity>>? get failureOrSuccess;
  @override
  bool get isLoading;
  @override
  @JsonKey(ignore: true)
  _$FeaturedProductStateCopyWith<_FeaturedProductState> get copyWith =>
      throw _privateConstructorUsedError;
}
