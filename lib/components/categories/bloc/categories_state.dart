part of 'categories_bloc.dart';

@freezed
class CategoriesState with _$CategoriesState {
  const factory CategoriesState({
    required bool isDeletionModeCategory,
    required bool isDeletionModeSubcategory,
    String? deletingCategoryId,
    String? deletingSubCategoryId,
    required bool isLoading,
    required bool isAddingService,
    required bool isAddingCategory,
    required List<CategoriesData> categories,
    required Uint8List? selectedImageBytes,
  }) = _CategoriesState;

  factory CategoriesState.initial() => const CategoriesState(
        isDeletionModeCategory: false,
        isDeletionModeSubcategory: false,
        isLoading: false,
        isAddingCategory: false,
        isAddingService: false,
        deletingCategoryId: null,
        deletingSubCategoryId: null,
        categories: [],
        selectedImageBytes: null,
      );
}
