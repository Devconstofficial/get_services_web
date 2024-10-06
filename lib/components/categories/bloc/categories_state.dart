part of 'categories_bloc.dart';


@freezed
class CategoriesState with _$CategoriesState {
  const factory CategoriesState({
    required bool isDeletionMode,
    required List<CategoriesData> categories,
  }) = _CategoriesState;

  factory CategoriesState.initial() => CategoriesState(
      isDeletionMode: false,
      categories:[
        CategoriesData(
          category: "Home Repairs and Services",
          imagePath: Assets.images.homeRepairs,
          isUpdating: false,
          subCategory: ["Plumbing", "Electrician", "Painting", "Appliance Repair", "Handyman"],
        ),
        CategoriesData(
          category: "Garden",
          imagePath: Assets.images.garden,
          isUpdating: false,
          subCategory: ["Landscaping", "Lawn Care", "Garden Design", "Irrigation", "Tree Removal"],
        ),
        CategoriesData(
          category: "Home Design and Furniture",
          imagePath: Assets.images.homeDesign,
          isUpdating: false,
          subCategory: ["Interior Design", "Furniture Assembly", "Custom Furniture", "Lighting Design", "Home Staging"],
        ),
        CategoriesData(
          category: "Emergency Services",
          imagePath: Assets.images.emergencyCall,
          isUpdating: false,
          subCategory: ["Emergency Plumbing", "Fire Damage", "Locksmith", "Electrical Repair", "Water Damage Restoration"],
        ),
        CategoriesData(
          category: "Home Improvement",
          imagePath: Assets.images.homeDesign,
          isUpdating: false,
          subCategory: ["Renovation", "Carpentry", "Roofing", "Flooring", "Window Installation"],
        ),
        CategoriesData(
          category: "Pet",
          imagePath: Assets.images.pet,
          isUpdating: false,
          subCategory: ["Pet Grooming", "Veterinary Services", "Pet Sitting", "Pet Training", "Pet Boarding"],
        ),
        CategoriesData(
          category: "Lawyers",
          imagePath: Assets.images.lawyer,
          isUpdating: false,
          subCategory: ["Criminal Lawyer", "Family Lawyer", "Personal Injury", "Business Lawyer", "Immigration Lawyer"],
        ),
        CategoriesData(
          category: "Family Services",
          imagePath: Assets.images.familyServices,
          isUpdating: false,
          subCategory: ["Childcare", "Elder Care", "Nanny Services", "Tutoring", "Family Counseling"],
        ),
      ],
  );
}


