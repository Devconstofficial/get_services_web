// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'forgot_password_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ForgotPasswordEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BuildContext context) forgotPassword,
    required TResult Function() togglePasswordVisibility,
    required TResult Function() toggleConfirmPasswordVisibility,
    required TResult Function(PhoneCountryData country) updateCountry,
    required TResult Function(String phoneNumber) updatePhoneNumber,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BuildContext context)? forgotPassword,
    TResult? Function()? togglePasswordVisibility,
    TResult? Function()? toggleConfirmPasswordVisibility,
    TResult? Function(PhoneCountryData country)? updateCountry,
    TResult? Function(String phoneNumber)? updatePhoneNumber,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildContext context)? forgotPassword,
    TResult Function()? togglePasswordVisibility,
    TResult Function()? toggleConfirmPasswordVisibility,
    TResult Function(PhoneCountryData country)? updateCountry,
    TResult Function(String phoneNumber)? updatePhoneNumber,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ForgotPassword value) forgotPassword,
    required TResult Function(_TogglePasswordVisibility value)
        togglePasswordVisibility,
    required TResult Function(_ToggleConfirmPasswordVisibility value)
        toggleConfirmPasswordVisibility,
    required TResult Function(_UpdateCountry value) updateCountry,
    required TResult Function(_UpdatePhoneNumber value) updatePhoneNumber,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ForgotPassword value)? forgotPassword,
    TResult? Function(_TogglePasswordVisibility value)?
        togglePasswordVisibility,
    TResult? Function(_ToggleConfirmPasswordVisibility value)?
        toggleConfirmPasswordVisibility,
    TResult? Function(_UpdateCountry value)? updateCountry,
    TResult? Function(_UpdatePhoneNumber value)? updatePhoneNumber,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ForgotPassword value)? forgotPassword,
    TResult Function(_TogglePasswordVisibility value)? togglePasswordVisibility,
    TResult Function(_ToggleConfirmPasswordVisibility value)?
        toggleConfirmPasswordVisibility,
    TResult Function(_UpdateCountry value)? updateCountry,
    TResult Function(_UpdatePhoneNumber value)? updatePhoneNumber,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ForgotPasswordEventCopyWith<$Res> {
  factory $ForgotPasswordEventCopyWith(
          ForgotPasswordEvent value, $Res Function(ForgotPasswordEvent) then) =
      _$ForgotPasswordEventCopyWithImpl<$Res, ForgotPasswordEvent>;
}

