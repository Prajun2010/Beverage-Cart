// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'product_watcher_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ProductWatcherEventTearOff {
  const _$ProductWatcherEventTearOff();

  _FetchProductCategories fetchProductCategories({required String url}) {
    return _FetchProductCategories(
      url: url,
    );
  }

  _UpdateSelectedItems computeAmount() {
    return const _UpdateSelectedItems();
  }

  _AddItems addItems({required CategoryItemsEntity selectedItem}) {
    return _AddItems(
      selectedItem: selectedItem,
    );
  }

  _Increment increment({required int productId}) {
    return _Increment(
      productId: productId,
    );
  }

  _Decrement decrement({required int productId}) {
    return _Decrement(
      productId: productId,
    );
  }

  _RemoveItem removeItem({required int productId}) {
    return _RemoveItem(
      productId: productId,
    );
  }

  _ChangePage changePage({required int page}) {
    return _ChangePage(
      page: page,
    );
  }

  _SearchKey searchKey({required String searchKey}) {
    return _SearchKey(
      searchKey: searchKey,
    );
  }

  _ResetData resetData() {
    return const _ResetData();
  }
}

/// @nodoc
const $ProductWatcherEvent = _$ProductWatcherEventTearOff();

/// @nodoc
mixin _$ProductWatcherEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String url) fetchProductCategories,
    required TResult Function() computeAmount,
    required TResult Function(CategoryItemsEntity selectedItem) addItems,
    required TResult Function(int productId) increment,
    required TResult Function(int productId) decrement,
    required TResult Function(int productId) removeItem,
    required TResult Function(int page) changePage,
    required TResult Function(String searchKey) searchKey,
    required TResult Function() resetData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String url)? fetchProductCategories,
    TResult Function()? computeAmount,
    TResult Function(CategoryItemsEntity selectedItem)? addItems,
    TResult Function(int productId)? increment,
    TResult Function(int productId)? decrement,
    TResult Function(int productId)? removeItem,
    TResult Function(int page)? changePage,
    TResult Function(String searchKey)? searchKey,
    TResult Function()? resetData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String url)? fetchProductCategories,
    TResult Function()? computeAmount,
    TResult Function(CategoryItemsEntity selectedItem)? addItems,
    TResult Function(int productId)? increment,
    TResult Function(int productId)? decrement,
    TResult Function(int productId)? removeItem,
    TResult Function(int page)? changePage,
    TResult Function(String searchKey)? searchKey,
    TResult Function()? resetData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchProductCategories value)
        fetchProductCategories,
    required TResult Function(_UpdateSelectedItems value) computeAmount,
    required TResult Function(_AddItems value) addItems,
    required TResult Function(_Increment value) increment,
    required TResult Function(_Decrement value) decrement,
    required TResult Function(_RemoveItem value) removeItem,
    required TResult Function(_ChangePage value) changePage,
    required TResult Function(_SearchKey value) searchKey,
    required TResult Function(_ResetData value) resetData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_FetchProductCategories value)? fetchProductCategories,
    TResult Function(_UpdateSelectedItems value)? computeAmount,
    TResult Function(_AddItems value)? addItems,
    TResult Function(_Increment value)? increment,
    TResult Function(_Decrement value)? decrement,
    TResult Function(_RemoveItem value)? removeItem,
    TResult Function(_ChangePage value)? changePage,
    TResult Function(_SearchKey value)? searchKey,
    TResult Function(_ResetData value)? resetData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchProductCategories value)? fetchProductCategories,
    TResult Function(_UpdateSelectedItems value)? computeAmount,
    TResult Function(_AddItems value)? addItems,
    TResult Function(_Increment value)? increment,
    TResult Function(_Decrement value)? decrement,
    TResult Function(_RemoveItem value)? removeItem,
    TResult Function(_ChangePage value)? changePage,
    TResult Function(_SearchKey value)? searchKey,
    TResult Function(_ResetData value)? resetData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductWatcherEventCopyWith<$Res> {
  factory $ProductWatcherEventCopyWith(
          ProductWatcherEvent value, $Res Function(ProductWatcherEvent) then) =
      _$ProductWatcherEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ProductWatcherEventCopyWithImpl<$Res>
    implements $ProductWatcherEventCopyWith<$Res> {
  _$ProductWatcherEventCopyWithImpl(this._value, this._then);

  final ProductWatcherEvent _value;
  // ignore: unused_field
  final $Res Function(ProductWatcherEvent) _then;
}

/// @nodoc
abstract class _$FetchProductCategoriesCopyWith<$Res> {
  factory _$FetchProductCategoriesCopyWith(_FetchProductCategories value,
          $Res Function(_FetchProductCategories) then) =
      __$FetchProductCategoriesCopyWithImpl<$Res>;
  $Res call({String url});
}

/// @nodoc
class __$FetchProductCategoriesCopyWithImpl<$Res>
    extends _$ProductWatcherEventCopyWithImpl<$Res>
    implements _$FetchProductCategoriesCopyWith<$Res> {
  __$FetchProductCategoriesCopyWithImpl(_FetchProductCategories _value,
      $Res Function(_FetchProductCategories) _then)
      : super(_value, (v) => _then(v as _FetchProductCategories));

  @override
  _FetchProductCategories get _value => super._value as _FetchProductCategories;

  @override
  $Res call({
    Object? url = freezed,
  }) {
    return _then(_FetchProductCategories(
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_FetchProductCategories implements _FetchProductCategories {
  const _$_FetchProductCategories({required this.url});

  @override
  final String url;

  @override
  String toString() {
    return 'ProductWatcherEvent.fetchProductCategories(url: $url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _FetchProductCategories &&
            const DeepCollectionEquality().equals(other.url, url));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(url));

  @JsonKey(ignore: true)
  @override
  _$FetchProductCategoriesCopyWith<_FetchProductCategories> get copyWith =>
      __$FetchProductCategoriesCopyWithImpl<_FetchProductCategories>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String url) fetchProductCategories,
    required TResult Function() computeAmount,
    required TResult Function(CategoryItemsEntity selectedItem) addItems,
    required TResult Function(int productId) increment,
    required TResult Function(int productId) decrement,
    required TResult Function(int productId) removeItem,
    required TResult Function(int page) changePage,
    required TResult Function(String searchKey) searchKey,
    required TResult Function() resetData,
  }) {
    return fetchProductCategories(url);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String url)? fetchProductCategories,
    TResult Function()? computeAmount,
    TResult Function(CategoryItemsEntity selectedItem)? addItems,
    TResult Function(int productId)? increment,
    TResult Function(int productId)? decrement,
    TResult Function(int productId)? removeItem,
    TResult Function(int page)? changePage,
    TResult Function(String searchKey)? searchKey,
    TResult Function()? resetData,
  }) {
    return fetchProductCategories?.call(url);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String url)? fetchProductCategories,
    TResult Function()? computeAmount,
    TResult Function(CategoryItemsEntity selectedItem)? addItems,
    TResult Function(int productId)? increment,
    TResult Function(int productId)? decrement,
    TResult Function(int productId)? removeItem,
    TResult Function(int page)? changePage,
    TResult Function(String searchKey)? searchKey,
    TResult Function()? resetData,
    required TResult orElse(),
  }) {
    if (fetchProductCategories != null) {
      return fetchProductCategories(url);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchProductCategories value)
        fetchProductCategories,
    required TResult Function(_UpdateSelectedItems value) computeAmount,
    required TResult Function(_AddItems value) addItems,
    required TResult Function(_Increment value) increment,
    required TResult Function(_Decrement value) decrement,
    required TResult Function(_RemoveItem value) removeItem,
    required TResult Function(_ChangePage value) changePage,
    required TResult Function(_SearchKey value) searchKey,
    required TResult Function(_ResetData value) resetData,
  }) {
    return fetchProductCategories(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_FetchProductCategories value)? fetchProductCategories,
    TResult Function(_UpdateSelectedItems value)? computeAmount,
    TResult Function(_AddItems value)? addItems,
    TResult Function(_Increment value)? increment,
    TResult Function(_Decrement value)? decrement,
    TResult Function(_RemoveItem value)? removeItem,
    TResult Function(_ChangePage value)? changePage,
    TResult Function(_SearchKey value)? searchKey,
    TResult Function(_ResetData value)? resetData,
  }) {
    return fetchProductCategories?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchProductCategories value)? fetchProductCategories,
    TResult Function(_UpdateSelectedItems value)? computeAmount,
    TResult Function(_AddItems value)? addItems,
    TResult Function(_Increment value)? increment,
    TResult Function(_Decrement value)? decrement,
    TResult Function(_RemoveItem value)? removeItem,
    TResult Function(_ChangePage value)? changePage,
    TResult Function(_SearchKey value)? searchKey,
    TResult Function(_ResetData value)? resetData,
    required TResult orElse(),
  }) {
    if (fetchProductCategories != null) {
      return fetchProductCategories(this);
    }
    return orElse();
  }
}

