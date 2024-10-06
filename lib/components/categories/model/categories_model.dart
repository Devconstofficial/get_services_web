class CategoriesData {
  final String category;
  final String imagePath;
  final bool isUpdating;
  final List<String> subCategory;

  CategoriesData({
    required this.category,
    required this.imagePath,
    required this.isUpdating,
    required this.subCategory,
  });

  // Copy with method
  CategoriesData copyWith({
    String? category,
    String? imagePath,
    bool? isUpdating,
    List<String>? subCategory,
  }) {
    return CategoriesData(
      category: category ?? this.category,
      isUpdating: isUpdating ?? this.isUpdating,
      imagePath: imagePath ?? this.imagePath,
      subCategory: subCategory ?? List.from(this.subCategory),
    );
  }
}