/// @nodoc
class _$ForgotPasswordEventCopyWithImpl<$Res, $Val extends ForgotPasswordEvent>
    implements $ForgotPasswordEventCopyWith<$Res> {
  _$ForgotPasswordEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ForgotPasswordImplCopyWith<$Res> {
  factory _$$ForgotPasswordImplCopyWith(_$ForgotPasswordImpl value,
          $Res Function(_$ForgotPasswordImpl) then) =
      __$$ForgotPasswordImplCopyWithImpl<$Res>;
  @useResult
  $Res call({BuildContext context});
}

/// @nodoc
class __$$ForgotPasswordImplCopyWithImpl<$Res>
    extends _$ForgotPasswordEventCopyWithImpl<$Res, _$ForgotPasswordImpl>
    implements _$$ForgotPasswordImplCopyWith<$Res> {
  __$$ForgotPasswordImplCopyWithImpl(
      _$ForgotPasswordImpl _value, $Res Function(_$ForgotPasswordImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? context = null,
  }) {
    return _then(_$ForgotPasswordImpl(
      null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
    ));
  }
}

/// @nodoc

class _$ForgotPasswordImpl implements _ForgotPassword {
  const _$ForgotPasswordImpl(this.context);

  @override
  final BuildContext context;

  @override
  String toString() {
    return 'ForgotPasswordEvent.forgotPassword(context: $context)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ForgotPasswordImpl &&
            (identical(other.context, context) || other.context == context));
  }

  @override
  int get hashCode => Object.hash(runtimeType, context);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ForgotPasswordImplCopyWith<_$ForgotPasswordImpl> get copyWith =>
      __$$ForgotPasswordImplCopyWithImpl<_$ForgotPasswordImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BuildContext context) forgotPassword,
    required TResult Function() togglePasswordVisibility,
    required TResult Function() toggleConfirmPasswordVisibility,
    required TResult Function(PhoneCountryData country) updateCountry,
    required TResult Function(String phoneNumber) updatePhoneNumber,
  }) {
    return forgotPassword(context);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BuildContext context)? forgotPassword,
    TResult? Function()? togglePasswordVisibility,
    TResult? Function()? toggleConfirmPasswordVisibility,
    TResult? Function(PhoneCountryData country)? updateCountry,
    TResult? Function(String phoneNumber)? updatePhoneNumber,
  }) {
    return forgotPassword?.call(context);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildContext context)? forgotPassword,
    TResult Function()? togglePasswordVisibility,
    TResult Function()? toggleConfirmPasswordVisibility,
    TResult Function(PhoneCountryData country)? updateCountry,
    TResult Function(String phoneNumber)? updatePhoneNumber,
    required TResult orElse(),
  }) {
    if (forgotPassword != null) {
      return forgotPassword(context);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ForgotPassword value) forgotPassword,
    required TResult Function(_TogglePasswordVisibility value)
        togglePasswordVisibility,
    required TResult Function(_ToggleConfirmPasswordVisibility value)
        toggleConfirmPasswordVisibility,
    required TResult Function(_UpdateCountry value) updateCountry,
    required TResult Function(_UpdatePhoneNumber value) updatePhoneNumber,
  }) {
    return forgotPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ForgotPassword value)? forgotPassword,
    TResult? Function(_TogglePasswordVisibility value)?
        togglePasswordVisibility,
    TResult? Function(_ToggleConfirmPasswordVisibility value)?
        toggleConfirmPasswordVisibility,
    TResult? Function(_UpdateCountry value)? updateCountry,
    TResult? Function(_UpdatePhoneNumber value)? updatePhoneNumber,
  }) {
    return forgotPassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ForgotPassword value)? forgotPassword,
    TResult Function(_TogglePasswordVisibility value)? togglePasswordVisibility,
    TResult Function(_ToggleConfirmPasswordVisibility value)?
        toggleConfirmPasswordVisibility,
    TResult Function(_UpdateCountry value)? updateCountry,
    TResult Function(_UpdatePhoneNumber value)? updatePhoneNumber,
    required TResult orElse(),
  }) {
    if (forgotPassword != null) {
      return forgotPassword(this);
    }
    return orElse();
  }
}

abstract class _ForgotPassword implements ForgotPasswordEvent {
  const factory _ForgotPassword(final BuildContext context) =
      _$ForgotPasswordImpl;

  BuildContext get context;
  @JsonKey(ignore: true)
  _$$ForgotPasswordImplCopyWith<_$ForgotPasswordImpl> get copyWith =>
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
    extends _$ForgotPasswordEventCopyWithImpl<$Res,
        _$TogglePasswordVisibilityImpl>
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
    return 'ForgotPasswordEvent.togglePasswordVisibility()';
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
    required TResult Function(BuildContext context) forgotPassword,
    required TResult Function() togglePasswordVisibility,
    required TResult Function() toggleConfirmPasswordVisibility,
    required TResult Function(PhoneCountryData country) updateCountry,
    required TResult Function(String phoneNumber) updatePhoneNumber,
  }) {
    return togglePasswordVisibility();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BuildContext context)? forgotPassword,
    TResult? Function()? togglePasswordVisibility,
    TResult? Function()? toggleConfirmPasswordVisibility,
    TResult? Function(PhoneCountryData country)? updateCountry,
    TResult? Function(String phoneNumber)? updatePhoneNumber,
  }) {
    return togglePasswordVisibility?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildContext context)? forgotPassword,
    TResult Function()? togglePasswordVisibility,
    TResult Function()? toggleConfirmPasswordVisibility,
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
    required TResult Function(_ForgotPassword value) forgotPassword,
    required TResult Function(_TogglePasswordVisibility value)
        togglePasswordVisibility,
    required TResult Function(_ToggleConfirmPasswordVisibility value)
        toggleConfirmPasswordVisibility,
    required TResult Function(_UpdateCountry value) updateCountry,
    required TResult Function(_UpdatePhoneNumber value) updatePhoneNumber,
  }) {
    return togglePasswordVisibility(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ForgotPassword value)? forgotPassword,
    TResult? Function(_TogglePasswordVisibility value)?
        togglePasswordVisibility,
    TResult? Function(_ToggleConfirmPasswordVisibility value)?
        toggleConfirmPasswordVisibility,
    TResult? Function(_UpdateCountry value)? updateCountry,
    TResult? Function(_UpdatePhoneNumber value)? updatePhoneNumber,
  }) {
    return togglePasswordVisibility?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ForgotPassword value)? forgotPassword,
    TResult Function(_TogglePasswordVisibility value)? togglePasswordVisibility,
    TResult Function(_ToggleConfirmPasswordVisibility value)?
        toggleConfirmPasswordVisibility,
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