abstract class _FetchProductCategories implements ProductWatcherEvent {
  const factory _FetchProductCategories({required String url}) =
      _$_FetchProductCategories;

  String get url;
  @JsonKey(ignore: true)
  _$FetchProductCategoriesCopyWith<_FetchProductCategories> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$UpdateSelectedItemsCopyWith<$Res> {
  factory _$UpdateSelectedItemsCopyWith(_UpdateSelectedItems value,
          $Res Function(_UpdateSelectedItems) then) =
      __$UpdateSelectedItemsCopyWithImpl<$Res>;
}

/// @nodoc
class __$UpdateSelectedItemsCopyWithImpl<$Res>
    extends _$ProductWatcherEventCopyWithImpl<$Res>
    implements _$UpdateSelectedItemsCopyWith<$Res> {
  __$UpdateSelectedItemsCopyWithImpl(
      _UpdateSelectedItems _value, $Res Function(_UpdateSelectedItems) _then)
      : super(_value, (v) => _then(v as _UpdateSelectedItems));

  @override
  _UpdateSelectedItems get _value => super._value as _UpdateSelectedItems;
}

/// @nodoc

class _$_UpdateSelectedItems implements _UpdateSelectedItems {
  const _$_UpdateSelectedItems();

  @override
  String toString() {
    return 'ProductWatcherEvent.computeAmount()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _UpdateSelectedItems);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String url) fetchProductCategories,
    required TResult Function() computeAmount,
    required TResult Function(CategoryItemsEntity selectedItem) addItems,
    required TResult Function(int productId) increment,
    required TResult Function(int productId) decrement,
    required TResult Function(int productId) removeItem,
    required TResult Function(int page) changePage,
    required TResult Function(String searchKey) searchKey,
    required TResult Function() resetData,
  }) {
    return computeAmount();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String url)? fetchProductCategories,
    TResult Function()? computeAmount,
    TResult Function(CategoryItemsEntity selectedItem)? addItems,
    TResult Function(int productId)? increment,
    TResult Function(int productId)? decrement,
    TResult Function(int productId)? removeItem,
    TResult Function(int page)? changePage,
    TResult Function(String searchKey)? searchKey,
    TResult Function()? resetData,
  }) {
    return computeAmount?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String url)? fetchProductCategories,
    TResult Function()? computeAmount,
    TResult Function(CategoryItemsEntity selectedItem)? addItems,
    TResult Function(int productId)? increment,
    TResult Function(int productId)? decrement,
    TResult Function(int productId)? removeItem,
    TResult Function(int page)? changePage,
    TResult Function(String searchKey)? searchKey,
    TResult Function()? resetData,
    required TResult orElse(),
  }) {
    if (computeAmount != null) {
      return computeAmount();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchProductCategories value)
        fetchProductCategories,
    required TResult Function(_UpdateSelectedItems value) computeAmount,
    required TResult Function(_AddItems value) addItems,
    required TResult Function(_Increment value) increment,
    required TResult Function(_Decrement value) decrement,
    required TResult Function(_RemoveItem value) removeItem,
    required TResult Function(_ChangePage value) changePage,
    required TResult Function(_SearchKey value) searchKey,
    required TResult Function(_ResetData value) resetData,
  }) {
    return computeAmount(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_FetchProductCategories value)? fetchProductCategories,
    TResult Function(_UpdateSelectedItems value)? computeAmount,
    TResult Function(_AddItems value)? addItems,
    TResult Function(_Increment value)? increment,
    TResult Function(_Decrement value)? decrement,
    TResult Function(_RemoveItem value)? removeItem,
    TResult Function(_ChangePage value)? changePage,
    TResult Function(_SearchKey value)? searchKey,
    TResult Function(_ResetData value)? resetData,
  }) {
    return computeAmount?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchProductCategories value)? fetchProductCategories,
    TResult Function(_UpdateSelectedItems value)? computeAmount,
    TResult Function(_AddItems value)? addItems,
    TResult Function(_Increment value)? increment,
    TResult Function(_Decrement value)? decrement,
    TResult Function(_RemoveItem value)? removeItem,
    TResult Function(_ChangePage value)? changePage,
    TResult Function(_SearchKey value)? searchKey,
    TResult Function(_ResetData value)? resetData,
    required TResult orElse(),
  }) {
    if (computeAmount != null) {
      return computeAmount(this);
    }
    return orElse();
  }
}

abstract class _UpdateSelectedItems implements ProductWatcherEvent {
  const factory _UpdateSelectedItems() = _$_UpdateSelectedItems;
}

/// @nodoc
abstract class _$AddItemsCopyWith<$Res> {
  factory _$AddItemsCopyWith(_AddItems value, $Res Function(_AddItems) then) =
      __$AddItemsCopyWithImpl<$Res>;
  $Res call({CategoryItemsEntity selectedItem});

  $CategoryItemsEntityCopyWith<$Res> get selectedItem;
}

