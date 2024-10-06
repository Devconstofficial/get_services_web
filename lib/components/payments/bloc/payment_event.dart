part of 'payment_bloc.dart';

@freezed
class PaymentEvent with _$PaymentEvent {
  const factory PaymentEvent.resetFilter() = _ResetFilter;

  const factory PaymentEvent.changeCurrentTablePageIndex({required int index}) = _ChangeCurrentTablePageIndex;
  const factory PaymentEvent.setPaymentStatus({required int index, required bool value}) = _SetPaymentStatus;
  const factory PaymentEvent.changeFilterDate({required DateTime? startDate, required DateTime? endDate}) = _ChanegFilterDate;

}