abstract class _TogglePasswordVisibility implements ForgotPasswordEvent {
  const factory _TogglePasswordVisibility() = _$TogglePasswordVisibilityImpl;
}

/// @nodoc
abstract class _$$ToggleConfirmPasswordVisibilityImplCopyWith<$Res> {
  factory _$$ToggleConfirmPasswordVisibilityImplCopyWith(
          _$ToggleConfirmPasswordVisibilityImpl value,
          $Res Function(_$ToggleConfirmPasswordVisibilityImpl) then) =
      __$$ToggleConfirmPasswordVisibilityImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ToggleConfirmPasswordVisibilityImplCopyWithImpl<$Res>
    extends _$ForgotPasswordEventCopyWithImpl<$Res,
        _$ToggleConfirmPasswordVisibilityImpl>
    implements _$$ToggleConfirmPasswordVisibilityImplCopyWith<$Res> {
  __$$ToggleConfirmPasswordVisibilityImplCopyWithImpl(
      _$ToggleConfirmPasswordVisibilityImpl _value,
      $Res Function(_$ToggleConfirmPasswordVisibilityImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ToggleConfirmPasswordVisibilityImpl
    implements _ToggleConfirmPasswordVisibility {
  const _$ToggleConfirmPasswordVisibilityImpl();

  @override
  String toString() {
    return 'ForgotPasswordEvent.toggleConfirmPasswordVisibility()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ToggleConfirmPasswordVisibilityImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BuildContext context) forgotPassword,
    required TResult Function() togglePasswordVisibility,
    required TResult Function() toggleConfirmPasswordVisibility,
    required TResult Function(PhoneCountryData country) updateCountry,
    required TResult Function(String phoneNumber) updatePhoneNumber,
  }) {
    return toggleConfirmPasswordVisibility();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BuildContext context)? forgotPassword,
    TResult? Function()? togglePasswordVisibility,
    TResult? Function()? toggleConfirmPasswordVisibility,
    TResult? Function(PhoneCountryData country)? updateCountry,
    TResult? Function(String phoneNumber)? updatePhoneNumber,
  }) {
    return toggleConfirmPasswordVisibility?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildContext context)? forgotPassword,
    TResult Function()? togglePasswordVisibility,
    TResult Function()? toggleConfirmPasswordVisibility,
    TResult Function(PhoneCountryData country)? updateCountry,
    TResult Function(String phoneNumber)? updatePhoneNumber,
    required TResult orElse(),
  }) {
    if (toggleConfirmPasswordVisibility != null) {
      return toggleConfirmPasswordVisibility();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ForgotPassword value) forgotPassword,
    required TResult Function(_TogglePasswordVisibility value)
        togglePasswordVisibility,
    required TResult Function(_ToggleConfirmPasswordVisibility value)
        toggleConfirmPasswordVisibility,
    required TResult Function(_UpdateCountry value) updateCountry,
    required TResult Function(_UpdatePhoneNumber value) updatePhoneNumber,
  }) {
    return toggleConfirmPasswordVisibility(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ForgotPassword value)? forgotPassword,
    TResult? Function(_TogglePasswordVisibility value)?
        togglePasswordVisibility,
    TResult? Function(_ToggleConfirmPasswordVisibility value)?
        toggleConfirmPasswordVisibility,
    TResult? Function(_UpdateCountry value)? updateCountry,
    TResult? Function(_UpdatePhoneNumber value)? updatePhoneNumber,
  }) {
    return toggleConfirmPasswordVisibility?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ForgotPassword value)? forgotPassword,
    TResult Function(_TogglePasswordVisibility value)? togglePasswordVisibility,
    TResult Function(_ToggleConfirmPasswordVisibility value)?
        toggleConfirmPasswordVisibility,
    TResult Function(_UpdateCountry value)? updateCountry,
    TResult Function(_UpdatePhoneNumber value)? updatePhoneNumber,
    required TResult orElse(),
  }) {
    if (toggleConfirmPasswordVisibility != null) {
      return toggleConfirmPasswordVisibility(this);
    }
    return orElse();
  }
}

