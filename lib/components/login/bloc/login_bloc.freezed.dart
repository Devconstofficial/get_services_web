// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$LoginEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BuildContext context) login,
    required TResult Function() togglePasswordVisibility,
    required TResult Function(PhoneCountryData country) updateCountry,
    required TResult Function(String phoneNumber) updatePhoneNumber,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BuildContext context)? login,
    TResult? Function()? togglePasswordVisibility,
    TResult? Function(PhoneCountryData country)? updateCountry,
    TResult? Function(String phoneNumber)? updatePhoneNumber,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildContext context)? login,
    TResult Function()? togglePasswordVisibility,
    TResult Function(PhoneCountryData country)? updateCountry,
    TResult Function(String phoneNumber)? updatePhoneNumber,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoginUser value) login,
    required TResult Function(_TogglePasswordVisibility value)
        togglePasswordVisibility,
    required TResult Function(_UpdateCountry value) updateCountry,
    required TResult Function(_UpdatePhoneNumber value) updatePhoneNumber,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoginUser value)? login,
    TResult? Function(_TogglePasswordVisibility value)?
        togglePasswordVisibility,
    TResult? Function(_UpdateCountry value)? updateCountry,
    TResult? Function(_UpdatePhoneNumber value)? updatePhoneNumber,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoginUser value)? login,
    TResult Function(_TogglePasswordVisibility value)? togglePasswordVisibility,
    TResult Function(_UpdateCountry value)? updateCountry,
    TResult Function(_UpdatePhoneNumber value)? updatePhoneNumber,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginEventCopyWith<$Res> {
  factory $LoginEventCopyWith(
          LoginEvent value, $Res Function(LoginEvent) then) =
      _$LoginEventCopyWithImpl<$Res, LoginEvent>;
}

/// @nodoc
class _$LoginEventCopyWithImpl<$Res, $Val extends LoginEvent>
    implements $LoginEventCopyWith<$Res> {
  _$LoginEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LoginUserImplCopyWith<$Res> {
  factory _$$LoginUserImplCopyWith(
          _$LoginUserImpl value, $Res Function(_$LoginUserImpl) then) =
      __$$LoginUserImplCopyWithImpl<$Res>;
  @useResult
  $Res call({BuildContext context});
}

/// @nodoc
class __$$LoginUserImplCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res, _$LoginUserImpl>
    implements _$$LoginUserImplCopyWith<$Res> {
  __$$LoginUserImplCopyWithImpl(
      _$LoginUserImpl _value, $Res Function(_$LoginUserImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? context = null,
  }) {
    return _then(_$LoginUserImpl(
      null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
    ));
  }
}

/// @nodoc

class _$LoginUserImpl implements _LoginUser {
  const _$LoginUserImpl(this.context);

  @override
  final BuildContext context;

  @override
  String toString() {
    return 'LoginEvent.login(context: $context)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginUserImpl &&
            (identical(other.context, context) || other.context == context));
  }

  @override
  int get hashCode => Object.hash(runtimeType, context);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginUserImplCopyWith<_$LoginUserImpl> get copyWith =>
      __$$LoginUserImplCopyWithImpl<_$LoginUserImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BuildContext context) login,
    required TResult Function() togglePasswordVisibility,
    required TResult Function(PhoneCountryData country) updateCountry,
    required TResult Function(String phoneNumber) updatePhoneNumber,
  }) {
    return login(context);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BuildContext context)? login,
    TResult? Function()? togglePasswordVisibility,
    TResult? Function(PhoneCountryData country)? updateCountry,
    TResult? Function(String phoneNumber)? updatePhoneNumber,
  }) {
    return login?.call(context);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildContext context)? login,
    TResult Function()? togglePasswordVisibility,
    TResult Function(PhoneCountryData country)? updateCountry,
    TResult Function(String phoneNumber)? updatePhoneNumber,
    required TResult orElse(),
  }) {
    if (login != null) {
      return login(context);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoginUser value) login,
    required TResult Function(_TogglePasswordVisibility value)
        togglePasswordVisibility,
    required TResult Function(_UpdateCountry value) updateCountry,
    required TResult Function(_UpdatePhoneNumber value) updatePhoneNumber,
  }) {
    return login(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoginUser value)? login,
    TResult? Function(_TogglePasswordVisibility value)?
        togglePasswordVisibility,
    TResult? Function(_UpdateCountry value)? updateCountry,
    TResult? Function(_UpdatePhoneNumber value)? updatePhoneNumber,
  }) {
    return login?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoginUser value)? login,
    TResult Function(_TogglePasswordVisibility value)? togglePasswordVisibility,
    TResult Function(_UpdateCountry value)? updateCountry,
    TResult Function(_UpdatePhoneNumber value)? updatePhoneNumber,
    required TResult orElse(),
  }) {
    if (login != null) {
      return login(this);
    }
    return orElse();
  }
}