/// @nodoc
class __$AddItemsCopyWithImpl<$Res>
    extends _$ProductWatcherEventCopyWithImpl<$Res>
    implements _$AddItemsCopyWith<$Res> {
  __$AddItemsCopyWithImpl(_AddItems _value, $Res Function(_AddItems) _then)
      : super(_value, (v) => _then(v as _AddItems));

  @override
  _AddItems get _value => super._value as _AddItems;

  @override
  $Res call({
    Object? selectedItem = freezed,
  }) {
    return _then(_AddItems(
      selectedItem: selectedItem == freezed
          ? _value.selectedItem
          : selectedItem // ignore: cast_nullable_to_non_nullable
              as CategoryItemsEntity,
    ));
  }

  @override
  $CategoryItemsEntityCopyWith<$Res> get selectedItem {
    return $CategoryItemsEntityCopyWith<$Res>(_value.selectedItem, (value) {
      return _then(_value.copyWith(selectedItem: value));
    });
  }
}

/// @nodoc

class _$_AddItems implements _AddItems {
  const _$_AddItems({required this.selectedItem});

  @override
  final CategoryItemsEntity selectedItem;

  @override
  String toString() {
    return 'ProductWatcherEvent.addItems(selectedItem: $selectedItem)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AddItems &&
            const DeepCollectionEquality()
                .equals(other.selectedItem, selectedItem));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(selectedItem));

  @JsonKey(ignore: true)
  @override
  _$AddItemsCopyWith<_AddItems> get copyWith =>
      __$AddItemsCopyWithImpl<_AddItems>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String url) fetchProductCategories,
    required TResult Function() computeAmount,
    required TResult Function(CategoryItemsEntity selectedItem) addItems,
    required TResult Function(int productId) increment,
    required TResult Function(int productId) decrement,
    required TResult Function(int productId) removeItem,
    required TResult Function(int page) changePage,
    required TResult Function(String searchKey) searchKey,
    required TResult Function() resetData,
  }) {
    return addItems(selectedItem);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String url)? fetchProductCategories,
    TResult Function()? computeAmount,
    TResult Function(CategoryItemsEntity selectedItem)? addItems,
    TResult Function(int productId)? increment,
    TResult Function(int productId)? decrement,
    TResult Function(int productId)? removeItem,
    TResult Function(int page)? changePage,
    TResult Function(String searchKey)? searchKey,
    TResult Function()? resetData,
  }) {
    return addItems?.call(selectedItem);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String url)? fetchProductCategories,
    TResult Function()? computeAmount,
    TResult Function(CategoryItemsEntity selectedItem)? addItems,
    TResult Function(int productId)? increment,
    TResult Function(int productId)? decrement,
    TResult Function(int productId)? removeItem,
    TResult Function(int page)? changePage,
    TResult Function(String searchKey)? searchKey,
    TResult Function()? resetData,
    required TResult orElse(),
  }) {
    if (addItems != null) {
      return addItems(selectedItem);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchProductCategories value)
        fetchProductCategories,
    required TResult Function(_UpdateSelectedItems value) computeAmount,
    required TResult Function(_AddItems value) addItems,
    required TResult Function(_Increment value) increment,
    required TResult Function(_Decrement value) decrement,
    required TResult Function(_RemoveItem value) removeItem,
    required TResult Function(_ChangePage value) changePage,
    required TResult Function(_SearchKey value) searchKey,
    required TResult Function(_ResetData value) resetData,
  }) {
    return addItems(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_FetchProductCategories value)? fetchProductCategories,
    TResult Function(_UpdateSelectedItems value)? computeAmount,
    TResult Function(_AddItems value)? addItems,
    TResult Function(_Increment value)? increment,
    TResult Function(_Decrement value)? decrement,
    TResult Function(_RemoveItem value)? removeItem,
    TResult Function(_ChangePage value)? changePage,
    TResult Function(_SearchKey value)? searchKey,
    TResult Function(_ResetData value)? resetData,
  }) {
    return addItems?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchProductCategories value)? fetchProductCategories,
    TResult Function(_UpdateSelectedItems value)? computeAmount,
    TResult Function(_AddItems value)? addItems,
    TResult Function(_Increment value)? increment,
    TResult Function(_Decrement value)? decrement,
    TResult Function(_RemoveItem value)? removeItem,
    TResult Function(_ChangePage value)? changePage,
    TResult Function(_SearchKey value)? searchKey,
    TResult Function(_ResetData value)? resetData,
    required TResult orElse(),
  }) {
    if (addItems != null) {
      return addItems(this);
    }
    return orElse();
  }
}

abstract class _AddItems implements ProductWatcherEvent {
  const factory _AddItems({required CategoryItemsEntity selectedItem}) =
      _$_AddItems;

  CategoryItemsEntity get selectedItem;
  @JsonKey(ignore: true)
  _$AddItemsCopyWith<_AddItems> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$IncrementCopyWith<$Res> {
  factory _$IncrementCopyWith(
          _Increment value, $Res Function(_Increment) then) =
      __$IncrementCopyWithImpl<$Res>;
  $Res call({int productId});
}

/// @nodoc
class __$IncrementCopyWithImpl<$Res>
    extends _$ProductWatcherEventCopyWithImpl<$Res>
    implements _$IncrementCopyWith<$Res> {
  __$IncrementCopyWithImpl(_Increment _value, $Res Function(_Increment) _then)
      : super(_value, (v) => _then(v as _Increment));

  @override
  _Increment get _value => super._value as _Increment;

  @override
  $Res call({
    Object? productId = freezed,
  }) {
    return _then(_Increment(
      productId: productId == freezed
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_Increment implements _Increment {
  const _$_Increment({required this.productId});

  @override
  final int productId;

  @override
  String toString() {
    return 'ProductWatcherEvent.increment(productId: $productId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Increment &&
            const DeepCollectionEquality().equals(other.productId, productId));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(productId));

  @JsonKey(ignore: true)
  @override
  _$IncrementCopyWith<_Increment> get copyWith =>
      __$IncrementCopyWithImpl<_Increment>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String url) fetchProductCategories,
    required TResult Function() computeAmount,
    required TResult Function(CategoryItemsEntity selectedItem) addItems,
    required TResult Function(int productId) increment,
    required TResult Function(int productId) decrement,
    required TResult Function(int productId) removeItem,
    required TResult Function(int page) changePage,
    required TResult Function(String searchKey) searchKey,
    required TResult Function() resetData,
  }) {
    return increment(productId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String url)? fetchProductCategories,
    TResult Function()? computeAmount,
    TResult Function(CategoryItemsEntity selectedItem)? addItems,
    TResult Function(int productId)? increment,
    TResult Function(int productId)? decrement,
    TResult Function(int productId)? removeItem,
    TResult Function(int page)? changePage,
    TResult Function(String searchKey)? searchKey,
    TResult Function()? resetData,
  }) {
    return increment?.call(productId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String url)? fetchProductCategories,
    TResult Function()? computeAmount,
    TResult Function(CategoryItemsEntity selectedItem)? addItems,
    TResult Function(int productId)? increment,
    TResult Function(int productId)? decrement,
    TResult Function(int productId)? removeItem,
    TResult Function(int page)? changePage,
    TResult Function(String searchKey)? searchKey,
    TResult Function()? resetData,
    required TResult orElse(),
  }) {
    if (increment != null) {
      return increment(productId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchProductCategories value)
        fetchProductCategories,
    required TResult Function(_UpdateSelectedItems value) computeAmount,
    required TResult Function(_AddItems value) addItems,
    required TResult Function(_Increment value) increment,
    required TResult Function(_Decrement value) decrement,
    required TResult Function(_RemoveItem value) removeItem,
    required TResult Function(_ChangePage value) changePage,
    required TResult Function(_SearchKey value) searchKey,
    required TResult Function(_ResetData value) resetData,
  }) {
    return increment(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_FetchProductCategories value)? fetchProductCategories,
    TResult Function(_UpdateSelectedItems value)? computeAmount,
    TResult Function(_AddItems value)? addItems,
    TResult Function(_Increment value)? increment,
    TResult Function(_Decrement value)? decrement,
    TResult Function(_RemoveItem value)? removeItem,
    TResult Function(_ChangePage value)? changePage,
    TResult Function(_SearchKey value)? searchKey,
    TResult Function(_ResetData value)? resetData,
  }) {
    return increment?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchProductCategories value)? fetchProductCategories,
    TResult Function(_UpdateSelectedItems value)? computeAmount,
    TResult Function(_AddItems value)? addItems,
    TResult Function(_Increment value)? increment,
    TResult Function(_Decrement value)? decrement,
    TResult Function(_RemoveItem value)? removeItem,
    TResult Function(_ChangePage value)? changePage,
    TResult Function(_SearchKey value)? searchKey,
    TResult Function(_ResetData value)? resetData,
    required TResult orElse(),
  }) {
    if (increment != null) {
      return increment(this);
    }
    return orElse();
  }
}

