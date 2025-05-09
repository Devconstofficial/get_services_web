part of 'categories_bloc.dart';

@freezed
class CategoriesEvent with _$CategoriesEvent {
  const factory CategoriesEvent.changeDeleteModeCategory(
      {required bool value}) = _ChangeDeleteModeCategory;
  const factory CategoriesEvent.setCurrentCategory({required int index}) =
      _SetCurrentCategory;
  const factory CategoriesEvent.changeDeleteModeSubCategory(
      {required bool value}) = _ChangeDeleteModeSubCategory;
  const factory CategoriesEvent.fetchCategoriesAndServices() =
      _FetchCategoriesAndServices;
  const factory CategoriesEvent.deleteCategory({required String categoryId}) =
      _DeleteCategory;
  const factory CategoriesEvent.deleteSubCategory({
    required String subCategoryId,
  }) = _DeleteSubCategory;
  const factory CategoriesEvent.addCategory({
    required String? name,
    required dynamic imageFile,
  }) = AddCategory;

  const factory CategoriesEvent.addService({
    required String categoryId,
    required String serviceName,
  }) = _AddService;
  const factory CategoriesEvent.selectImage({
    required Uint8List? imageBytes,
  }) = _SelectImage;
}