abstract class _LoginUser implements LoginEvent {
  const factory _LoginUser(final BuildContext context) = _$LoginUserImpl;

  BuildContext get context;
  @JsonKey(ignore: true)
  _$$LoginUserImplCopyWith<_$LoginUserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TogglePasswordVisibilityImplCopyWith<$Res> {
  factory _$$TogglePasswordVisibilityImplCopyWith(
          _$TogglePasswordVisibilityImpl value,
          $Res Function(_$TogglePasswordVisibilityImpl) then) =
      __$$TogglePasswordVisibilityImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TogglePasswordVisibilityImplCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res, _$TogglePasswordVisibilityImpl>
    implements _$$TogglePasswordVisibilityImplCopyWith<$Res> {
  __$$TogglePasswordVisibilityImplCopyWithImpl(
      _$TogglePasswordVisibilityImpl _value,
      $Res Function(_$TogglePasswordVisibilityImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$TogglePasswordVisibilityImpl implements _TogglePasswordVisibility {
  const _$TogglePasswordVisibilityImpl();

  @override
  String toString() {
    return 'LoginEvent.togglePasswordVisibility()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TogglePasswordVisibilityImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BuildContext context) login,
    required TResult Function() togglePasswordVisibility,
    required TResult Function(PhoneCountryData country) updateCountry,
    required TResult Function(String phoneNumber) updatePhoneNumber,
  }) {
    return togglePasswordVisibility();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BuildContext context)? login,
    TResult? Function()? togglePasswordVisibility,
    TResult? Function(PhoneCountryData country)? updateCountry,
    TResult? Function(String phoneNumber)? updatePhoneNumber,
  }) {
    return togglePasswordVisibility?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildContext context)? login,
    TResult Function()? togglePasswordVisibility,
    TResult Function(PhoneCountryData country)? updateCountry,
    TResult Function(String phoneNumber)? updatePhoneNumber,
    required TResult orElse(),
  }) {
    if (togglePasswordVisibility != null) {
      return togglePasswordVisibility();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoginUser value) login,
    required TResult Function(_TogglePasswordVisibility value)
        togglePasswordVisibility,
    required TResult Function(_UpdateCountry value) updateCountry,
    required TResult Function(_UpdatePhoneNumber value) updatePhoneNumber,
  }) {
    return togglePasswordVisibility(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoginUser value)? login,
    TResult? Function(_TogglePasswordVisibility value)?
        togglePasswordVisibility,
    TResult? Function(_UpdateCountry value)? updateCountry,
    TResult? Function(_UpdatePhoneNumber value)? updatePhoneNumber,
  }) {
    return togglePasswordVisibility?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoginUser value)? login,
    TResult Function(_TogglePasswordVisibility value)? togglePasswordVisibility,
    TResult Function(_UpdateCountry value)? updateCountry,
    TResult Function(_UpdatePhoneNumber value)? updatePhoneNumber,
    required TResult orElse(),
  }) {
    if (togglePasswordVisibility != null) {
      return togglePasswordVisibility(this);
    }
    return orElse();
  }
}

abstract class _TogglePasswordVisibility implements LoginEvent {
  const factory _TogglePasswordVisibility() = _$TogglePasswordVisibilityImpl;
}

/// @nodoc
abstract class _$$UpdateCountryImplCopyWith<$Res> {
  factory _$$UpdateCountryImplCopyWith(
          _$UpdateCountryImpl value, $Res Function(_$UpdateCountryImpl) then) =
      __$$UpdateCountryImplCopyWithImpl<$Res>;
  @useResult
  $Res call({PhoneCountryData country});
}

