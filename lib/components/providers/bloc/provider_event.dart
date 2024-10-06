part of 'provider_bloc.dart';

@freezed
class ProvidersEvent with _$ProvidersEvent {
  const factory ProvidersEvent.resetFilter() = _ResetFilter;

  const factory ProvidersEvent.changeCurrentTablePageIndex({required int index}) = _ChangeCurrentTablePageIndex;
  const factory ProvidersEvent.setProviderStatus({required int index, required bool value}) = _SetProviderStatus;
  const factory ProvidersEvent.changeFilterDate({required DateTime? startDate, required DateTime? endDate}) = _ChanegFilterDate;

}
