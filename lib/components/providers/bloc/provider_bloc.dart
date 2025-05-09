import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get_services/common_model/categories_model.dart';
import 'package:get_services/services/api_services.dart';
import 'package:get_services/utils/custom_snackbar.dart';
import '../../dashboard/model/provider_request.dart';
part 'provider_event.dart';
part 'providers_state.dart';
part 'provider_bloc.freezed.dart';

class ProvidersBloc extends Bloc<ProvidersEvent, ProvidersState> {
  ProvidersBloc() : super(ProvidersState.initial()) {
    on<ProvidersEvent>((event, emit) async {
      await event.map(
        changeCurrentTablePageIndex: (_) async {
          emit(state.copyWith(currentTablePageIndex: _.index));
        },
        changeFilterDate: (_) async {
          final selectedDate = _.startDate;

          emit(state.copyWith(
            customStartDate: selectedDate,
          ));
        },
        setProviderStatus: (_) async {
          final updatedCategories =
              List<CategoriesModel>.from(state.providerStatus);
          final updatedCategory =
              updatedCategories[_.index].copyWith(isSelected: _.value);
          updatedCategories[_.index] = updatedCategory;

          emit(state.copyWith(
            providerStatus: updatedCategories,
          ));
        },
        applyFilter: (_) {
          final updatedCategories =
              List<CategoriesModel>.from(state.providerStatus);

          final activeStatuses = updatedCategories
              .where((category) => category.isSelected)
              .map((category) => category.name)
              .toList();

          List<ProviderRequestModel> filteredRequests = [];

          if (activeStatuses.isNotEmpty) {
            for (var status in activeStatuses) {
              if (status == "active".tr()) {
                // Fetch providers with "verified" status for "active"
                filteredRequests.addAll(state.providerRequests.where((request) {
                  return request.status == "verified";
                }));
              } else if (status == "onHold".tr()) {
                // Fetch providers with "pending" status for "on Hold"
                filteredRequests.addAll(state.providerRequests.where((request) {
                  return request.status == "pending";
                }));
              } else {
                // Handle other statuses if needed
                filteredRequests.addAll(state.providerRequests.where((request) {
                  return request.status == status;
                }));
              }
            }
          } else {
            // No filters applied, show all requests
            filteredRequests =
                List<ProviderRequestModel>.from(state.providerRequests);
          }

          emit(state.copyWith(
            providerStatus: updatedCategories,
            filteredProviderRequests: filteredRequests,
          ));
        },
        applyDateFilter: (_) {
          final selectedDate = state.customStartDate;
          List<ProviderRequestModel> filteredRequests = state.providerRequests;
          if (selectedDate != null) {
            filteredRequests = state.providerRequests.where((request) {
              final createdAt = request.createdAt;
              return createdAt.year == selectedDate.year &&
                  createdAt.month == selectedDate.month &&
                  createdAt.day == selectedDate.day;
            }).toList();
          }

          emit(state.copyWith(filteredProviderRequests: filteredRequests));
        },
        resetFilter: (_) async {
          final resetCategories = state.providerStatus
              .map((category) => category.copyWith(isSelected: false))
              .toList();

          emit(state.copyWith(
            providerStatus: resetCategories,
            customStartDate: null,
            customEndDate: null,
            filteredProviderRequests: state.providerRequests,
          ));
        },
        fetchProviderRequests: (_) async {
          emit(state.copyWith(isLoading: true));
          try {
            final response = await ApiServices.viewAllProviders();
            log('ress $response');
            if (response['success'] == true) {
              final List<ProviderRequestModel> providerRequests =
                  (response['data'] as List)
                      .map((json) => ProviderRequestModel.fromJson(json))
                      .toList();
              for (var request in providerRequests) {
                List<String> formattedAddresses = [];
                for (var location in request.mapLocations) {
                  String address = await ApiServices.getFormattedAddress(
                      location.latitude, location.longitude);
                  formattedAddresses.add(address);
                }

                for (int i = 0; i < request.mapLocations.length; i++) {
                  request.mapLocations[i] = MapLocation(
                    latitude: request.mapLocations[i].latitude,
                    longitude: request.mapLocations[i].longitude,
                    radius: request.mapLocations[i].radius,
                    id: formattedAddresses[i],
                  );
                }
              }
              emit(state.copyWith(
                providerRequests: providerRequests,
                filteredProviderRequests: providerRequests,
                isLoading: false,
              ));
            } else {
              emit(state.copyWith(isLoading: false));
              showCustomSnackbar('Error',
                  'Failed to fetch data: ${response['message'] ?? 'Unknown error'}');
            }
          } catch (e) {
            emit(state.copyWith(isLoading: false));
            showCustomSnackbar('Error', 'An error occurred: ${e.toString()}');
          }
        },
        updateProvider: (_) async {
          emit(state.copyWith(isLoadingUpdate: true));
          try {
            final response = await ApiServices.updateProvider(
              body: _.body,
              id: _.id,
            );

            if (response['success'] == true) {
              add(const ProvidersEvent.fetchProviderRequests());
              Navigator.pop(_.context);
              showCustomSnackbar('Success', 'Provider updated successfully',
                  backgroundColor: Colors.green);
            } else {
              emit(state.copyWith(isLoadingUpdate: false));
              showCustomSnackbar(
                  'Error', 'Update failed: ${response['message']}');
            }
          } catch (e) {
            emit(state.copyWith(isLoadingUpdate: false));
            showCustomSnackbar('Error', 'An error occurred: ${e.toString()}');
          } finally {
            emit(state.copyWith(isLoadingUpdate: false));
          }
        },
        deleteProvider: (_) async {
          emit(state.copyWith(isLoadingDelete: true));
          try {
            final response = await ApiServices.deleteProvider(id: _.id);

            if (response['success'] == true) {
              add(const ProvidersEvent.fetchProviderRequests());
              Navigator.pop(_.context);
              showCustomSnackbar('Success', 'Provider deleted successfully',
                  backgroundColor: Colors.green);
            } else {
              emit(state.copyWith(isLoadingDelete: false));
              showCustomSnackbar(
                  'Error', 'Delete failed: ${response['message']}');
            }
          } catch (e) {
            emit(state.copyWith(isLoadingDelete: false));
            showCustomSnackbar('Error', 'An error occurred: ${e.toString()}');
          } finally {
            emit(state.copyWith(isLoadingDelete: false));
          }
        },
      );
    });
  }
}
