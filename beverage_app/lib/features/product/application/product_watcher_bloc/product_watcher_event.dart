part of 'product_watcher_bloc.dart';

@freezed
class ProductWatcherEvent with _$ProductWatcherEvent {
  const factory ProductWatcherEvent.fetchProductCategories(
      {required String url}) = _FetchProductCategories;

  const factory ProductWatcherEvent.computeAmount() = _UpdateSelectedItems;
  const factory ProductWatcherEvent.addItems({
    required CategoryItemsEntity selectedItem,
  }) = _AddItems;
  const factory ProductWatcherEvent.increment({
    required int productId,
  }) = _Increment;
  const factory ProductWatcherEvent.decrement({
    required int productId,
  }) = _Decrement;

  const factory ProductWatcherEvent.removeItem({
    required int productId,
  }) = _RemoveItem;
  const factory ProductWatcherEvent.changePage({
    required int page,
  }) = _ChangePage;
  const factory ProductWatcherEvent.searchKey({
    required String searchKey,
  }) = _SearchKey;

  const factory ProductWatcherEvent.resetData() = _ResetData;
}
