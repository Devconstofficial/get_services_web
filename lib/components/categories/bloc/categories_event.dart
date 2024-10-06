part of 'categories_bloc.dart';

@freezed
class CategoriesEvent with _$CategoriesEvent {
  const factory CategoriesEvent.changeDeleteModeCategory({required bool value}) = _ChangeDeleteModeCategory;
  const factory CategoriesEvent.setCurrentCategory({required int index}) = _SetCurrentCategory;
  const factory CategoriesEvent.changeDeleteModeSubCategory({required bool value}) = _ChangeDeleteModeSubCategory;
}
