part of 'provider_bloc.dart';


@freezed
class ProvidersState with _$ProvidersState {
  const factory ProvidersState({
    required DateTime? customStartDate,
    required DateTime? customEndDate,
    required int currentTablePageIndex,
    required List<CategoriesModel> providerStatus,
    required List<ProviderRequest> providerRequests,
  }) = _ProvidersState;

  factory ProvidersState.initial() => ProvidersState(
      currentTablePageIndex: 0,
      customStartDate:null,
      customEndDate:null,
      providerStatus:[
        CategoriesModel(name: "Active", isSelected: false),
        CategoriesModel(name: "Pending", isSelected: false),
        CategoriesModel(name: "Rejected", isSelected: false),
        CategoriesModel(name: "On Hold", isSelected: false),
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


