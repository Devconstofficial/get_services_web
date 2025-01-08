part of 'login_bloc.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState({
    required UserResponseModel? userData,
    required bool isLoading,
    required bool isPasswordObscured,
    required TextEditingController phoneNumberController,
    required TextEditingController passwordController,
    required PhoneCountryData country,
    required String phoneNumber,
  }) = _LoginState;

  factory LoginState.initial() => LoginState(
        userData: null,
        isLoading: false,
        isPasswordObscured: true,
        phoneNumberController: TextEditingController(),
        passwordController: TextEditingController(),
        country: PhoneCountryData.fromMap({
          'countryCode': 'PK',
          'phoneCode': '+92',
          'countryName': 'Pakistan',
        }),
        phoneNumber: '',
      );
}
