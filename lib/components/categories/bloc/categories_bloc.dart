import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get/get.dart';
import 'package:get_services/services/api_services.dart';
import 'package:get_services/services/http.dart';
import 'package:get_services/utils/custom_snackbar.dart';
import '../model/categories_model.dart';
part 'categories_event.dart';
part 'categories_state.dart';
part 'categories_bloc.freezed.dart';

class CategoriesBloc extends Bloc<CategoriesEvent, CategoriesState> {
  CategoriesBloc() : super(CategoriesState.initial()) {
    on<CategoriesEvent>(
      (event, emit) async {
        await event.map(changeDeleteModeCategory: (_) async {
          emit(state.copyWith(isDeletionModeCategory: _.value));
        }, setCurrentCategory: (_) async {
          List<CategoriesData> categoriesModel = List.from(state.categories);
          if (_.index < 0 || _.index > categoriesModel.length - 1) {
            for (int i = 0; i < categoriesModel.length; i++) {
              if (i == 0) {
                CategoriesData updatedData =
                    categoriesModel[_.index].copyWith(isUpdating: true);
                categoriesModel[_.index] = updatedData;
              } else {
                CategoriesData updatedData =
                    categoriesModel[i].copyWith(isUpdating: false);
                categoriesModel[i] = updatedData;
              }
            }
          } else {
            for (int i = 0; i < categoriesModel.length; i++) {
              if (i == _.index) {
                CategoriesData updatedData =
                    categoriesModel[_.index].copyWith(isUpdating: true);
                categoriesModel[_.index] = updatedData;
              } else {
                CategoriesData updatedData =
                    categoriesModel[i].copyWith(isUpdating: false);
                categoriesModel[i] = updatedData;
              }
            }
          }
          emit(state.copyWith(categories: categoriesModel));
        }, changeDeleteModeSubCategory: (_) async {
          emit(state.copyWith(isDeletionModeSubcategory: _.value));
        }, fetchCategoriesAndServices: (_) async {
          emit(state.copyWith(isLoading: true));

          try {
            final categoriesResponse = await ApiServices.viewAllCategories();

            if (categoriesResponse['success'] == true) {
              final categoriesData = categoriesResponse['message']['data'];

              final servicesResponse = await ApiServices.viewAllServices();

              if (servicesResponse['success'] == true) {
                final servicesData = servicesResponse['message']['data'];

                final List<CategoriesData> categories =
                    categoriesData.map<CategoriesData>((category) {
                  final String categoryId = category['_id'];

                  final List<SubCategoryData> subCategories = servicesData
                      .where(
                          (service) => service['category']['_id'] == categoryId)
                      .map<SubCategoryData>((service) {
                    return SubCategoryData(
                      subCategoryId: service['_id'],
                      subCategoryName: service['serviceName'],
                    );
                  }).toList();

                  return CategoriesData(
                    categoryId: categoryId,
                    category: category['name'],
                    imagePath: category['image'],
                    isUpdating: false,
                    subCategory: subCategories,
                  );
                }).toList();

                emit(state.copyWith(categories: categories, isLoading: false));
              } else {
                emit(state.copyWith(isLoading: false));
                showCustomSnackbar(
                  'Error',
                  'Failed to fetch services: ${servicesResponse['message'] ?? 'Unknown error'}',
                );
              }
            } else {
              emit(state.copyWith(isLoading: false));
              showCustomSnackbar(
                'Error',
                'Failed to fetch categories: ${categoriesResponse['message'] ?? 'Unknown error'}',
              );
            }
          } catch (e) {
            emit(state.copyWith(isLoading: false));
            showCustomSnackbar('Error', 'An error occurred: ${e.toString()}');
          }
        }, deleteCategory: (_) async {
          emit(state.copyWith(deletingCategoryId: _.categoryId));

          try {
            final response = await ApiServices.deleteCategory(id: _.categoryId);

            if (response['success'] == true) {
              final updatedCategories = state.categories
                  .where((category) => category.categoryId != _.categoryId)
                  .toList();

              emit(state.copyWith(
                categories: updatedCategories,
                deletingCategoryId: null,
              ));
              showCustomSnackbar('Success', 'Category deleted successfully.',
                  backgroundColor: Colors.green);
            } else {
              emit(state.copyWith(
                  deletingCategoryId: null, isDeletionModeCategory: false));
              showCustomSnackbar(
                'Error',
                'Failed to delete category: ${response['message'] ?? 'Unknown error'}',
              );
            }
          } catch (e) {
            emit(state.copyWith(deletingCategoryId: null));
            showCustomSnackbar('Error', 'An error occurred: ${e.toString()}');
          }
        }, deleteSubCategory: (_) async {
          emit(state.copyWith(deletingSubCategoryId: _.subCategoryId));

          try {
            final response =
                await ApiServices.deleteService(id: _.subCategoryId);

            if (response['success'] == true) {
              final updatedCategories = state.categories.map((category) {
                final updatedSubCategories = category.subCategory
                    .where((subCategory) =>
                        subCategory.subCategoryId != _.subCategoryId)
                    .toList();

                return category.copyWith(subCategory: updatedSubCategories);
              }).toList();

              emit(state.copyWith(
                  categories: updatedCategories, deletingSubCategoryId: null));
              showCustomSnackbar('Success', 'Subcategory deleted successfully.',
                  backgroundColor: Colors.green);
            } else {
              emit(state.copyWith(
                  deletingSubCategoryId: null,
                  isDeletionModeSubcategory: false));
              showCustomSnackbar(
                'Error',
                'Failed to delete subcategory: ${response['message'] ?? 'Unknown error'}',
              );
            }
          } catch (e) {
            emit(state.copyWith(deletingSubCategoryId: null));
            showCustomSnackbar('Error', 'An error occurred: ${e.toString()}');
          }
        }, addCategory: (event) async {
          if (event.name == null || event.name!.isEmpty) {
            showCustomSnackbar('Error', 'Category name cannot be empty.');
            return;
          }

          if (event.imageFile!.isEmpty) {
            showCustomSnackbar('Error', 'Category image cannot be null.');
            return;
          }

          emit(state.copyWith(isAddingCategory: true));

          try {
            final imageUrl =
                await HttpServiceManager.uploadCategoryImage(event.imageFile);

            final Map<String, dynamic> requestBody = {
              'name': event.name,
              'image': imageUrl,
            };

            log('bodyy $requestBody');

            final response = await ApiServices.addCategory(body: requestBody);

            if (response['success'] == true &&
                response['message']['success'] == true) {
              final newCategory = CategoriesData(
                categoryId: response['message']['data']['_id'],
                category: response['message']['data']['name'],
                imagePath: response['message']['data']['image'],
                isUpdating: false,
                subCategory: [],
              );

              emit(state.copyWith(
                categories: [...state.categories, newCategory],
                isAddingCategory: false,
              ));
              Get.back();
              showCustomSnackbar('Success', 'Category added successfully.',
                  backgroundColor: Colors.green);
            } else {
              emit(state.copyWith(isAddingCategory: false));
              showCustomSnackbar(
                'Error',
                'Failed to add category: ${response['message'] ?? 'Unknown error'}',
              );
            }
          } catch (e) {
            emit(state.copyWith(isAddingCategory: false));
            showCustomSnackbar('Error', 'An error occurred: ${e.toString()}');
          }
        }, addService: (event) async {
          if (event.serviceName.isEmpty) {
            showCustomSnackbar('Error', 'Service name cannot be empty.');
            return;
          }

          emit(state.copyWith(isAddingService: true));

          try {
            final Map<String, dynamic> requestBody = {
              'serviceName': event.serviceName,
              'categoryId': event.categoryId,
            };

            final response = await ApiServices.addService(body: requestBody);
            log('Ress $response');
            if (response['success'] == true &&
                response['message']['success'] == true) {
              final newService = SubCategoryData(
                subCategoryId: response['message']['data']['_id'],
                subCategoryName: response['message']['data']['serviceName'],
              );

              final updatedCategories = state.categories.map((category) {
                if (category.categoryId == event.categoryId) {
                  return category.copyWith(
                    subCategory: [
                      ...category.subCategory,
                      newService,
                    ],
                  );
                }
                return category;
              }).toList();

              emit(state.copyWith(
                categories: updatedCategories,
                isAddingService: false,
              ));
              Get.back();
              showCustomSnackbar('Success', 'Service added successfully.',
                  backgroundColor: Colors.green);
            } else {
              emit(state.copyWith(isAddingService: false));
              showCustomSnackbar(
                'Error',
                'Failed to add service: ${response['message'] ?? 'Unknown error'}',
              );
            }
          } catch (e) {
            emit(state.copyWith(isAddingService: false));
            showCustomSnackbar('Error', 'An error occurred: ${e.toString()}');
          }
        });
      },
    );
  }
}
