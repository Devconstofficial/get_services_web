part of 'side_bar_bloc.dart';

@freezed
class SideBarState with _$SideBarState {
  const factory SideBarState({
    required int selectedIndex,
    required int notificationCount,
    required bool isLanguageMenuHover,
    required int? hoveredIndex,
    required List<CategoriesModel> languages,
    required List<String> languageImages,
    required List<String> items,
    required List<Widget> pages
  }) = _SideBarState;

  factory SideBarState.initial() => SideBarState(
      hoveredIndex:null,
      isLanguageMenuHover:false,
      selectedIndex: 0,
      notificationCount: 6,
      languageImages: [Assets.images.ukFlag.path,Assets.images.illegalFlag.path,Assets.images.saudiFlag.path],
      languages: [
        CategoriesModel(name: "Select Language",isSelected: false),
        CategoriesModel(name: "English",isSelected: true),
        CategoriesModel(name: "Hebrew",isSelected: false),
        CategoriesModel(name: "Arabic",isSelected: false),
      ],
    items: ["Dashboard","Service Provides","Categories","Payment"],
      pages: [DashboardPage(),ProviderPage(),CategoriesPage(),PaymentPage()]
  );
}


