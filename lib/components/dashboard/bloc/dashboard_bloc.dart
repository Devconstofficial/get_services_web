import 'package:bloc/bloc.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get_services/common_model/categories_model.dart';
import 'package:get_services/services/api_services.dart';
import 'package:get_services/utils/custom_snackbar.dart';
import '../model/provider_request.dart';
import '../model/revenue_data.dart';

part 'dashboard_event.dart';
part 'dashboard_state.dart';
part 'dashboard_bloc.freezed.dart';

class DashBoardBloc extends Bloc<DashBoardEvent, DashBoardState> {
  DashBoardBloc() : super(DashBoardState.initial()) {
    on<DashBoardEvent>(
      (event, emit) async {
        await event.map(
          changeCurrentTablePageIndex: (_) async {
            emit(state.copyWith(currentTablePageIndex: _.index));
          },
          setCurrentMonth: (_) async {
            List<CategoriesModel> categoriesModel = List.from(state.months);
            if (_.index < 0 || _.index > categoriesModel.length - 1) {
              for (int i = 0; i < categoriesModel.length; i++) {
                if (i == 0) {
                  CategoriesModel updatedData =
                      categoriesModel[_.index].copyWith(isSelected: true);
                  categoriesModel[_.index] = updatedData;
                } else {
                  CategoriesModel updatedData =
                      categoriesModel[i].copyWith(isSelected: false);
                  categoriesModel[i] = updatedData;
                }
              }
            } else {
              for (int i = 0; i < categoriesModel.length; i++) {
                if (i == _.index) {
                  CategoriesModel updatedData =
                      categoriesModel[_.index].copyWith(isSelected: true);
                  categoriesModel[_.index] = updatedData;
                } else {
                  CategoriesModel updatedData =
                      categoriesModel[i].copyWith(isSelected: false);
                  categoriesModel[i] = updatedData;
                }
              }
            }
            emit(state.copyWith(months: categoriesModel));
          },
          fetchProviderRequests: (_) async {
            emit(state.copyWith(isLoading: true));
            try {
              final response = await ApiServices.viewAllProviders();

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
            emit(state.copyWith(isLoadingUpdate: true));
            try {
              final response = await ApiServices.updateProvider(
                body: _.body,
                id: _.id,
              );

              if (response['success'] == true) {
                add(const DashBoardEvent.fetchProviderRequests());
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
                add(const DashBoardEvent.fetchProviderRequests());
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
      },
    );
  }
}
