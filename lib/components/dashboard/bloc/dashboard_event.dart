part of 'dashboard_bloc.dart';

@freezed
class DashBoardEvent with _$DashBoardEvent {
  const factory DashBoardEvent.changeCurrentTablePageIndex(
      {required int index}) = _ChangeCurrentTablePageIndex;
  const factory DashBoardEvent.setCurrentMonth({required int index}) =
      _SetCurrentMonth;
  const factory DashBoardEvent.fetchProviderRequests() = _FetchProviderRequests;
  const factory DashBoardEvent.updateProvider(
      {required Map<String, dynamic> body,
      required String id,
      required BuildContext context}) = _UpdateProvider;

  const factory DashBoardEvent.deleteProvider(
      {required String id, required BuildContext context}) = _DeleteProvider;
}
