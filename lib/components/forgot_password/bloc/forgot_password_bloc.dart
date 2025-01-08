import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_multi_formatter/flutter_multi_formatter.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get_services/services/api_services.dart';
import 'package:get_services/utils/custom_snackbar.dart';

part 'forgot_password_event.dart';
part 'forgot_password_state.dart';
part 'forgot_password_bloc.freezed.dart';

class ForgotPasswordBloc
    extends Bloc<ForgotPasswordEvent, ForgotPasswordState> {
  ForgotPasswordBloc() : super(ForgotPasswordState.initial()) {
    on<ForgotPasswordEvent>((event, emit) async {
      await event.map(
        forgotPassword: (_) async {
          if (state.passwordController.text.isEmpty ||
              state.confirmPasswordController.text.isEmpty) {
            showCustomSnackbar("Error", 'Password cannot be empty');
          } else if (state.passwordController.text !=
              state.confirmPasswordController.text) {
            showCustomSnackbar(
              "Error",
              'New Password and Confirm new password must be same',
            );
          } else {
            emit(state.copyWith(isLoading: true));
            try {
              final response = await ApiServices.login(body: {
                'phoneNumber': state.phoneNumber,
                'password': state.passwordController.text,
              });

              if (response['success'] == true) {
                emit(state.copyWith(
                  isLoading: false,
                ));
                showCustomSnackbar("Success", 'Password updated successfully',
                    backgroundColor: Colors.green);

                Navigator.pop(_.context);
                Navigator.pop(_.context);
              } else {
                emit(state.copyWith(isLoading: false));
                showCustomSnackbar(
                  'Error',
                  'Failed to fetch data: ${response['message'] ?? 'Unknown error'}',
                );
              }
            } catch (e) {
              emit(state.copyWith(isLoading: false));
              showCustomSnackbar('Error', 'An error occurred: ${e.toString()}');
            }
          }
        },
        togglePasswordVisibility: (_) {
          emit(state.copyWith(
            isPasswordObscured: !state.isPasswordObscured,
          ));
        },
        toggleConfirmPasswordVisibility: (_) {
          emit(state.copyWith(
            isConfirmPasswordObscured: !state.isConfirmPasswordObscured,
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
