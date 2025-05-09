part of 'provider_bloc.dart';

@freezed
class ProvidersState with _$ProvidersState {
  const factory ProvidersState({
    required DateTime? customStartDate,
    required DateTime? customEndDate,
    required int currentTablePageIndex,
    required List<CategoriesModel> providerStatus,
    required List<ProviderRequestModel> providerRequests,
    required List<ProviderRequestModel> filteredProviderRequests,
    required bool isLoading,
    required bool isLoadingDelete,
    required bool isLoadingUpdate,
  }) = _ProvidersState;

  factory ProvidersState.initial() => ProvidersState(
        currentTablePageIndex: 0,
        customStartDate: null,
        customEndDate: null,
        providerStatus: [
          CategoriesModel(name: "active".tr(), isSelected: false),
          CategoriesModel(name: "pending".tr(), isSelected: false),
          CategoriesModel(name: "rejected".tr(), isSelected: false),
          CategoriesModel(name: "onHold".tr(), isSelected: false),
        ],
        providerRequests: [],
        filteredProviderRequests: [],
        isLoading: false,
        isLoadingDelete: false,
        isLoadingUpdate: false,
      );
}
