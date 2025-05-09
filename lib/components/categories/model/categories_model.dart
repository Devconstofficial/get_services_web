class CategoriesData {
  final String categoryId;
  final String category;
  final String imagePath;
  final bool isUpdating;
  final List<SubCategoryData> subCategory;

  CategoriesData({
    required this.categoryId,
    required this.category,
    required this.imagePath,
    required this.isUpdating,
    required this.subCategory,
  });

  CategoriesData copyWith({
    String? categoryId,
    String? category,
    String? imagePath,
    bool? isUpdating,
    List<SubCategoryData>? subCategory,
  }) {
    return CategoriesData(
      categoryId: categoryId ?? this.categoryId,
      category: category ?? this.category,
      imagePath: imagePath ?? this.imagePath,
      isUpdating: isUpdating ?? this.isUpdating,
      subCategory: subCategory ?? this.subCategory,
    );
  }
}

class SubCategoryData {
  final String subCategoryId;
  final String subCategoryName;

  SubCategoryData({
    required this.subCategoryId,
    required this.subCategoryName,
  });
}
