part of 'search_bloc.dart';

@freezed
class SearchEvent with _$SearchEvent {
  const factory SearchEvent.searchProducts({required String searchKey}) =
      _SearchProducts;
}