/// @nodoc
class __$$UpdateCountryImplCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res, _$UpdateCountryImpl>
    implements _$$UpdateCountryImplCopyWith<$Res> {
  __$$UpdateCountryImplCopyWithImpl(
      _$UpdateCountryImpl _value, $Res Function(_$UpdateCountryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? country = null,
  }) {
    return _then(_$UpdateCountryImpl(
      null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as PhoneCountryData,
    ));
  }
}

/// @nodoc

class _$UpdateCountryImpl implements _UpdateCountry {
  const _$UpdateCountryImpl(this.country);

  @override
  final PhoneCountryData country;

  @override
  String toString() {
    return 'LoginEvent.updateCountry(country: $country)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateCountryImpl &&
            (identical(other.country, country) || other.country == country));
  }

  @override
  int get hashCode => Object.hash(runtimeType, country);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateCountryImplCopyWith<_$UpdateCountryImpl> get copyWith =>
      __$$UpdateCountryImplCopyWithImpl<_$UpdateCountryImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BuildContext context) login,
    required TResult Function() togglePasswordVisibility,
    required TResult Function(PhoneCountryData country) updateCountry,
    required TResult Function(String phoneNumber) updatePhoneNumber,
  }) {
    return updateCountry(country);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BuildContext context)? login,
    TResult? Function()? togglePasswordVisibility,
    TResult? Function(PhoneCountryData country)? updateCountry,
    TResult? Function(String phoneNumber)? updatePhoneNumber,
  }) {
    return updateCountry?.call(country);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildContext context)? login,
    TResult Function()? togglePasswordVisibility,
    TResult Function(PhoneCountryData country)? updateCountry,
    TResult Function(String phoneNumber)? updatePhoneNumber,
    required TResult orElse(),
  }) {
    if (updateCountry != null) {
      return updateCountry(country);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoginUser value) login,
    required TResult Function(_TogglePasswordVisibility value)
        togglePasswordVisibility,
    required TResult Function(_UpdateCountry value) updateCountry,
    required TResult Function(_UpdatePhoneNumber value) updatePhoneNumber,
  }) {
    return updateCountry(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoginUser value)? login,
    TResult? Function(_TogglePasswordVisibility value)?
        togglePasswordVisibility,
    TResult? Function(_UpdateCountry value)? updateCountry,
    TResult? Function(_UpdatePhoneNumber value)? updatePhoneNumber,
  }) {
    return updateCountry?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoginUser value)? login,
    TResult Function(_TogglePasswordVisibility value)? togglePasswordVisibility,
    TResult Function(_UpdateCountry value)? updateCountry,
    TResult Function(_UpdatePhoneNumber value)? updatePhoneNumber,
    required TResult orElse(),
  }) {
    if (updateCountry != null) {
      return updateCountry(this);
    }
    return orElse();
  }
}

abstract class _UpdateCountry implements LoginEvent {
  const factory _UpdateCountry(final PhoneCountryData country) =
      _$UpdateCountryImpl;

  PhoneCountryData get country;
  @JsonKey(ignore: true)
  _$$UpdateCountryImplCopyWith<_$UpdateCountryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdatePhoneNumberImplCopyWith<$Res> {
  factory _$$UpdatePhoneNumberImplCopyWith(_$UpdatePhoneNumberImpl value,
          $Res Function(_$UpdatePhoneNumberImpl) then) =
      __$$UpdatePhoneNumberImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String phoneNumber});
}