abstract class _Increment implements ProductWatcherEvent {
  const factory _Increment({required int productId}) = _$_Increment;

  int get productId;
  @JsonKey(ignore: true)
  _$IncrementCopyWith<_Increment> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$DecrementCopyWith<$Res> {
  factory _$DecrementCopyWith(
          _Decrement value, $Res Function(_Decrement) then) =
      __$DecrementCopyWithImpl<$Res>;
  $Res call({int productId});
}

/// @nodoc
class __$DecrementCopyWithImpl<$Res>
    extends _$ProductWatcherEventCopyWithImpl<$Res>
    implements _$DecrementCopyWith<$Res> {
  __$DecrementCopyWithImpl(_Decrement _value, $Res Function(_Decrement) _then)
      : super(_value, (v) => _then(v as _Decrement));

  @override
  _Decrement get _value => super._value as _Decrement;

  @override
  $Res call({
    Object? productId = freezed,
  }) {
    return _then(_Decrement(
      productId: productId == freezed
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_Decrement implements _Decrement {
  const _$_Decrement({required this.productId});

  @override
  final int productId;

  @override
  String toString() {
    return 'ProductWatcherEvent.decrement(productId: $productId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Decrement &&
            const DeepCollectionEquality().equals(other.productId, productId));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(productId));

  @JsonKey(ignore: true)
  @override
  _$DecrementCopyWith<_Decrement> get copyWith =>
      __$DecrementCopyWithImpl<_Decrement>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String url) fetchProductCategories,
    required TResult Function() computeAmount,
    required TResult Function(CategoryItemsEntity selectedItem) addItems,
    required TResult Function(int productId) increment,
    required TResult Function(int productId) decrement,
    required TResult Function(int productId) removeItem,
    required TResult Function(int page) changePage,
    required TResult Function(String searchKey) searchKey,
    required TResult Function() resetData,
  }) {
    return decrement(productId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String url)? fetchProductCategories,
    TResult Function()? computeAmount,
    TResult Function(CategoryItemsEntity selectedItem)? addItems,
    TResult Function(int productId)? increment,
    TResult Function(int productId)? decrement,
    TResult Function(int productId)? removeItem,
    TResult Function(int page)? changePage,
    TResult Function(String searchKey)? searchKey,
    TResult Function()? resetData,
  }) {
    return decrement?.call(productId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String url)? fetchProductCategories,
    TResult Function()? computeAmount,
    TResult Function(CategoryItemsEntity selectedItem)? addItems,
    TResult Function(int productId)? increment,
    TResult Function(int productId)? decrement,
    TResult Function(int productId)? removeItem,
    TResult Function(int page)? changePage,
    TResult Function(String searchKey)? searchKey,
    TResult Function()? resetData,
    required TResult orElse(),
  }) {
    if (decrement != null) {
      return decrement(productId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchProductCategories value)
        fetchProductCategories,
    required TResult Function(_UpdateSelectedItems value) computeAmount,
    required TResult Function(_AddItems value) addItems,
    required TResult Function(_Increment value) increment,
    required TResult Function(_Decrement value) decrement,
    required TResult Function(_RemoveItem value) removeItem,
    required TResult Function(_ChangePage value) changePage,
    required TResult Function(_SearchKey value) searchKey,
    required TResult Function(_ResetData value) resetData,
  }) {
    return decrement(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_FetchProductCategories value)? fetchProductCategories,
    TResult Function(_UpdateSelectedItems value)? computeAmount,
    TResult Function(_AddItems value)? addItems,
    TResult Function(_Increment value)? increment,
    TResult Function(_Decrement value)? decrement,
    TResult Function(_RemoveItem value)? removeItem,
    TResult Function(_ChangePage value)? changePage,
    TResult Function(_SearchKey value)? searchKey,
    TResult Function(_ResetData value)? resetData,
  }) {
    return decrement?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchProductCategories value)? fetchProductCategories,
    TResult Function(_UpdateSelectedItems value)? computeAmount,
    TResult Function(_AddItems value)? addItems,
    TResult Function(_Increment value)? increment,
    TResult Function(_Decrement value)? decrement,
    TResult Function(_RemoveItem value)? removeItem,
    TResult Function(_ChangePage value)? changePage,
    TResult Function(_SearchKey value)? searchKey,
    TResult Function(_ResetData value)? resetData,
    required TResult orElse(),
  }) {
    if (decrement != null) {
      return decrement(this);
    }
    return orElse();
  }
}

abstract class _Decrement implements ProductWatcherEvent {
  const factory _Decrement({required int productId}) = _$_Decrement;

