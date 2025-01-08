part of 'forgot_password_bloc.dart';

@freezed
class ForgotPasswordEvent with _$ForgotPasswordEvent {
  const factory ForgotPasswordEvent.forgotPassword(BuildContext context) =
      _ForgotPassword;
  const factory ForgotPasswordEvent.togglePasswordVisibility() =
      _TogglePasswordVisibility;
  const factory ForgotPasswordEvent.toggleConfirmPasswordVisibility() =
      _ToggleConfirmPasswordVisibility;
  const factory ForgotPasswordEvent.updateCountry(PhoneCountryData country) =
      _UpdateCountry;
  const factory ForgotPasswordEvent.updatePhoneNumber(String phoneNumber) =
      _UpdatePhoneNumber;
}