abstract class _ToggleConfirmPasswordVisibility implements ForgotPasswordEvent {
  const factory _ToggleConfirmPasswordVisibility() =
      _$ToggleConfirmPasswordVisibilityImpl;
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
    extends _$ForgotPasswordEventCopyWithImpl<$Res, _$UpdateCountryImpl>
    implements _$$UpdateCountryImplCopyWith<$Res> {
  __$$UpdateCountryImplCopyWithImpl(
      _$UpdateCountryImpl _value, $Res Function(_$UpdateCountryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? country = freezed,
  }) {
    return _then(_$UpdateCountryImpl(
      freezed == country
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
    return 'ForgotPasswordEvent.updateCountry(country: $country)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateCountryImpl &&
            const DeepCollectionEquality().equals(other.country, country));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(country));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateCountryImplCopyWith<_$UpdateCountryImpl> get copyWith =>
      __$$UpdateCountryImplCopyWithImpl<_$UpdateCountryImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BuildContext context) forgotPassword,
    required TResult Function() togglePasswordVisibility,
    required TResult Function() toggleConfirmPasswordVisibility,
    required TResult Function(PhoneCountryData country) updateCountry,
    required TResult Function(String phoneNumber) updatePhoneNumber,
  }) {
    return updateCountry(country);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BuildContext context)? forgotPassword,
    TResult? Function()? togglePasswordVisibility,
    TResult? Function()? toggleConfirmPasswordVisibility,
    TResult? Function(PhoneCountryData country)? updateCountry,
    TResult? Function(String phoneNumber)? updatePhoneNumber,
  }) {
    return updateCountry?.call(country);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildContext context)? forgotPassword,
    TResult Function()? togglePasswordVisibility,
    TResult Function()? toggleConfirmPasswordVisibility,
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
    required TResult Function(_ForgotPassword value) forgotPassword,
    required TResult Function(_TogglePasswordVisibility value)
        togglePasswordVisibility,
    required TResult Function(_ToggleConfirmPasswordVisibility value)
        toggleConfirmPasswordVisibility,
    required TResult Function(_UpdateCountry value) updateCountry,
    required TResult Function(_UpdatePhoneNumber value) updatePhoneNumber,
  }) {
    return updateCountry(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ForgotPassword value)? forgotPassword,
    TResult? Function(_TogglePasswordVisibility value)?
        togglePasswordVisibility,
    TResult? Function(_ToggleConfirmPasswordVisibility value)?
        toggleConfirmPasswordVisibility,
    TResult? Function(_UpdateCountry value)? updateCountry,
    TResult? Function(_UpdatePhoneNumber value)? updatePhoneNumber,
  }) {
    return updateCountry?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ForgotPassword value)? forgotPassword,
    TResult Function(_TogglePasswordVisibility value)? togglePasswordVisibility,
    TResult Function(_ToggleConfirmPasswordVisibility value)?
        toggleConfirmPasswordVisibility,
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

abstract class _UpdateCountry implements ForgotPasswordEvent {
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
    extends _$ForgotPasswordEventCopyWithImpl<$Res, _$UpdatePhoneNumberImpl>
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
    return 'ForgotPasswordEvent.updatePhoneNumber(phoneNumber: $phoneNumber)';
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
    required TResult Function(BuildContext context) forgotPassword,
    required TResult Function() togglePasswordVisibility,
    required TResult Function() toggleConfirmPasswordVisibility,
    required TResult Function(PhoneCountryData country) updateCountry,
    required TResult Function(String phoneNumber) updatePhoneNumber,
  }) {
    return updatePhoneNumber(phoneNumber);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BuildContext context)? forgotPassword,
    TResult? Function()? togglePasswordVisibility,
    TResult? Function()? toggleConfirmPasswordVisibility,
    TResult? Function(PhoneCountryData country)? updateCountry,
    TResult? Function(String phoneNumber)? updatePhoneNumber,
  }) {
    return updatePhoneNumber?.call(phoneNumber);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildContext context)? forgotPassword,
    TResult Function()? togglePasswordVisibility,
    TResult Function()? toggleConfirmPasswordVisibility,
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
    required TResult Function(_ForgotPassword value) forgotPassword,
    required TResult Function(_TogglePasswordVisibility value)
        togglePasswordVisibility,
    required TResult Function(_ToggleConfirmPasswordVisibility value)
        toggleConfirmPasswordVisibility,
    required TResult Function(_UpdateCountry value) updateCountry,
    required TResult Function(_UpdatePhoneNumber value) updatePhoneNumber,
  }) {
    return updatePhoneNumber(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ForgotPassword value)? forgotPassword,
    TResult? Function(_TogglePasswordVisibility value)?
        togglePasswordVisibility,
    TResult? Function(_ToggleConfirmPasswordVisibility value)?
        toggleConfirmPasswordVisibility,
    TResult? Function(_UpdateCountry value)? updateCountry,
    TResult? Function(_UpdatePhoneNumber value)? updatePhoneNumber,
  }) {
    return updatePhoneNumber?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ForgotPassword value)? forgotPassword,
    TResult Function(_TogglePasswordVisibility value)? togglePasswordVisibility,
    TResult Function(_ToggleConfirmPasswordVisibility value)?
        toggleConfirmPasswordVisibility,
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

