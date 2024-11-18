part of 'featured_product_bloc.dart';

@freezed
class FeaturedProductState with _$FeaturedProductState {
  const factory FeaturedProductState({
    Either<Failure, List<CategoryItemsEntity>>? failureOrSuccess,
    required bool isLoading,
  }) = _FeaturedProductState;
  factory FeaturedProductState.initial() => const FeaturedProductState(
        isLoading: false,
      );
}