  int get productId;
  @JsonKey(ignore: true)
  _$DecrementCopyWith<_Decrement> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$RemoveItemCopyWith<$Res> {
  factory _$RemoveItemCopyWith(
          _RemoveItem value, $Res Function(_RemoveItem) then) =
      __$RemoveItemCopyWithImpl<$Res>;
  $Res call({int productId});
}

/// @nodoc
class __$RemoveItemCopyWithImpl<$Res>
    extends _$ProductWatcherEventCopyWithImpl<$Res>
    implements _$RemoveItemCopyWith<$Res> {
  __$RemoveItemCopyWithImpl(
      _RemoveItem _value, $Res Function(_RemoveItem) _then)
      : super(_value, (v) => _then(v as _RemoveItem));

  @override
  _RemoveItem get _value => super._value as _RemoveItem;

  @override
  $Res call({
    Object? productId = freezed,
  }) {
    return _then(_RemoveItem(
      productId: productId == freezed
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_RemoveItem implements _RemoveItem {
  const _$_RemoveItem({required this.productId});

  @override
  final int productId;

  @override
  String toString() {
    return 'ProductWatcherEvent.removeItem(productId: $productId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RemoveItem &&
            const DeepCollectionEquality().equals(other.productId, productId));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(productId));

  @JsonKey(ignore: true)
  @override
  _$RemoveItemCopyWith<_RemoveItem> get copyWith =>
      __$RemoveItemCopyWithImpl<_RemoveItem>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String url) fetchProductCategories,
    required TResult Function() computeAmount,
    required TResult Function(CategoryItemsEntity selectedItem) addItems,
    required TResult Function(int productId) increment,
    required TResult Function(int productId) decrement,
    required TResult Function(int productId) removeItem,
    required TResult Function(int page) changePage,
    required TResult Function(String searchKey) searchKey,
    required TResult Function() resetData,
  }) {
    return removeItem(productId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String url)? fetchProductCategories,
    TResult Function()? computeAmount,
    TResult Function(CategoryItemsEntity selectedItem)? addItems,
    TResult Function(int productId)? increment,
    TResult Function(int productId)? decrement,
    TResult Function(int productId)? removeItem,
    TResult Function(int page)? changePage,
    TResult Function(String searchKey)? searchKey,
    TResult Function()? resetData,
  }) {
    return removeItem?.call(productId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String url)? fetchProductCategories,
    TResult Function()? computeAmount,
    TResult Function(CategoryItemsEntity selectedItem)? addItems,
    TResult Function(int productId)? increment,
    TResult Function(int productId)? decrement,
    TResult Function(int productId)? removeItem,
    TResult Function(int page)? changePage,
    TResult Function(String searchKey)? searchKey,
    TResult Function()? resetData,
    required TResult orElse(),
  }) {
    if (removeItem != null) {
      return removeItem(productId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchProductCategories value)
        fetchProductCategories,
    required TResult Function(_UpdateSelectedItems value) computeAmount,
    required TResult Function(_AddItems value) addItems,
    required TResult Function(_Increment value) increment,
    required TResult Function(_Decrement value) decrement,
    required TResult Function(_RemoveItem value) removeItem,
    required TResult Function(_ChangePage value) changePage,
    required TResult Function(_SearchKey value) searchKey,
    required TResult Function(_ResetData value) resetData,
  }) {
    return removeItem(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_FetchProductCategories value)? fetchProductCategories,
    TResult Function(_UpdateSelectedItems value)? computeAmount,
    TResult Function(_AddItems value)? addItems,
    TResult Function(_Increment value)? increment,
    TResult Function(_Decrement value)? decrement,
    TResult Function(_RemoveItem value)? removeItem,
    TResult Function(_ChangePage value)? changePage,
    TResult Function(_SearchKey value)? searchKey,
    TResult Function(_ResetData value)? resetData,
  }) {
    return removeItem?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchProductCategories value)? fetchProductCategories,
    TResult Function(_UpdateSelectedItems value)? computeAmount,
    TResult Function(_AddItems value)? addItems,
    TResult Function(_Increment value)? increment,
    TResult Function(_Decrement value)? decrement,
    TResult Function(_RemoveItem value)? removeItem,
    TResult Function(_ChangePage value)? changePage,
    TResult Function(_SearchKey value)? searchKey,
    TResult Function(_ResetData value)? resetData,
    required TResult orElse(),
  }) {
    if (removeItem != null) {
      return removeItem(this);
    }
    return orElse();
  }
}

abstract class _RemoveItem implements ProductWatcherEvent {
  const factory _RemoveItem({required int productId}) = _$_RemoveItem;

  int get productId;
  @JsonKey(ignore: true)
  _$RemoveItemCopyWith<_RemoveItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ChangePageCopyWith<$Res> {
  factory _$ChangePageCopyWith(
          _ChangePage value, $Res Function(_ChangePage) then) =
      __$ChangePageCopyWithImpl<$Res>;
  $Res call({int page});
}

/// @nodoc
class __$ChangePageCopyWithImpl<$Res>
    extends _$ProductWatcherEventCopyWithImpl<$Res>
    implements _$ChangePageCopyWith<$Res> {
  __$ChangePageCopyWithImpl(
      _ChangePage _value, $Res Function(_ChangePage) _then)
      : super(_value, (v) => _then(v as _ChangePage));

  @override
  _ChangePage get _value => super._value as _ChangePage;

  @override
  $Res call({
    Object? page = freezed,
  }) {
    return _then(_ChangePage(
      page: page == freezed
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_ChangePage implements _ChangePage {
  const _$_ChangePage({required this.page});

  @override
  final int page;

  @override
  String toString() {
    return 'ProductWatcherEvent.changePage(page: $page)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ChangePage &&
            const DeepCollectionEquality().equals(other.page, page));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(page));

  @JsonKey(ignore: true)
  @override
  _$ChangePageCopyWith<_ChangePage> get copyWith =>
      __$ChangePageCopyWithImpl<_ChangePage>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String url) fetchProductCategories,
    required TResult Function() computeAmount,
    required TResult Function(CategoryItemsEntity selectedItem) addItems,
    required TResult Function(int productId) increment,
    required TResult Function(int productId) decrement,
    required TResult Function(int productId) removeItem,
    required TResult Function(int page) changePage,
    required TResult Function(String searchKey) searchKey,
    required TResult Function() resetData,
  }) {
    return changePage(page);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String url)? fetchProductCategories,
    TResult Function()? computeAmount,
    TResult Function(CategoryItemsEntity selectedItem)? addItems,
    TResult Function(int productId)? increment,
    TResult Function(int productId)? decrement,
    TResult Function(int productId)? removeItem,
    TResult Function(int page)? changePage,
    TResult Function(String searchKey)? searchKey,
    TResult Function()? resetData,
  }) {
    return changePage?.call(page);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String url)? fetchProductCategories,
    TResult Function()? computeAmount,
    TResult Function(CategoryItemsEntity selectedItem)? addItems,
    TResult Function(int productId)? increment,
    TResult Function(int productId)? decrement,
    TResult Function(int productId)? removeItem,
    TResult Function(int page)? changePage,
    TResult Function(String searchKey)? searchKey,
    TResult Function()? resetData,
    required TResult orElse(),
  }) {
    if (changePage != null) {
      return changePage(page);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchProductCategories value)
        fetchProductCategories,
    required TResult Function(_UpdateSelectedItems value) computeAmount,
    required TResult Function(_AddItems value) addItems,
    required TResult Function(_Increment value) increment,
    required TResult Function(_Decrement value) decrement,
    required TResult Function(_RemoveItem value) removeItem,
    required TResult Function(_ChangePage value) changePage,
    required TResult Function(_SearchKey value) searchKey,
    required TResult Function(_ResetData value) resetData,
  }) {
    return changePage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_FetchProductCategories value)? fetchProductCategories,
    TResult Function(_UpdateSelectedItems value)? computeAmount,
    TResult Function(_AddItems value)? addItems,
    TResult Function(_Increment value)? increment,
    TResult Function(_Decrement value)? decrement,
    TResult Function(_RemoveItem value)? removeItem,
    TResult Function(_ChangePage value)? changePage,
    TResult Function(_SearchKey value)? searchKey,
    TResult Function(_ResetData value)? resetData,
  }) {
    return changePage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchProductCategories value)? fetchProductCategories,
    TResult Function(_UpdateSelectedItems value)? computeAmount,
    TResult Function(_AddItems value)? addItems,
    TResult Function(_Increment value)? increment,
    TResult Function(_Decrement value)? decrement,
    TResult Function(_RemoveItem value)? removeItem,
    TResult Function(_ChangePage value)? changePage,
    TResult Function(_SearchKey value)? searchKey,
    TResult Function(_ResetData value)? resetData,
    required TResult orElse(),
  }) {
    if (changePage != null) {
      return changePage(this);
    }
    return orElse();
  }
}