abstract class _UpdatePhoneNumber implements ForgotPasswordEvent {
  const factory _UpdatePhoneNumber(final String phoneNumber) =
      _$UpdatePhoneNumberImpl;

  String get phoneNumber;
  @JsonKey(ignore: true)
  _$$UpdatePhoneNumberImplCopyWith<_$UpdatePhoneNumberImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ForgotPasswordState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isPasswordObscured => throw _privateConstructorUsedError;
  bool get isConfirmPasswordObscured => throw _privateConstructorUsedError;
  TextEditingController get phoneNumberController =>
      throw _privateConstructorUsedError;
  TextEditingController get passwordController =>
      throw _privateConstructorUsedError;
  TextEditingController get confirmPasswordController =>
      throw _privateConstructorUsedError;
  PhoneCountryData get country => throw _privateConstructorUsedError;
  String get phoneNumber => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ForgotPasswordStateCopyWith<ForgotPasswordState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ForgotPasswordStateCopyWith<$Res> {
  factory $ForgotPasswordStateCopyWith(
          ForgotPasswordState value, $Res Function(ForgotPasswordState) then) =
      _$ForgotPasswordStateCopyWithImpl<$Res, ForgotPasswordState>;
  @useResult
  $Res call(
      {bool isLoading,
      bool isPasswordObscured,
      bool isConfirmPasswordObscured,
      TextEditingController phoneNumberController,
      TextEditingController passwordController,
      TextEditingController confirmPasswordController,
      PhoneCountryData country,
      String phoneNumber});
}

/// @nodoc
class _$ForgotPasswordStateCopyWithImpl<$Res, $Val extends ForgotPasswordState>
    implements $ForgotPasswordStateCopyWith<$Res> {
  _$ForgotPasswordStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isPasswordObscured = null,
    Object? isConfirmPasswordObscured = null,
    Object? phoneNumberController = null,
    Object? passwordController = null,
    Object? confirmPasswordController = null,
    Object? country = freezed,
    Object? phoneNumber = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isPasswordObscured: null == isPasswordObscured
          ? _value.isPasswordObscured
          : isPasswordObscured // ignore: cast_nullable_to_non_nullable
              as bool,
      isConfirmPasswordObscured: null == isConfirmPasswordObscured
          ? _value.isConfirmPasswordObscured
          : isConfirmPasswordObscured // ignore: cast_nullable_to_non_nullable
              as bool,
      phoneNumberController: null == phoneNumberController
          ? _value.phoneNumberController
          : phoneNumberController // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      passwordController: null == passwordController
          ? _value.passwordController
          : passwordController // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      confirmPasswordController: null == confirmPasswordController
          ? _value.confirmPasswordController
          : confirmPasswordController // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      country: freezed == country
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
abstract class _$$ForgotPasswordStateImplCopyWith<$Res>
    implements $ForgotPasswordStateCopyWith<$Res> {
  factory _$$ForgotPasswordStateImplCopyWith(_$ForgotPasswordStateImpl value,
          $Res Function(_$ForgotPasswordStateImpl) then) =
      __$$ForgotPasswordStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      bool isPasswordObscured,
      bool isConfirmPasswordObscured,
      TextEditingController phoneNumberController,
      TextEditingController passwordController,
      TextEditingController confirmPasswordController,
      PhoneCountryData country,
      String phoneNumber});
}

