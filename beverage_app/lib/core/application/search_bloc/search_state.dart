part of 'search_bloc.dart';

@freezed
class SearchState with _$SearchState {
  const factory SearchState({
    required bool isLoading,
    Either<Failure, List<CategoryItemsEntity>>? failureOrSuccess,
  }) = _SearchState;
  factory SearchState.initial() => const SearchState(
        isLoading: false,
      );
}
