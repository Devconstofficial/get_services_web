class CategoriesModel {
  final String name;
  final bool isSelected;

  CategoriesModel({
    required this.name,
    required this.isSelected,
  });

  CategoriesModel copyWith({
    String? name,
    bool? isSelected,
  }) {
    return CategoriesModel(
      name: name ?? this.name,
      isSelected: isSelected ?? this.isSelected,
    );
  }
}