abstract class _ChangePage implements ProductWatcherEvent {
  const factory _ChangePage({required int page}) = _$_ChangePage;

  int get page;
  @JsonKey(ignore: true)
  _$ChangePageCopyWith<_ChangePage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$SearchKeyCopyWith<$Res> {
  factory _$SearchKeyCopyWith(
          _SearchKey value, $Res Function(_SearchKey) then) =
      __$SearchKeyCopyWithImpl<$Res>;
  $Res call({String searchKey});
}

/// @nodoc
class __$SearchKeyCopyWithImpl<$Res>
    extends _$ProductWatcherEventCopyWithImpl<$Res>
    implements _$SearchKeyCopyWith<$Res> {
  __$SearchKeyCopyWithImpl(_SearchKey _value, $Res Function(_SearchKey) _then)
      : super(_value, (v) => _then(v as _SearchKey));

  @override
  _SearchKey get _value => super._value as _SearchKey;

  @override
  $Res call({
    Object? searchKey = freezed,
  }) {
    return _then(_SearchKey(
      searchKey: searchKey == freezed
          ? _value.searchKey
          : searchKey // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_SearchKey implements _SearchKey {
  const _$_SearchKey({required this.searchKey});

  @override
  final String searchKey;

  @override
  String toString() {
    return 'ProductWatcherEvent.searchKey(searchKey: $searchKey)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SearchKey &&
            const DeepCollectionEquality().equals(other.searchKey, searchKey));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(searchKey));

  @JsonKey(ignore: true)
  @override
  _$SearchKeyCopyWith<_SearchKey> get copyWith =>
      __$SearchKeyCopyWithImpl<_SearchKey>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String url) fetchProductCategories,
    required TResult Function() computeAmount,
    required TResult Function(CategoryItemsEntity selectedItem) addItems,
    required TResult Function(int productId) increment,
    required TResult Function(int productId) decrement,
    required TResult Function(int productId) removeItem,
    required TResult Function(int page) changePage,
    required TResult Function(String searchKey) searchKey,
    required TResult Function() resetData,
  }) {
    return searchKey(this.searchKey);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String url)? fetchProductCategories,
    TResult Function()? computeAmount,
    TResult Function(CategoryItemsEntity selectedItem)? addItems,
    TResult Function(int productId)? increment,
    TResult Function(int productId)? decrement,
    TResult Function(int productId)? removeItem,
    TResult Function(int page)? changePage,
    TResult Function(String searchKey)? searchKey,
    TResult Function()? resetData,
  }) {
    return searchKey?.call(this.searchKey);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String url)? fetchProductCategories,
    TResult Function()? computeAmount,
    TResult Function(CategoryItemsEntity selectedItem)? addItems,
    TResult Function(int productId)? increment,
    TResult Function(int productId)? decrement,
    TResult Function(int productId)? removeItem,
    TResult Function(int page)? changePage,
    TResult Function(String searchKey)? searchKey,
    TResult Function()? resetData,
    required TResult orElse(),
  }) {
    if (searchKey != null) {
      return searchKey(this.searchKey);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchProductCategories value)
        fetchProductCategories,
    required TResult Function(_UpdateSelectedItems value) computeAmount,
    required TResult Function(_AddItems value) addItems,
    required TResult Function(_Increment value) increment,
    required TResult Function(_Decrement value) decrement,
    required TResult Function(_RemoveItem value) removeItem,
    required TResult Function(_ChangePage value) changePage,
    required TResult Function(_SearchKey value) searchKey,
    required TResult Function(_ResetData value) resetData,
  }) {
    return searchKey(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_FetchProductCategories value)? fetchProductCategories,
    TResult Function(_UpdateSelectedItems value)? computeAmount,
    TResult Function(_AddItems value)? addItems,
    TResult Function(_Increment value)? increment,
    TResult Function(_Decrement value)? decrement,
    TResult Function(_RemoveItem value)? removeItem,
    TResult Function(_ChangePage value)? changePage,
    TResult Function(_SearchKey value)? searchKey,
    TResult Function(_ResetData value)? resetData,
  }) {
    return searchKey?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchProductCategories value)? fetchProductCategories,
    TResult Function(_UpdateSelectedItems value)? computeAmount,
    TResult Function(_AddItems value)? addItems,
    TResult Function(_Increment value)? increment,
    TResult Function(_Decrement value)? decrement,
    TResult Function(_RemoveItem value)? removeItem,
    TResult Function(_ChangePage value)? changePage,
    TResult Function(_SearchKey value)? searchKey,
    TResult Function(_ResetData value)? resetData,
    required TResult orElse(),
  }) {
    if (searchKey != null) {
      return searchKey(this);
    }
    return orElse();
  }
}

abstract class _SearchKey implements ProductWatcherEvent {
  const factory _SearchKey({required String searchKey}) = _$_SearchKey;

  String get searchKey;
  @JsonKey(ignore: true)
  _$SearchKeyCopyWith<_SearchKey> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ResetDataCopyWith<$Res> {
  factory _$ResetDataCopyWith(
          _ResetData value, $Res Function(_ResetData) then) =
      __$ResetDataCopyWithImpl<$Res>;
}

/// @nodoc
class __$ResetDataCopyWithImpl<$Res>
    extends _$ProductWatcherEventCopyWithImpl<$Res>
    implements _$ResetDataCopyWith<$Res> {
  __$ResetDataCopyWithImpl(_ResetData _value, $Res Function(_ResetData) _then)
      : super(_value, (v) => _then(v as _ResetData));

  @override
  _ResetData get _value => super._value as _ResetData;
}

/// @nodoc

class _$_ResetData implements _ResetData {
  const _$_ResetData();

