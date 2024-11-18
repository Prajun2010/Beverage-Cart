part of 'order_details_action_bloc.dart';

@freezed
class OrderDetailsActionState with _$OrderDetailsActionState {
  const factory OrderDetailsActionState({
    required bool isProcessing,
    Either<Failure, Unit>? failureOrSuccess,
  }) = _OrderDetailsActionState;
  factory OrderDetailsActionState.initial() => const OrderDetailsActionState(
        isProcessing: false,
      );
}
