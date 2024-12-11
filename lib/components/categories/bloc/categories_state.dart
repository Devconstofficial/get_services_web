part of 'categories_bloc.dart';


@freezed
class CategoriesState with _$CategoriesState {
  const factory CategoriesState({
    required bool isDeletionModeCategory,
    required bool isDeletionModeSubcategory,
    required List<CategoriesData> categories,
  }) = _CategoriesState;

  factory CategoriesState.initial() => CategoriesState(
      isDeletionModeCategory: false,
    isDeletionModeSubcategory: false,
      categories:[
        CategoriesData(
          category: "homeRepairAndServices".tr(),
          imagePath: Assets.images.homeRepairs,
          isUpdating: false,
          subCategory: ["plumbing".tr(), "electrician".tr(), "painting".tr(), "applianceRepair".tr(), "handyman".tr()],
        ),
        CategoriesData(
          category: "garden".tr(),
          imagePath: Assets.images.garden,
          isUpdating: false,
          subCategory: ["landscaping".tr(), "lawnCare".tr(), "gardenDesign".tr(), "irrigation".tr(), "treeRemoval".tr()],
        ),
        CategoriesData(
          category: "homeDesignAndFurniture".tr(),
          imagePath: Assets.images.homeDesign,
          isUpdating: false,
          subCategory: ["interiorDesign".tr(), "furnitureAssembly".tr(), "customFurniture".tr(), "lightingDesign".tr(), "homeStaging".tr()],
        ),
        CategoriesData(
          category: "emergencyServices".tr(),
          imagePath: Assets.images.emergencyCall,
          isUpdating: false,
          subCategory: ["emergencyPlumbing".tr(), "fireDamage".tr(), "locksmith".tr(), "electricalRepair".tr(), "waterDamageRestoration".tr()],
        ),
        CategoriesData(
          category: "homeImprovement".tr(),
          imagePath: Assets.images.homeDesign,
          isUpdating: false,
          subCategory: ["renovation".tr(), "carpentry".tr(), "roofing".tr(), "flooring".tr(), "windowInstallation".tr()],
        ),
        CategoriesData(
          category: "pet".tr(),
          imagePath: Assets.images.pet,
          isUpdating: false,
          subCategory: ["petGrooming".tr(), "veterinaryServices".tr(), "petSitting".tr(), "petTraining".tr(), "petBoarding".tr()],
        ),
        CategoriesData(
          category: "lawyers".tr(),
          imagePath: Assets.images.lawyer,
          isUpdating: false,
          subCategory: ["criminalLawyer".tr(), "familyLawyer".tr(), "personalInjury".tr(), "businessLawyer".tr(), "immigrationLawyer".tr()],
        ),
        CategoriesData(
          category: "familyServices".tr(),
          imagePath: Assets.images.familyServices,
          isUpdating: false,
          subCategory: ["childcare".tr(), "elderCare".tr(), "nannyServices".tr(), "tutoring".tr(), "familyCounseling".tr()],
        ),
      ],
  );
}


