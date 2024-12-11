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
        CategoriesModel(name: "active".tr(), isSelected: false),
        CategoriesModel(name: "pending".tr(), isSelected: false),
        CategoriesModel(name: "rejected".tr(), isSelected: false),
        CategoriesModel(name: "onHold".tr(), isSelected: false),
      ],
      providerRequests: [
        ProviderRequest(providerId: "00001", providerName: "Alice Johnson", location: "San Francisco", category: "plumbing".tr(), status: "active".tr()),
        ProviderRequest(providerId: "00002", providerName: "Rosie Pearson", location: "NYC", category: "cleaning".tr(), status: "pending".tr()),
        ProviderRequest(providerId: "00003", providerName: "Michael Brown", location: "Chicago", category: "electrician".tr(), status: "rejected".tr()),
        ProviderRequest(providerId: "00004", providerName: "Linda Green", location: "Boston", category: "carpentry".tr(), status: "pending".tr()),
        ProviderRequest(providerId: "00005", providerName: "John Davis", location: "Houston", category: "painting".tr(), status: "active".tr()),
        ProviderRequest(providerId: "00006", providerName: "Emily White", location: "Dallas", category: "plumbing".tr(), status: "rejected".tr()),
        ProviderRequest(providerId: "00007", providerName: "David Miller", location: "Miami", category: "Gardening", status: "active".tr()),
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


