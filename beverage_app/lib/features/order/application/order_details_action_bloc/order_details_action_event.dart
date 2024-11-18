part of 'order_details_action_bloc.dart';

@freezed
class OrderDetailsActionEvent with _$OrderDetailsActionEvent {
  const factory OrderDetailsActionEvent.reorder({required String url}) =
      _Reorder;
}
