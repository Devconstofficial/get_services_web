part of 'forgot_password_bloc.dart';

@freezed
class ForgotPasswordState with _$ForgotPasswordState {
  const factory ForgotPasswordState({
    required bool isLoading,
    required bool isPasswordObscured,
    required bool isConfirmPasswordObscured,
    required TextEditingController phoneNumberController,
    required TextEditingController passwordController,
    required TextEditingController confirmPasswordController,
    required PhoneCountryData country,
    required String phoneNumber,
  }) = _ForgotPasswordState;

  factory ForgotPasswordState.initial() => ForgotPasswordState(
        isLoading: false,
        isPasswordObscured: true,
        isConfirmPasswordObscured: true,
        phoneNumberController: TextEditingController(),
        passwordController: TextEditingController(),
        confirmPasswordController: TextEditingController(),
        country: PhoneCountryData.fromMap({
          'countryCode': 'PK',
          'phoneCode': '+92',
          'countryName': 'Pakistan',
        }),
        phoneNumber: '',
      );
}
