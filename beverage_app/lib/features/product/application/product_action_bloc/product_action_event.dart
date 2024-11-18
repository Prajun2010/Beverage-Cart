part of 'product_action_bloc.dart';

@freezed
class ProductActionEvent with _$ProductActionEvent {
  const factory ProductActionEvent.placeOrder(
      {required List<Map<String, dynamic>> data}) = _PlaceOrder;

  const factory ProductActionEvent.selectPaymentMethod(
      {required int selectId}) = _SelectPaymentMethod;

  const factory ProductActionEvent.payment({
    required double amount,
    required List<Map<String, dynamic>> data,
  }) = _Payment;

  const factory ProductActionEvent.paymentOutstanding({
    required double amount,
  }) = _PaymentOutstanding;
}