  @override
  String toString() {
    return 'ProductWatcherEvent.resetData()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _ResetData);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String url) fetchProductCategories,
    required TResult Function() computeAmount,
    required TResult Function(CategoryItemsEntity selectedItem) addItems,
    required TResult Function(int productId) increment,
    required TResult Function(int productId) decrement,
    required TResult Function(int productId) removeItem,
    required TResult Function(int page) changePage,
    required TResult Function(String searchKey) searchKey,
    required TResult Function() resetData,
  }) {
    return resetData();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String url)? fetchProductCategories,
    TResult Function()? computeAmount,
    TResult Function(CategoryItemsEntity selectedItem)? addItems,
    TResult Function(int productId)? increment,
    TResult Function(int productId)? decrement,
    TResult Function(int productId)? removeItem,
    TResult Function(int page)? changePage,
    TResult Function(String searchKey)? searchKey,
    TResult Function()? resetData,
  }) {
    return resetData?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String url)? fetchProductCategories,
    TResult Function()? computeAmount,
    TResult Function(CategoryItemsEntity selectedItem)? addItems,
    TResult Function(int productId)? increment,
    TResult Function(int productId)? decrement,
    TResult Function(int productId)? removeItem,
    TResult Function(int page)? changePage,
    TResult Function(String searchKey)? searchKey,
    TResult Function()? resetData,
    required TResult orElse(),
  }) {
    if (resetData != null) {
      return resetData();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchProductCategories value)
        fetchProductCategories,
    required TResult Function(_UpdateSelectedItems value) computeAmount,
    required TResult Function(_AddItems value) addItems,
    required TResult Function(_Increment value) increment,
    required TResult Function(_Decrement value) decrement,
    required TResult Function(_RemoveItem value) removeItem,
    required TResult Function(_ChangePage value) changePage,
    required TResult Function(_SearchKey value) searchKey,
    required TResult Function(_ResetData value) resetData,
  }) {
    return resetData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_FetchProductCategories value)? fetchProductCategories,
    TResult Function(_UpdateSelectedItems value)? computeAmount,
    TResult Function(_AddItems value)? addItems,
    TResult Function(_Increment value)? increment,
    TResult Function(_Decrement value)? decrement,
    TResult Function(_RemoveItem value)? removeItem,
    TResult Function(_ChangePage value)? changePage,
    TResult Function(_SearchKey value)? searchKey,
    TResult Function(_ResetData value)? resetData,
  }) {
    return resetData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchProductCategories value)? fetchProductCategories,
    TResult Function(_UpdateSelectedItems value)? computeAmount,
    TResult Function(_AddItems value)? addItems,
    TResult Function(_Increment value)? increment,
    TResult Function(_Decrement value)? decrement,
    TResult Function(_RemoveItem value)? removeItem,
    TResult Function(_ChangePage value)? changePage,
    TResult Function(_SearchKey value)? searchKey,
    TResult Function(_ResetData value)? resetData,
    required TResult orElse(),
  }) {
    if (resetData != null) {
      return resetData(this);
    }
    return orElse();
  }
}

abstract class _ResetData implements ProductWatcherEvent {
  const factory _ResetData() = _$_ResetData;
}

/// @nodoc
class _$ProductWatcherStateTearOff {
  const _$ProductWatcherStateTearOff();

  _ProductWatcherState call(
      {required bool isLoading,
      required int selectedPage,
      Either<Failure, List<ProductCategoriesEntity>>? failureOrSuccess,
      Either<Failure, String>? address,
      required List<CategoryItemsEntity> selectedItems,
      required List<Map<String, dynamic>> itemQuantity,
      required double subTotal,
      required double tax,
      required double total,
      required int cartCount,
      String? searchKey}) {
    return _ProductWatcherState(
      isLoading: isLoading,
      selectedPage: selectedPage,
      failureOrSuccess: failureOrSuccess,
      address: address,
      selectedItems: selectedItems,
      itemQuantity: itemQuantity,
      subTotal: subTotal,
      tax: tax,
      total: total,
      cartCount: cartCount,
      searchKey: searchKey,
    );
  }
}

/// @nodoc
const $ProductWatcherState = _$ProductWatcherStateTearOff();

/// @nodoc
mixin _$ProductWatcherState {
  bool get isLoading => throw _privateConstructorUsedError;
  int get selectedPage => throw _privateConstructorUsedError;
  Either<Failure, List<ProductCategoriesEntity>>? get failureOrSuccess =>
      throw _privateConstructorUsedError;
  Either<Failure, String>? get address => throw _privateConstructorUsedError;
  List<CategoryItemsEntity> get selectedItems =>
      throw _privateConstructorUsedError;
  List<Map<String, dynamic>> get itemQuantity =>
      throw _privateConstructorUsedError;
  double get subTotal => throw _privateConstructorUsedError;
  double get tax => throw _privateConstructorUsedError;
  double get total => throw _privateConstructorUsedError;
  int get cartCount => throw _privateConstructorUsedError;
  String? get searchKey => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProductWatcherStateCopyWith<ProductWatcherState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductWatcherStateCopyWith<$Res> {
  factory $ProductWatcherStateCopyWith(
          ProductWatcherState value, $Res Function(ProductWatcherState) then) =
      _$ProductWatcherStateCopyWithImpl<$Res>;
  $Res call(
      {bool isLoading,
      int selectedPage,
      Either<Failure, List<ProductCategoriesEntity>>? failureOrSuccess,
      Either<Failure, String>? address,
      List<CategoryItemsEntity> selectedItems,
      List<Map<String, dynamic>> itemQuantity,
      double subTotal,
      double tax,
      double total,
      int cartCount,
      String? searchKey});
}

/// @nodoc
class _$ProductWatcherStateCopyWithImpl<$Res>
    implements $ProductWatcherStateCopyWith<$Res> {
  _$ProductWatcherStateCopyWithImpl(this._value, this._then);

  final ProductWatcherState _value;
  // ignore: unused_field
  final $Res Function(ProductWatcherState) _then;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? selectedPage = freezed,
    Object? failureOrSuccess = freezed,
    Object? address = freezed,
    Object? selectedItems = freezed,
    Object? itemQuantity = freezed,
    Object? subTotal = freezed,
    Object? tax = freezed,
    Object? total = freezed,
    Object? cartCount = freezed,
    Object? searchKey = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      selectedPage: selectedPage == freezed
          ? _value.selectedPage
          : selectedPage // ignore: cast_nullable_to_non_nullable
              as int,
      failureOrSuccess: failureOrSuccess == freezed
          ? _value.failureOrSuccess
          : failureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Either<Failure, List<ProductCategoriesEntity>>?,
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as Either<Failure, String>?,
      selectedItems: selectedItems == freezed
          ? _value.selectedItems
          : selectedItems // ignore: cast_nullable_to_non_nullable
              as List<CategoryItemsEntity>,
      itemQuantity: itemQuantity == freezed
          ? _value.itemQuantity
          : itemQuantity // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>,
      subTotal: subTotal == freezed
          ? _value.subTotal
          : subTotal // ignore: cast_nullable_to_non_nullable
              as double,
      tax: tax == freezed
          ? _value.tax
          : tax // ignore: cast_nullable_to_non_nullable
              as double,
      total: total == freezed
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as double,
      cartCount: cartCount == freezed
          ? _value.cartCount
          : cartCount // ignore: cast_nullable_to_non_nullable
              as int,
      searchKey: searchKey == freezed
          ? _value.searchKey
          : searchKey // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$ProductWatcherStateCopyWith<$Res>
    implements $ProductWatcherStateCopyWith<$Res> {
  factory _$ProductWatcherStateCopyWith(_ProductWatcherState value,
          $Res Function(_ProductWatcherState) then) =
      __$ProductWatcherStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isLoading,
      int selectedPage,
      Either<Failure, List<ProductCategoriesEntity>>? failureOrSuccess,
      Either<Failure, String>? address,
      List<CategoryItemsEntity> selectedItems,
      List<Map<String, dynamic>> itemQuantity,
      double subTotal,
      double tax,
      double total,
      int cartCount,
      String? searchKey});
}