/// @nodoc
class __$$UpdatePhoneNumberImplCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res, _$UpdatePhoneNumberImpl>
    implements _$$UpdatePhoneNumberImplCopyWith<$Res> {
  __$$UpdatePhoneNumberImplCopyWithImpl(_$UpdatePhoneNumberImpl _value,
      $Res Function(_$UpdatePhoneNumberImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phoneNumber = null,
  }) {
    return _then(_$UpdatePhoneNumberImpl(
      null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UpdatePhoneNumberImpl implements _UpdatePhoneNumber {
  const _$UpdatePhoneNumberImpl(this.phoneNumber);

  @override
  final String phoneNumber;

  @override
  String toString() {
    return 'LoginEvent.updatePhoneNumber(phoneNumber: $phoneNumber)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdatePhoneNumberImpl &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber));
  }

  @override
  int get hashCode => Object.hash(runtimeType, phoneNumber);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdatePhoneNumberImplCopyWith<_$UpdatePhoneNumberImpl> get copyWith =>
      __$$UpdatePhoneNumberImplCopyWithImpl<_$UpdatePhoneNumberImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BuildContext context) login,
    required TResult Function() togglePasswordVisibility,
    required TResult Function(PhoneCountryData country) updateCountry,
    required TResult Function(String phoneNumber) updatePhoneNumber,
  }) {
    return updatePhoneNumber(phoneNumber);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BuildContext context)? login,
    TResult? Function()? togglePasswordVisibility,
    TResult? Function(PhoneCountryData country)? updateCountry,
    TResult? Function(String phoneNumber)? updatePhoneNumber,
  }) {
    return updatePhoneNumber?.call(phoneNumber);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildContext context)? login,
    TResult Function()? togglePasswordVisibility,
    TResult Function(PhoneCountryData country)? updateCountry,
    TResult Function(String phoneNumber)? updatePhoneNumber,
    required TResult orElse(),
  }) {
    if (updatePhoneNumber != null) {
      return updatePhoneNumber(phoneNumber);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoginUser value) login,
    required TResult Function(_TogglePasswordVisibility value)
        togglePasswordVisibility,
    required TResult Function(_UpdateCountry value) updateCountry,
    required TResult Function(_UpdatePhoneNumber value) updatePhoneNumber,
  }) {
    return updatePhoneNumber(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoginUser value)? login,
    TResult? Function(_TogglePasswordVisibility value)?
        togglePasswordVisibility,
    TResult? Function(_UpdateCountry value)? updateCountry,
    TResult? Function(_UpdatePhoneNumber value)? updatePhoneNumber,
  }) {
    return updatePhoneNumber?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoginUser value)? login,
    TResult Function(_TogglePasswordVisibility value)? togglePasswordVisibility,
    TResult Function(_UpdateCountry value)? updateCountry,
    TResult Function(_UpdatePhoneNumber value)? updatePhoneNumber,
    required TResult orElse(),
  }) {
    if (updatePhoneNumber != null) {
      return updatePhoneNumber(this);
    }
    return orElse();
  }
}

abstract class _UpdatePhoneNumber implements LoginEvent {
  const factory _UpdatePhoneNumber(final String phoneNumber) =
      _$UpdatePhoneNumberImpl;

