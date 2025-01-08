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
          emit(state.copyWith(
              customStartDate: _.startDate, customEndDate: _.endDate));
        },
        setProviderStatus: (_) async {
          List<CategoriesModel> categoriesModel =
              List.from(state.providerStatus);
          CategoriesModel updatedData =
              categoriesModel[_.index].copyWith(isSelected: _.value);
          categoriesModel[_.index] = updatedData;
          emit(state.copyWith(providerStatus: categoriesModel));
        },
        resetFilter: (_) async {
          List<CategoriesModel> categoriesModel =
              List.from(state.providerStatus);
          for (int i = 0; i < categoriesModel.length; i++) {
            CategoriesModel updatedData =
                categoriesModel[i].copyWith(isSelected: false);
            categoriesModel[i] = updatedData;
          }
          emit(state.copyWith(
              providerStatus: categoriesModel,
              customEndDate: null,
              customStartDate: null));
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
          emit(state.copyWith(isLoading: true));
          try {
            final response = await ApiServices.updateProvider(
              body: _.body,
              id: _.id,
            );
            log('Update Response: $response');
            if (response['success'] == true) {
              add(const ProvidersEvent.fetchProviderRequests());
              Navigator.pop(_.context);
              showCustomSnackbar('Success', 'Provider updated successfully',
                  backgroundColor: Colors.green);
            } else {
              showCustomSnackbar(
                  'Error', 'Update failed: ${response['message']}');
            }
          } catch (e) {
            showCustomSnackbar('Error', 'An error occurred: ${e.toString()}');
          } finally {
            emit(state.copyWith(isLoading: false));
          }
        },
        deleteProvider: (_) async {
          emit(state.copyWith(isLoading: true));
          try {
            final response = await ApiServices.deleteProvider(id: _.id);
            log('Delete Response: $response');
            if (response['success'] == true) {
              add(const ProvidersEvent.fetchProviderRequests());
              Navigator.pop(_.context);
              showCustomSnackbar('Success', 'Provider deleted successfully',
                  backgroundColor: Colors.green);
            } else {
              showCustomSnackbar(
                  'Error', 'Delete failed: ${response['message']}');
            }
          } catch (e) {
            showCustomSnackbar('Error', 'An error occurred: ${e.toString()}');
          } finally {
            emit(state.copyWith(isLoading: false));
          }
        },
      );
    });
  }
}
