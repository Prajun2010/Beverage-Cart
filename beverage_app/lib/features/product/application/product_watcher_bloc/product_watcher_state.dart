part of 'product_watcher_bloc.dart';

@freezed
class ProductWatcherState with _$ProductWatcherState {
  const factory ProductWatcherState({
    required bool isLoading,
    required int selectedPage,
    Either<Failure, List<ProductCategoriesEntity>>? failureOrSuccess,
    Either<Failure, String>? address,
    required List<CategoryItemsEntity> selectedItems,
    required List<Map<String, dynamic>> itemQuantity,
    required double subTotal,
    required double tax,
    required double total,
    required int cartCount,
    String? searchKey,
  }) = _ProductWatcherState;
  factory ProductWatcherState.initial() => const ProductWatcherState(
        isLoading: false,
        selectedItems: [],
        itemQuantity: [],
        selectedPage: 0,
        subTotal: 0,
        tax: 0,
        total: 0,
        cartCount: 0,
      );
}
