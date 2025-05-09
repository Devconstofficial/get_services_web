part of 'provider_bloc.dart';

@freezed
class ProvidersEvent with _$ProvidersEvent {
  const factory ProvidersEvent.resetFilter() = _ResetFilter;

  const factory ProvidersEvent.changeCurrentTablePageIndex(
      {required int index}) = _ChangeCurrentTablePageIndex;
  const factory ProvidersEvent.setProviderStatus(
      {required int index, required bool value}) = _SetProviderStatus;
  const factory ProvidersEvent.applyFilter() = _ApplyFilter;
  const factory ProvidersEvent.applyDateFilter() = _ApplyDateFilter;
  const factory ProvidersEvent.changeFilterDate(
      {required DateTime? startDate}) = _ChanegFilterDate;
  const factory ProvidersEvent.fetchProviderRequests() = _FetchProviderRequests;
  const factory ProvidersEvent.updateProvider(
      {required Map<String, dynamic> body,
      required String id,
      required BuildContext context}) = _UpdateProvider;

  const factory ProvidersEvent.deleteProvider(
      {required String id, required BuildContext context}) = _DeleteProvider;
}
