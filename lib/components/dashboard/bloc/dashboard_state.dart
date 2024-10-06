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
        CategoriesModel(name: "January", isSelected: DateFormat("MMMM").format(DateTime.now()) == "January"),
        CategoriesModel(name: "February", isSelected: DateFormat("MMMM").format(DateTime.now()) == "February"),
        CategoriesModel(name: "March", isSelected: DateFormat("MMMM").format(DateTime.now()) == "March"),
        CategoriesModel(name: "April", isSelected: DateFormat("MMMM").format(DateTime.now()) == "April"),
        CategoriesModel(name: "May", isSelected: DateFormat("MMMM").format(DateTime.now()) == "May"),
        CategoriesModel(name: "June", isSelected: DateFormat("MMMM").format(DateTime.now()) == "June"),
        CategoriesModel(name: "July", isSelected: DateFormat("MMMM").format(DateTime.now()) == "July"),
        CategoriesModel(name: "August", isSelected: DateFormat("MMMM").format(DateTime.now()) == "August"),
        CategoriesModel(name: "September", isSelected: DateFormat("MMMM").format(DateTime.now()) == "September"),
        CategoriesModel(name: "October", isSelected: DateFormat("MMMM").format(DateTime.now()) == "October"),
        CategoriesModel(name: "November", isSelected: DateFormat("MMMM").format(DateTime.now()) == "November"),
        CategoriesModel(name: "December", isSelected: DateFormat("MMMM").format(DateTime.now()) == "December")
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
        ProviderRequest(providerId: "00001", providerName: "Alice Johnson", location: "San Francisco", category: "Plumbing", status: "Active"),
        ProviderRequest(providerId: "00002", providerName: "Rosie Pearson", location: "NYC", category: "Cleaning", status: "Pending"),
        ProviderRequest(providerId: "00003", providerName: "Michael Brown", location: "Chicago", category: "Electrical", status: "Rejected"),
        ProviderRequest(providerId: "00004", providerName: "Linda Green", location: "Boston", category: "Carpentry", status: "Pending"),
        ProviderRequest(providerId: "00005", providerName: "John Davis", location: "Houston", category: "Painting", status: "Active"),
        ProviderRequest(providerId: "00006", providerName: "Emily White", location: "Dallas", category: "Plumbing", status: "Rejected"),
        ProviderRequest(providerId: "00007", providerName: "David Miller", location: "Miami", category: "Gardening", status: "Active"),
        ProviderRequest(providerId: "00008", providerName: "Sophia Harris", location: "Seattle", category: "Cleaning", status: "Pending"),
        ProviderRequest(providerId: "00009", providerName: "Chris Wilson", location: "Los Angeles", category: "Electrical", status: "Rejected"),
        ProviderRequest(providerId: "00010", providerName: "Olivia Martinez", location: "Denver", category: "Carpentry", status: "Active"),
        ProviderRequest(providerId: "00011", providerName: "James Garcia", location: "Phoenix", category: "Plumbing", status: "Pending"),
        ProviderRequest(providerId: "00012", providerName: "Chloe Thompson", location: "San Diego", category: "Painting", status: "Active"),
        ProviderRequest(providerId: "00013", providerName: "Daniel Lee", location: "Las Vegas", category: "Gardening", status: "Rejected"),
        ProviderRequest(providerId: "00014", providerName: "Isabella King", location: "Orlando", category: "Cleaning", status: "Pending"),
        ProviderRequest(providerId: "00015", providerName: "Grace Carter", location: "Philadelphia", category: "Plumbing", status: "Active"),
        ProviderRequest(providerId: "00016", providerName: "Noah Baker", location: "San Antonio", category: "Painting", status: "Pending"),
        ProviderRequest(providerId: "00017", providerName: "Liam Adams", location: "Indianapolis", category: "Electrical", status: "Rejected"),
        ProviderRequest(providerId: "00018", providerName: "Ava Scott", location: "Columbus", category: "Gardening", status: "Active"),
        ProviderRequest(providerId: "00019", providerName: "Mason Walker", location: "Charlotte", category: "Carpentry", status: "Pending"),
        ProviderRequest(providerId: "00020", providerName: "Sophia Campbell", location: "Detroit", category: "Cleaning", status: "Rejected"),
        ProviderRequest(providerId: "00021", providerName: "Lucas Rivera", location: "Memphis", category: "Plumbing", status: "Active"),
        ProviderRequest(providerId: "00022", providerName: "Ella Hill", location: "Baltimore", category: "Painting", status: "Rejected"),
        ProviderRequest(providerId: "00023", providerName: "Jackson Martin", location: "Fort Worth", category: "Electrical", status: "Pending"),
        ProviderRequest(providerId: "00024", providerName: "Aiden Perez", location: "El Paso", category: "Carpentry", status: "Active"),
        ProviderRequest(providerId: "00025", providerName: "Amelia Clark", location: "Milwaukee", category: "Gardening", status: "Pending"),
        ProviderRequest(providerId: "00026", providerName: "Lucas Robinson", location: "Nashville", category: "Cleaning", status: "Active"),
        ProviderRequest(providerId: "00027", providerName: "Mia Lewis", location: "Oklahoma City", category: "Plumbing", status: "Rejected"),
        ProviderRequest(providerId: "00028", providerName: "Henry Young", location: "Louisville", category: "Painting", status: "Pending"),
        ProviderRequest(providerId: "00029", providerName: "Abigail Allen", location: "Portland", category: "Carpentry", status: "Rejected"),
        ProviderRequest(providerId: "00030", providerName: "Sebastian Torres", location: "Las Vegas", category: "Gardening", status: "Active"),
      ]

  );
}


