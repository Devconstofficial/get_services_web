part of 'provider_bloc.dart';

@freezed
class ProvidersState with _$ProvidersState {
  const factory ProvidersState({
    required DateTime? customStartDate,
    required DateTime? customEndDate,
    required int currentTablePageIndex,
    required List<CategoriesModel> providerStatus,
    required List<ProviderRequestModel> providerRequests,
    required bool isLoading,
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
        isLoading: false,
      );
}
