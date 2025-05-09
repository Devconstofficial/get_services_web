part of 'login_bloc.dart';

@freezed
class LoginEvent with _$LoginEvent {
  const factory LoginEvent.login(BuildContext context) = _LoginUser;
  const factory LoginEvent.togglePasswordVisibility() =
      _TogglePasswordVisibility;
  const factory LoginEvent.updateCountry(PhoneCountryData country) =
      _UpdateCountry;
  const factory LoginEvent.updatePhoneNumber(String phoneNumber) =
      _UpdatePhoneNumber;
}
