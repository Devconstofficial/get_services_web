part of 'dashboard_bloc.dart';

@freezed
class DashBoardState with _$DashBoardState {
  const factory DashBoardState({
    required int totalUsers,
    required int totalProviders,
    required int currentTablePageIndex,
    required int requestsPending,
    required List<CategoriesModel> providerStatus,
    required List<CategoriesModel> months,
    required List<RevenueData> revenueData,
    required List<ProviderRequestModel> providerRequests,
    required bool isLoading,
    required bool isLoadingDelete,
    required bool isLoadingUpdate,
  }) = _DashBoardState;

  factory DashBoardState.initial() => DashBoardState(
          currentTablePageIndex: 0,
          totalUsers: 40689,
          totalProviders: 40689,
          requestsPending: 40689,
          isLoading: false,
          isLoadingDelete: false,
          isLoadingUpdate: false,
          providerStatus: [
            CategoriesModel(name: "active".tr(), isSelected: false),
            CategoriesModel(name: "pending".tr(), isSelected: false),
            CategoriesModel(name: "rejected".tr(), isSelected: false),
            CategoriesModel(name: "onHold".tr(), isSelected: false),
          ],
          months: [
            CategoriesModel(
                name: "january".tr(),
                isSelected:
                    DateFormat("MMMM").format(DateTime.now()) == "January"),
            CategoriesModel(
                name: "february".tr(),
                isSelected:
                    DateFormat("MMMM").format(DateTime.now()) == "February"),
            CategoriesModel(
                name: "march".tr(),
                isSelected:
                    DateFormat("MMMM").format(DateTime.now()) == "March"),
            CategoriesModel(
                name: "april".tr(),
                isSelected:
                    DateFormat("MMMM").format(DateTime.now()) == "April"),
            CategoriesModel(
                name: "may".tr(),
                isSelected: DateFormat("MMMM").format(DateTime.now()) == "May"),
            CategoriesModel(
                name: "june".tr(),
                isSelected:
                    DateFormat("MMMM").format(DateTime.now()) == "June"),
            CategoriesModel(
                name: "july".tr(),
                isSelected:
                    DateFormat("MMMM").format(DateTime.now()) == "July"),
            CategoriesModel(
                name: "august".tr(),
                isSelected:
                    DateFormat("MMMM").format(DateTime.now()) == "August"),
            CategoriesModel(
                name: "september".tr(),
                isSelected:
                    DateFormat("MMMM").format(DateTime.now()) == "September"),
            CategoriesModel(
                name: "october".tr(),
                isSelected:
                    DateFormat("MMMM").format(DateTime.now()) == "October"),
            CategoriesModel(
                name: "november".tr(),
                isSelected:
                    DateFormat("MMMM").format(DateTime.now()) == "November"),
            CategoriesModel(
                name: "december".tr(),
                isSelected:
                    DateFormat("MMMM").format(DateTime.now()) == "December")
          ],
          revenueData: [
            RevenueData(
                value: 5,
                lastMonth: 100,
                thisMonth: 80), // Higher peak at the start
            RevenueData(
                value: 10,
                lastMonth: 50,
                thisMonth: 30), // Drop after initial peak
            RevenueData(
                value: 15, lastMonth: 80, thisMonth: 60), // Slight recovery
            RevenueData(value: 20, lastMonth: 60, thisMonth: 50), // Another dip
            RevenueData(value: 25, lastMonth: 40, thisMonth: 80), // Sharp rise
            RevenueData(
                value: 30, lastMonth: 90, thisMonth: 100), // Another peak
            RevenueData(
                value: 35, lastMonth: 80, thisMonth: 70), // Drop after peak
            RevenueData(
                value: 40, lastMonth: 90, thisMonth: 50), // Continued drop
            RevenueData(
                value: 45, lastMonth: 20, thisMonth: 60), // Minor recovery
            RevenueData(value: 50, lastMonth: 60, thisMonth: 90), // Rise
            RevenueData(
                value: 55, lastMonth: 80, thisMonth: 110), // Higher peak
            RevenueData(
                value: 60,
                lastMonth: 100,
                thisMonth: 70), // Drop towards the end
          ],
          providerRequests: [
        
      ]

  );
}
