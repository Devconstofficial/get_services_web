part of 'dashboard_bloc.dart';


@freezed
class DashBoardState with _$DashBoardState {
  const factory DashBoardState({
    required int totalUsers,
    required int totalProviders,
    required int currentTablePageIndex,
    required int requestsPending,
    required List<CategoriesModel> months,
    required List<RevenueData> revenueData,
    required List<ProviderRequest> providerRequests,
  }) = _DashBoardState;

  factory DashBoardState.initial() => DashBoardState(
      currentTablePageIndex: 0,
      totalUsers: 40689,
      totalProviders: 40689,
      requestsPending: 40689,
      months:[
        CategoriesModel(name: "january".tr(), isSelected: DateFormat("MMMM").format(DateTime.now()) == "January"),
        CategoriesModel(name: "february".tr(), isSelected: DateFormat("MMMM").format(DateTime.now()) == "February"),
        CategoriesModel(name: "march".tr(), isSelected: DateFormat("MMMM").format(DateTime.now()) == "March"),
        CategoriesModel(name: "april".tr(), isSelected: DateFormat("MMMM").format(DateTime.now()) == "April"),
        CategoriesModel(name: "may".tr(), isSelected: DateFormat("MMMM").format(DateTime.now()) == "May"),
        CategoriesModel(name: "june".tr(), isSelected: DateFormat("MMMM").format(DateTime.now()) == "June"),
        CategoriesModel(name: "july".tr(), isSelected: DateFormat("MMMM").format(DateTime.now()) == "July"),
        CategoriesModel(name: "august".tr(), isSelected: DateFormat("MMMM").format(DateTime.now()) == "August"),
        CategoriesModel(name: "september".tr(), isSelected: DateFormat("MMMM").format(DateTime.now()) == "September"),
        CategoriesModel(name: "october".tr(), isSelected: DateFormat("MMMM").format(DateTime.now()) == "October"),
        CategoriesModel(name: "november".tr(), isSelected: DateFormat("MMMM").format(DateTime.now()) == "November"),
        CategoriesModel(name: "december".tr(), isSelected: DateFormat("MMMM").format(DateTime.now()) == "December")
      ],
      revenueData: [
        RevenueData(value: 5, lastMonth: 100, thisMonth: 80),  // Higher peak at the start
        RevenueData(value: 10, lastMonth: 50, thisMonth: 30),  // Drop after initial peak
        RevenueData(value: 15, lastMonth: 80, thisMonth: 60),  // Slight recovery
        RevenueData(value: 20, lastMonth: 60, thisMonth: 50),  // Another dip
        RevenueData(value: 25, lastMonth: 40, thisMonth: 80),  // Sharp rise
        RevenueData(value: 30, lastMonth: 90, thisMonth: 100), // Another peak
        RevenueData(value: 35, lastMonth: 80, thisMonth: 70),  // Drop after peak
        RevenueData(value: 40, lastMonth: 90, thisMonth: 50),  // Continued drop
        RevenueData(value: 45, lastMonth: 20, thisMonth: 60),  // Minor recovery
        RevenueData(value: 50, lastMonth: 60, thisMonth: 90),  // Rise
        RevenueData(value: 55, lastMonth: 80, thisMonth: 110), // Higher peak
        RevenueData(value: 60, lastMonth: 100, thisMonth: 70), // Drop towards the end
      ],
      providerRequests: [
        ProviderRequest(providerId: "00001", providerName: "Alice Johnson", location: "San Francisco", category: "plumbing".tr(), status: "active".tr()),
        ProviderRequest(providerId: "00002", providerName: "Rosie Pearson", location: "NYC", category: "cleaning".tr(), status: "pending".tr()),
        ProviderRequest(providerId: "00003", providerName: "Michael Brown", location: "Chicago", category: "electrician".tr(), status: "rejected".tr()),
        ProviderRequest(providerId: "00004", providerName: "Linda Green", location: "Boston", category: "carpentry".tr(), status: "pending".tr()),
        ProviderRequest(providerId: "00005", providerName: "John Davis", location: "Houston", category: "painting".tr(), status: "active".tr()),
        ProviderRequest(providerId: "00006", providerName: "Emily White", location: "Dallas", category: "plumbing".tr(), status: "rejected".tr()),
        ProviderRequest(providerId: "00007", providerName: "David Miller", location: "Miami", category: "garden".tr(), status: "active".tr()),
        ProviderRequest(providerId: "00008", providerName: "Sophia Harris", location: "Seattle", category: "cleaning".tr(), status: "pending".tr()),
        ProviderRequest(providerId: "00009", providerName: "Chris Wilson", location: "Los Angeles", category: "electrician".tr(), status: "rejected".tr()),
        ProviderRequest(providerId: "00010", providerName: "Olivia Martinez", location: "Denver", category: "carpentry".tr(), status: "active".tr()),
        ProviderRequest(providerId: "00011", providerName: "James Garcia", location: "Phoenix", category: "plumbing".tr(), status: "pending".tr()),
        ProviderRequest(providerId: "00012", providerName: "Chloe Thompson", location: "San Diego", category: "painting".tr(), status: "active".tr()),
        ProviderRequest(providerId: "00013", providerName: "Daniel Lee", location: "Las Vegas", category: "garden".tr(), status: "rejected".tr()),
        ProviderRequest(providerId: "00014", providerName: "Isabella King", location: "Orlando", category: "cleaning".tr(), status: "pending".tr()),
        ProviderRequest(providerId: "00015", providerName: "Grace Carter", location: "Philadelphia", category: "plumbing".tr(), status: "active".tr()),
        ProviderRequest(providerId: "00016", providerName: "Noah Baker", location: "San Antonio", category: "painting".tr(), status: "pending".tr()),
        ProviderRequest(providerId: "00017", providerName: "Liam Adams", location: "Indianapolis", category: "electrician".tr(), status: "rejected".tr()),
        ProviderRequest(providerId: "00018", providerName: "Ava Scott", location: "Columbus", category: "garden".tr(), status: "active".tr()),
        ProviderRequest(providerId: "00019", providerName: "Mason Walker", location: "Charlotte", category: "carpentry".tr(), status: "pending".tr()),
        ProviderRequest(providerId: "00020", providerName: "Sophia Campbell", location: "Detroit", category: "cleaning".tr(), status: "rejected".tr()),
        ProviderRequest(providerId: "00021", providerName: "Lucas Rivera", location: "Memphis", category: "plumbing".tr(), status: "active".tr()),
        ProviderRequest(providerId: "00022", providerName: "Ella Hill", location: "Baltimore", category: "painting".tr(), status: "rejected".tr()),
        ProviderRequest(providerId: "00023", providerName: "Jackson Martin", location: "Fort Worth", category: "electrician".tr(), status: "pending".tr()),
        ProviderRequest(providerId: "00024", providerName: "Aiden Perez", location: "El Paso", category: "carpentry".tr(), status: "active".tr()),
        ProviderRequest(providerId: "00025", providerName: "Amelia Clark", location: "Milwaukee", category: "garden".tr(), status: "pending".tr()),
        ProviderRequest(providerId: "00026", providerName: "Lucas Robinson", location: "Nashville", category: "cleaning".tr(), status: "active".tr()),
        ProviderRequest(providerId: "00027", providerName: "Mia Lewis", location: "Oklahoma City", category: "plumbing".tr(), status: "rejected".tr()),
        ProviderRequest(providerId: "00028", providerName: "Henry Young", location: "Louisville", category: "painting".tr(), status: "pending".tr()),
        ProviderRequest(providerId: "00029", providerName: "Abigail Allen", location: "Portland", category: "carpentry".tr(), status: "rejected".tr()),
        ProviderRequest(providerId: "00030", providerName: "Sebastian Torres", location: "Las Vegas", category: "garden".tr(), status: "active".tr()),
      ]

  );
}


