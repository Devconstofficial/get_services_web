part of 'side_bar_bloc.dart';

@freezed
class SideBarEvent with _$SideBarEvent {
  const factory SideBarEvent.setSideBarIndex({
    required int index
  }) = _SetSideBarIndex;
  const factory SideBarEvent.setSideBarHoverIndex({
    required int? hoveredIndex
  }) = _SetSideBarHoverIndex;
  const factory SideBarEvent.updateIsLanguageMenuHover({
    required bool isLanguageMenuHover
  }) = _UpdateIsLanguageMenuHover;
  const factory SideBarEvent.setSideBarLanguageIndexIndex({required int index, required bool value}) = _SetSideBarLanguageIndexIndex;
}