/// @nodoc
class __$$ForgotPasswordStateImplCopyWithImpl<$Res>
    extends _$ForgotPasswordStateCopyWithImpl<$Res, _$ForgotPasswordStateImpl>
    implements _$$ForgotPasswordStateImplCopyWith<$Res> {
  __$$ForgotPasswordStateImplCopyWithImpl(_$ForgotPasswordStateImpl _value,
      $Res Function(_$ForgotPasswordStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isPasswordObscured = null,
    Object? isConfirmPasswordObscured = null,
    Object? phoneNumberController = null,
    Object? passwordController = null,
    Object? confirmPasswordController = null,
    Object? country = freezed,
    Object? phoneNumber = null,
  }) {
    return _then(_$ForgotPasswordStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isPasswordObscured: null == isPasswordObscured
          ? _value.isPasswordObscured
          : isPasswordObscured // ignore: cast_nullable_to_non_nullable
              as bool,
      isConfirmPasswordObscured: null == isConfirmPasswordObscured
          ? _value.isConfirmPasswordObscured
          : isConfirmPasswordObscured // ignore: cast_nullable_to_non_nullable
              as bool,
      phoneNumberController: null == phoneNumberController
          ? _value.phoneNumberController
          : phoneNumberController // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      passwordController: null == passwordController
          ? _value.passwordController
          : passwordController // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      confirmPasswordController: null == confirmPasswordController
          ? _value.confirmPasswordController
          : confirmPasswordController // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      country: freezed == country
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

class _$ForgotPasswordStateImpl implements _ForgotPasswordState {
  const _$ForgotPasswordStateImpl(
      {required this.isLoading,
      required this.isPasswordObscured,
      required this.isConfirmPasswordObscured,
      required this.phoneNumberController,
      required this.passwordController,
      required this.confirmPasswordController,
      required this.country,
      required this.phoneNumber});

  @override
  final bool isLoading;
  @override
  final bool isPasswordObscured;
  @override
  final bool isConfirmPasswordObscured;
  @override
  final TextEditingController phoneNumberController;
  @override
  final TextEditingController passwordController;
  @override
  final TextEditingController confirmPasswordController;
  @override
  final PhoneCountryData country;
  @override
  final String phoneNumber;

  @override
  String toString() {
    return 'ForgotPasswordState(isLoading: $isLoading, isPasswordObscured: $isPasswordObscured, isConfirmPasswordObscured: $isConfirmPasswordObscured, phoneNumberController: $phoneNumberController, passwordController: $passwordController, confirmPasswordController: $confirmPasswordController, country: $country, phoneNumber: $phoneNumber)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ForgotPasswordStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isPasswordObscured, isPasswordObscured) ||
                other.isPasswordObscured == isPasswordObscured) &&
            (identical(other.isConfirmPasswordObscured,
                    isConfirmPasswordObscured) ||
                other.isConfirmPasswordObscured == isConfirmPasswordObscured) &&
            (identical(other.phoneNumberController, phoneNumberController) ||
                other.phoneNumberController == phoneNumberController) &&
            (identical(other.passwordController, passwordController) ||
                other.passwordController == passwordController) &&
            (identical(other.confirmPasswordController,
                    confirmPasswordController) ||
                other.confirmPasswordController == confirmPasswordController) &&
            const DeepCollectionEquality().equals(other.country, country) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isLoading,
      isPasswordObscured,
      isConfirmPasswordObscured,
      phoneNumberController,
      passwordController,
      confirmPasswordController,
      const DeepCollectionEquality().hash(country),
      phoneNumber);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ForgotPasswordStateImplCopyWith<_$ForgotPasswordStateImpl> get copyWith =>
      __$$ForgotPasswordStateImplCopyWithImpl<_$ForgotPasswordStateImpl>(
          this, _$identity);
}

abstract class _ForgotPasswordState implements ForgotPasswordState {
  const factory _ForgotPasswordState(
      {required final bool isLoading,
      required final bool isPasswordObscured,
      required final bool isConfirmPasswordObscured,
      required final TextEditingController phoneNumberController,
      required final TextEditingController passwordController,
      required final TextEditingController confirmPasswordController,
      required final PhoneCountryData country,
      required final String phoneNumber}) = _$ForgotPasswordStateImpl;

  @override
  bool get isLoading;
  @override
  bool get isPasswordObscured;
  @override
  bool get isConfirmPasswordObscured;
  @override
  TextEditingController get phoneNumberController;
  @override
  TextEditingController get passwordController;
  @override
  TextEditingController get confirmPasswordController;
  @override
  PhoneCountryData get country;
  @override
  String get phoneNumber;
  @override
  @JsonKey(ignore: true)
  _$$ForgotPasswordStateImplCopyWith<_$ForgotPasswordStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