/// @nodoc
class __$ProductWatcherStateCopyWithImpl<$Res>
    extends _$ProductWatcherStateCopyWithImpl<$Res>
    implements _$ProductWatcherStateCopyWith<$Res> {
  __$ProductWatcherStateCopyWithImpl(
      _ProductWatcherState _value, $Res Function(_ProductWatcherState) _then)
      : super(_value, (v) => _then(v as _ProductWatcherState));

  @override
  _ProductWatcherState get _value => super._value as _ProductWatcherState;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? selectedPage = freezed,
    Object? failureOrSuccess = freezed,
    Object? address = freezed,
    Object? selectedItems = freezed,
    Object? itemQuantity = freezed,
    Object? subTotal = freezed,
    Object? tax = freezed,
    Object? total = freezed,
    Object? cartCount = freezed,
    Object? searchKey = freezed,
  }) {
    return _then(_ProductWatcherState(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      selectedPage: selectedPage == freezed
          ? _value.selectedPage
          : selectedPage // ignore: cast_nullable_to_non_nullable
              as int,
      failureOrSuccess: failureOrSuccess == freezed
          ? _value.failureOrSuccess
          : failureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Either<Failure, List<ProductCategoriesEntity>>?,
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as Either<Failure, String>?,
      selectedItems: selectedItems == freezed
          ? _value.selectedItems
          : selectedItems // ignore: cast_nullable_to_non_nullable
              as List<CategoryItemsEntity>,
      itemQuantity: itemQuantity == freezed
          ? _value.itemQuantity
          : itemQuantity // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>,
      subTotal: subTotal == freezed
          ? _value.subTotal
          : subTotal // ignore: cast_nullable_to_non_nullable
              as double,
      tax: tax == freezed
          ? _value.tax
          : tax // ignore: cast_nullable_to_non_nullable
              as double,
      total: total == freezed
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as double,
      cartCount: cartCount == freezed
          ? _value.cartCount
          : cartCount // ignore: cast_nullable_to_non_nullable
              as int,
      searchKey: searchKey == freezed
          ? _value.searchKey
          : searchKey // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_ProductWatcherState implements _ProductWatcherState {
  const _$_ProductWatcherState(
      {required this.isLoading,
      required this.selectedPage,
      this.failureOrSuccess,
      this.address,
      required this.selectedItems,
      required this.itemQuantity,
      required this.subTotal,
      required this.tax,
      required this.total,
      required this.cartCount,
      this.searchKey});

  @override
  final bool isLoading;
  @override
  final int selectedPage;
  @override
  final Either<Failure, List<ProductCategoriesEntity>>? failureOrSuccess;
  @override
  final Either<Failure, String>? address;
  @override
  final List<CategoryItemsEntity> selectedItems;
  @override
  final List<Map<String, dynamic>> itemQuantity;
  @override
  final double subTotal;
  @override
  final double tax;
  @override
  final double total;
  @override
  final int cartCount;
  @override
  final String? searchKey;

  @override
  String toString() {
    return 'ProductWatcherState(isLoading: $isLoading, selectedPage: $selectedPage, failureOrSuccess: $failureOrSuccess, address: $address, selectedItems: $selectedItems, itemQuantity: $itemQuantity, subTotal: $subTotal, tax: $tax, total: $total, cartCount: $cartCount, searchKey: $searchKey)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ProductWatcherState &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality()
                .equals(other.selectedPage, selectedPage) &&
            const DeepCollectionEquality()
                .equals(other.failureOrSuccess, failureOrSuccess) &&
            const DeepCollectionEquality().equals(other.address, address) &&
            const DeepCollectionEquality()
                .equals(other.selectedItems, selectedItems) &&
            const DeepCollectionEquality()
                .equals(other.itemQuantity, itemQuantity) &&
            const DeepCollectionEquality().equals(other.subTotal, subTotal) &&
            const DeepCollectionEquality().equals(other.tax, tax) &&
            const DeepCollectionEquality().equals(other.total, total) &&
            const DeepCollectionEquality().equals(other.cartCount, cartCount) &&
            const DeepCollectionEquality().equals(other.searchKey, searchKey));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(selectedPage),
      const DeepCollectionEquality().hash(failureOrSuccess),
      const DeepCollectionEquality().hash(address),
      const DeepCollectionEquality().hash(selectedItems),
      const DeepCollectionEquality().hash(itemQuantity),
      const DeepCollectionEquality().hash(subTotal),
      const DeepCollectionEquality().hash(tax),
      const DeepCollectionEquality().hash(total),
      const DeepCollectionEquality().hash(cartCount),
      const DeepCollectionEquality().hash(searchKey));

  @JsonKey(ignore: true)
  @override
  _$ProductWatcherStateCopyWith<_ProductWatcherState> get copyWith =>
      __$ProductWatcherStateCopyWithImpl<_ProductWatcherState>(
          this, _$identity);
}

abstract class _ProductWatcherState implements ProductWatcherState {
  const factory _ProductWatcherState(
      {required bool isLoading,
      required int selectedPage,
      Either<Failure, List<ProductCategoriesEntity>>? failureOrSuccess,
      Either<Failure, String>? address,
      required List<CategoryItemsEntity> selectedItems,
      required List<Map<String, dynamic>> itemQuantity,
      required double subTotal,
      required double tax,
      required double total,
      required int cartCount,
      String? searchKey}) = _$_ProductWatcherState;

  @override
  bool get isLoading;
  @override
  int get selectedPage;
  @override
  Either<Failure, List<ProductCategoriesEntity>>? get failureOrSuccess;
  @override
  Either<Failure, String>? get address;
  @override
  List<CategoryItemsEntity> get selectedItems;
  @override
  List<Map<String, dynamic>> get itemQuantity;
  @override
  double get subTotal;
  @override
  double get tax;
  @override
  double get total;
  @override
  int get cartCount;
  @override
  String? get searchKey;
  @override
  @JsonKey(ignore: true)
  _$ProductWatcherStateCopyWith<_ProductWatcherState> get copyWith =>
      throw _privateConstructorUsedError;
}
