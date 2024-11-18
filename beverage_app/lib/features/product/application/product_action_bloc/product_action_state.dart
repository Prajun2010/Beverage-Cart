part of 'product_action_bloc.dart';

@freezed
class ProductActionState with _$ProductActionState {
  const factory ProductActionState({
    required bool isProcessing,
    required int paymentSelectId,
    Either<Failure, String>? failureOrSuccess,
  }) = _ProductActionState;
  factory ProductActionState.initial() => const ProductActionState(
        isProcessing: false,
        paymentSelectId: -1,
      );
}
