import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_multi_formatter/formatters/phone_input_formatter.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get_services/common_model/user_response_model.dart';
import 'package:get_services/components/home_page/screens/home_page.dart';
import 'package:get_services/services/api_services.dart';
import 'package:get_services/shared_preferences.dart';
import 'package:get_services/utils/custom_snackbar.dart';

part 'login_event.dart';
part 'login_state.dart';
part 'login_bloc.freezed.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(LoginState.initial()) {
    final PreferencesService prefs = PreferencesService();
    on<LoginEvent>((event, emit) async {
      await event.map(
        login: (_) async {
          emit(state.copyWith(isLoading: true));
          try {
            final response = await ApiServices.login(body: {
              'phoneNumber': state.phoneNumber,
              'password': state.passwordController.text,
            });
            log('ress $response');
            if (response['success'] == true && response['data'] != null) {
              final userResponseModel =
                  UserResponseModel.fromJson(response['data']['user']);

              prefs.setUserLogin(true);
              prefs.saveUserModel(userResponseModel);
              prefs.setUserToken(response['data']['authToken']);

              emit(state.copyWith(
                userData: userResponseModel,
                isLoading: false,
              ));

              Navigator.pushReplacement(
                _.context,
                MaterialPageRoute(builder: (context) => const MyHomePage()),
              );
            } else {
              emit(state.copyWith(isLoading: false));
              showCustomSnackbar(
                'Error',
                'Failed to login : ${response['message'] ?? 'Unknown error'}',
              );
            }
          } catch (e) {
            emit(state.copyWith(isLoading: false));
            showCustomSnackbar('Error', 'An error occurred: ${e.toString()}');
          }
        },
        togglePasswordVisibility: (_) {
          emit(state.copyWith(
            isPasswordObscured: !state.isPasswordObscured,
          ));
        },
        updateCountry: (event) {
          emit(state.copyWith(country: event.country));
        },
        updatePhoneNumber: (event) {
          emit(state.copyWith(phoneNumber: event.phoneNumber));
        },
      );
    });
  }
}