  String get phoneNumber;
  @JsonKey(ignore: true)
  _$$UpdatePhoneNumberImplCopyWith<_$UpdatePhoneNumberImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$LoginState {
  UserResponseModel? get userData => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isPasswordObscured => throw _privateConstructorUsedError;
  TextEditingController get phoneNumberController =>
      throw _privateConstructorUsedError;
  TextEditingController get passwordController =>
      throw _privateConstructorUsedError;
  PhoneCountryData get country => throw _privateConstructorUsedError;
  String get phoneNumber => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LoginStateCopyWith<LoginState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginStateCopyWith<$Res> {
  factory $LoginStateCopyWith(
          LoginState value, $Res Function(LoginState) then) =
      _$LoginStateCopyWithImpl<$Res, LoginState>;
  @useResult
  $Res call(
      {UserResponseModel? userData,
      bool isLoading,
      bool isPasswordObscured,
      TextEditingController phoneNumberController,
      TextEditingController passwordController,
      PhoneCountryData country,
      String phoneNumber});
}

/// @nodoc
class _$LoginStateCopyWithImpl<$Res, $Val extends LoginState>
    implements $LoginStateCopyWith<$Res> {
  _$LoginStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userData = freezed,
    Object? isLoading = null,
    Object? isPasswordObscured = null,
    Object? phoneNumberController = null,
    Object? passwordController = null,
    Object? country = null,
    Object? phoneNumber = null,
  }) {
    return _then(_value.copyWith(
      userData: freezed == userData
          ? _value.userData
          : userData // ignore: cast_nullable_to_non_nullable
              as UserResponseModel?,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isPasswordObscured: null == isPasswordObscured
          ? _value.isPasswordObscured
          : isPasswordObscured // ignore: cast_nullable_to_non_nullable
              as bool,
      phoneNumberController: null == phoneNumberController
          ? _value.phoneNumberController
          : phoneNumberController // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      passwordController: null == passwordController
          ? _value.passwordController
          : passwordController // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as PhoneCountryData,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LoginStateImplCopyWith<$Res>
    implements $LoginStateCopyWith<$Res> {
  factory _$$LoginStateImplCopyWith(
          _$LoginStateImpl value, $Res Function(_$LoginStateImpl) then) =
      __$$LoginStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {UserResponseModel? userData,
      bool isLoading,
      bool isPasswordObscured,
      TextEditingController phoneNumberController,
      TextEditingController passwordController,
      PhoneCountryData country,
      String phoneNumber});
}

/// @nodoc
class __$$LoginStateImplCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$LoginStateImpl>
    implements _$$LoginStateImplCopyWith<$Res> {
  __$$LoginStateImplCopyWithImpl(
      _$LoginStateImpl _value, $Res Function(_$LoginStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userData = freezed,
    Object? isLoading = null,
    Object? isPasswordObscured = null,
    Object? phoneNumberController = null,
    Object? passwordController = null,
    Object? country = null,
    Object? phoneNumber = null,
  }) {
    return _then(_$LoginStateImpl(
      userData: freezed == userData
          ? _value.userData
          : userData // ignore: cast_nullable_to_non_nullable
              as UserResponseModel?,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isPasswordObscured: null == isPasswordObscured
          ? _value.isPasswordObscured
          : isPasswordObscured // ignore: cast_nullable_to_non_nullable
              as bool,
      phoneNumberController: null == phoneNumberController
          ? _value.phoneNumberController
          : phoneNumberController // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      passwordController: null == passwordController
          ? _value.passwordController
          : passwordController // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as PhoneCountryData,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LoginStateImpl implements _LoginState {
  const _$LoginStateImpl(
      {required this.userData,
      required this.isLoading,
      required this.isPasswordObscured,
      required this.phoneNumberController,
      required this.passwordController,
      required this.country,
      required this.phoneNumber});

  @override
  final UserResponseModel? userData;
  @override
  final bool isLoading;
  @override
  final bool isPasswordObscured;
  @override
  final TextEditingController phoneNumberController;
  @override
  final TextEditingController passwordController;
  @override
  final PhoneCountryData country;
  @override
  final String phoneNumber;

  @override
  String toString() {
    return 'LoginState(userData: $userData, isLoading: $isLoading, isPasswordObscured: $isPasswordObscured, phoneNumberController: $phoneNumberController, passwordController: $passwordController, country: $country, phoneNumber: $phoneNumber)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginStateImpl &&
            (identical(other.userData, userData) ||
                other.userData == userData) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isPasswordObscured, isPasswordObscured) ||
                other.isPasswordObscured == isPasswordObscured) &&
            (identical(other.phoneNumberController, phoneNumberController) ||
                other.phoneNumberController == phoneNumberController) &&
            (identical(other.passwordController, passwordController) ||
                other.passwordController == passwordController) &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      userData,
      isLoading,
      isPasswordObscured,
      phoneNumberController,
      passwordController,
      country,
      phoneNumber);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginStateImplCopyWith<_$LoginStateImpl> get copyWith =>
      __$$LoginStateImplCopyWithImpl<_$LoginStateImpl>(this, _$identity);
}

abstract class _LoginState implements LoginState {
  const factory _LoginState(
      {required final UserResponseModel? userData,
      required final bool isLoading,
      required final bool isPasswordObscured,
      required final TextEditingController phoneNumberController,
      required final TextEditingController passwordController,
      required final PhoneCountryData country,
      required final String phoneNumber}) = _$LoginStateImpl;

  @override
  UserResponseModel? get userData;
  @override
  bool get isLoading;
  @override
  bool get isPasswordObscured;
  @override
  TextEditingController get phoneNumberController;
  @override
  TextEditingController get passwordController;
  @override
  PhoneCountryData get country;
  @override
  String get phoneNumber;
  @override
  @JsonKey(ignore: true)
  _$$LoginStateImplCopyWith<_$LoginStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
