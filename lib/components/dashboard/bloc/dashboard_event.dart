part of 'dashboard_bloc.dart';

@freezed
class DashBoardEvent with _$DashBoardEvent {
  const factory DashBoardEvent.changeCurrentTablePageIndex({required int index}) = _ChangeCurrentTablePageIndex;
  const factory DashBoardEvent.setCurrentMonth({required int index}) = _SetCurrentMonth;

}
