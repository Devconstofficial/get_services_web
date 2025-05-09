// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dashboard_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DashBoardEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int index) changeCurrentTablePageIndex,
    required TResult Function(int index) setCurrentMonth,
    required TResult Function() fetchProviderRequests,
    required TResult Function(
            Map<String, dynamic> body, String id, BuildContext context)
        updateProvider,
    required TResult Function(String id, BuildContext context) deleteProvider,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int index)? changeCurrentTablePageIndex,
    TResult? Function(int index)? setCurrentMonth,
    TResult? Function()? fetchProviderRequests,
    TResult? Function(
            Map<String, dynamic> body, String id, BuildContext context)?
        updateProvider,
    TResult? Function(String id, BuildContext context)? deleteProvider,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int index)? changeCurrentTablePageIndex,
    TResult Function(int index)? setCurrentMonth,
    TResult Function()? fetchProviderRequests,
    TResult Function(
            Map<String, dynamic> body, String id, BuildContext context)?
        updateProvider,
    TResult Function(String id, BuildContext context)? deleteProvider,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangeCurrentTablePageIndex value)
        changeCurrentTablePageIndex,
    required TResult Function(_SetCurrentMonth value) setCurrentMonth,
    required TResult Function(_FetchProviderRequests value)
        fetchProviderRequests,
    required TResult Function(_UpdateProvider value) updateProvider,
    required TResult Function(_DeleteProvider value) deleteProvider,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangeCurrentTablePageIndex value)?
        changeCurrentTablePageIndex,
    TResult? Function(_SetCurrentMonth value)? setCurrentMonth,
    TResult? Function(_FetchProviderRequests value)? fetchProviderRequests,
    TResult? Function(_UpdateProvider value)? updateProvider,
    TResult? Function(_DeleteProvider value)? deleteProvider,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeCurrentTablePageIndex value)?
        changeCurrentTablePageIndex,
    TResult Function(_SetCurrentMonth value)? setCurrentMonth,
    TResult Function(_FetchProviderRequests value)? fetchProviderRequests,
    TResult Function(_UpdateProvider value)? updateProvider,
    TResult Function(_DeleteProvider value)? deleteProvider,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DashBoardEventCopyWith<$Res> {
  factory $DashBoardEventCopyWith(
          DashBoardEvent value, $Res Function(DashBoardEvent) then) =
      _$DashBoardEventCopyWithImpl<$Res, DashBoardEvent>;
}

/// @nodoc
class _$DashBoardEventCopyWithImpl<$Res, $Val extends DashBoardEvent>
    implements $DashBoardEventCopyWith<$Res> {
  _$DashBoardEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ChangeCurrentTablePageIndexImplCopyWith<$Res> {
  factory _$$ChangeCurrentTablePageIndexImplCopyWith(
          _$ChangeCurrentTablePageIndexImpl value,
          $Res Function(_$ChangeCurrentTablePageIndexImpl) then) =
      __$$ChangeCurrentTablePageIndexImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int index});
}

/// @nodoc
class __$$ChangeCurrentTablePageIndexImplCopyWithImpl<$Res>
    extends _$DashBoardEventCopyWithImpl<$Res,
        _$ChangeCurrentTablePageIndexImpl>
    implements _$$ChangeCurrentTablePageIndexImplCopyWith<$Res> {
  __$$ChangeCurrentTablePageIndexImplCopyWithImpl(
      _$ChangeCurrentTablePageIndexImpl _value,
      $Res Function(_$ChangeCurrentTablePageIndexImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
  }) {
    return _then(_$ChangeCurrentTablePageIndexImpl(
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ChangeCurrentTablePageIndexImpl
    implements _ChangeCurrentTablePageIndex {
  const _$ChangeCurrentTablePageIndexImpl({required this.index});

  @override
  final int index;

  @override
  String toString() {
    return 'DashBoardEvent.changeCurrentTablePageIndex(index: $index)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeCurrentTablePageIndexImpl &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeCurrentTablePageIndexImplCopyWith<_$ChangeCurrentTablePageIndexImpl>
      get copyWith => __$$ChangeCurrentTablePageIndexImplCopyWithImpl<
          _$ChangeCurrentTablePageIndexImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int index) changeCurrentTablePageIndex,
    required TResult Function(int index) setCurrentMonth,
    required TResult Function() fetchProviderRequests,
    required TResult Function(
            Map<String, dynamic> body, String id, BuildContext context)
        updateProvider,
    required TResult Function(String id, BuildContext context) deleteProvider,
  }) {
    return changeCurrentTablePageIndex(index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int index)? changeCurrentTablePageIndex,
    TResult? Function(int index)? setCurrentMonth,
    TResult? Function()? fetchProviderRequests,
    TResult? Function(
            Map<String, dynamic> body, String id, BuildContext context)?
        updateProvider,
    TResult? Function(String id, BuildContext context)? deleteProvider,
  }) {
    return changeCurrentTablePageIndex?.call(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int index)? changeCurrentTablePageIndex,
    TResult Function(int index)? setCurrentMonth,
    TResult Function()? fetchProviderRequests,
    TResult Function(
            Map<String, dynamic> body, String id, BuildContext context)?
        updateProvider,
    TResult Function(String id, BuildContext context)? deleteProvider,
    required TResult orElse(),
  }) {
    if (changeCurrentTablePageIndex != null) {
      return changeCurrentTablePageIndex(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangeCurrentTablePageIndex value)
        changeCurrentTablePageIndex,
    required TResult Function(_SetCurrentMonth value) setCurrentMonth,
    required TResult Function(_FetchProviderRequests value)
        fetchProviderRequests,
    required TResult Function(_UpdateProvider value) updateProvider,
    required TResult Function(_DeleteProvider value) deleteProvider,
  }) {
    return changeCurrentTablePageIndex(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangeCurrentTablePageIndex value)?
        changeCurrentTablePageIndex,
    TResult? Function(_SetCurrentMonth value)? setCurrentMonth,
    TResult? Function(_FetchProviderRequests value)? fetchProviderRequests,
    TResult? Function(_UpdateProvider value)? updateProvider,
    TResult? Function(_DeleteProvider value)? deleteProvider,
  }) {
    return changeCurrentTablePageIndex?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeCurrentTablePageIndex value)?
        changeCurrentTablePageIndex,
    TResult Function(_SetCurrentMonth value)? setCurrentMonth,
    TResult Function(_FetchProviderRequests value)? fetchProviderRequests,
    TResult Function(_UpdateProvider value)? updateProvider,
    TResult Function(_DeleteProvider value)? deleteProvider,
    required TResult orElse(),
  }) {
    if (changeCurrentTablePageIndex != null) {
      return changeCurrentTablePageIndex(this);
    }
    return orElse();
  }
}

abstract class _ChangeCurrentTablePageIndex implements DashBoardEvent {
  const factory _ChangeCurrentTablePageIndex({required final int index}) =
      _$ChangeCurrentTablePageIndexImpl;

  int get index;
  @JsonKey(ignore: true)
  _$$ChangeCurrentTablePageIndexImplCopyWith<_$ChangeCurrentTablePageIndexImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SetCurrentMonthImplCopyWith<$Res> {
  factory _$$SetCurrentMonthImplCopyWith(_$SetCurrentMonthImpl value,
          $Res Function(_$SetCurrentMonthImpl) then) =
      __$$SetCurrentMonthImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int index});
}

/// @nodoc
class __$$SetCurrentMonthImplCopyWithImpl<$Res>
    extends _$DashBoardEventCopyWithImpl<$Res, _$SetCurrentMonthImpl>
    implements _$$SetCurrentMonthImplCopyWith<$Res> {
  __$$SetCurrentMonthImplCopyWithImpl(
      _$SetCurrentMonthImpl _value, $Res Function(_$SetCurrentMonthImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
  }) {
    return _then(_$SetCurrentMonthImpl(
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$SetCurrentMonthImpl implements _SetCurrentMonth {
  const _$SetCurrentMonthImpl({required this.index});

  @override
  final int index;

  @override
  String toString() {
    return 'DashBoardEvent.setCurrentMonth(index: $index)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetCurrentMonthImpl &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SetCurrentMonthImplCopyWith<_$SetCurrentMonthImpl> get copyWith =>
      __$$SetCurrentMonthImplCopyWithImpl<_$SetCurrentMonthImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int index) changeCurrentTablePageIndex,
    required TResult Function(int index) setCurrentMonth,
    required TResult Function() fetchProviderRequests,
    required TResult Function(
            Map<String, dynamic> body, String id, BuildContext context)
        updateProvider,
    required TResult Function(String id, BuildContext context) deleteProvider,
  }) {
    return setCurrentMonth(index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int index)? changeCurrentTablePageIndex,
    TResult? Function(int index)? setCurrentMonth,
    TResult? Function()? fetchProviderRequests,
    TResult? Function(
            Map<String, dynamic> body, String id, BuildContext context)?
        updateProvider,
    TResult? Function(String id, BuildContext context)? deleteProvider,
  }) {
    return setCurrentMonth?.call(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int index)? changeCurrentTablePageIndex,
    TResult Function(int index)? setCurrentMonth,
    TResult Function()? fetchProviderRequests,
    TResult Function(
            Map<String, dynamic> body, String id, BuildContext context)?
        updateProvider,
    TResult Function(String id, BuildContext context)? deleteProvider,
    required TResult orElse(),
  }) {
    if (setCurrentMonth != null) {
      return setCurrentMonth(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangeCurrentTablePageIndex value)
        changeCurrentTablePageIndex,
    required TResult Function(_SetCurrentMonth value) setCurrentMonth,
    required TResult Function(_FetchProviderRequests value)
        fetchProviderRequests,
    required TResult Function(_UpdateProvider value) updateProvider,
    required TResult Function(_DeleteProvider value) deleteProvider,
  }) {
    return setCurrentMonth(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangeCurrentTablePageIndex value)?
        changeCurrentTablePageIndex,
    TResult? Function(_SetCurrentMonth value)? setCurrentMonth,
    TResult? Function(_FetchProviderRequests value)? fetchProviderRequests,
    TResult? Function(_UpdateProvider value)? updateProvider,
    TResult? Function(_DeleteProvider value)? deleteProvider,
  }) {
    return setCurrentMonth?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeCurrentTablePageIndex value)?
        changeCurrentTablePageIndex,
    TResult Function(_SetCurrentMonth value)? setCurrentMonth,
    TResult Function(_FetchProviderRequests value)? fetchProviderRequests,
    TResult Function(_UpdateProvider value)? updateProvider,
    TResult Function(_DeleteProvider value)? deleteProvider,
    required TResult orElse(),
  }) {
    if (setCurrentMonth != null) {
      return setCurrentMonth(this);
    }
    return orElse();
  }
}

abstract class _SetCurrentMonth implements DashBoardEvent {
  const factory _SetCurrentMonth({required final int index}) =
      _$SetCurrentMonthImpl;

  int get index;
  @JsonKey(ignore: true)
  _$$SetCurrentMonthImplCopyWith<_$SetCurrentMonthImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FetchProviderRequestsImplCopyWith<$Res> {
  factory _$$FetchProviderRequestsImplCopyWith(
          _$FetchProviderRequestsImpl value,
          $Res Function(_$FetchProviderRequestsImpl) then) =
      __$$FetchProviderRequestsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchProviderRequestsImplCopyWithImpl<$Res>
    extends _$DashBoardEventCopyWithImpl<$Res, _$FetchProviderRequestsImpl>
    implements _$$FetchProviderRequestsImplCopyWith<$Res> {
  __$$FetchProviderRequestsImplCopyWithImpl(_$FetchProviderRequestsImpl _value,
      $Res Function(_$FetchProviderRequestsImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FetchProviderRequestsImpl implements _FetchProviderRequests {
  const _$FetchProviderRequestsImpl();

  @override
  String toString() {
    return 'DashBoardEvent.fetchProviderRequests()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchProviderRequestsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int index) changeCurrentTablePageIndex,
    required TResult Function(int index) setCurrentMonth,
    required TResult Function() fetchProviderRequests,
    required TResult Function(
            Map<String, dynamic> body, String id, BuildContext context)
        updateProvider,
    required TResult Function(String id, BuildContext context) deleteProvider,
  }) {
    return fetchProviderRequests();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int index)? changeCurrentTablePageIndex,
    TResult? Function(int index)? setCurrentMonth,
    TResult? Function()? fetchProviderRequests,
    TResult? Function(
            Map<String, dynamic> body, String id, BuildContext context)?
        updateProvider,
    TResult? Function(String id, BuildContext context)? deleteProvider,
  }) {
    return fetchProviderRequests?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int index)? changeCurrentTablePageIndex,
    TResult Function(int index)? setCurrentMonth,
    TResult Function()? fetchProviderRequests,
    TResult Function(
            Map<String, dynamic> body, String id, BuildContext context)?
        updateProvider,
    TResult Function(String id, BuildContext context)? deleteProvider,
    required TResult orElse(),
  }) {
    if (fetchProviderRequests != null) {
      return fetchProviderRequests();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangeCurrentTablePageIndex value)
        changeCurrentTablePageIndex,
    required TResult Function(_SetCurrentMonth value) setCurrentMonth,
    required TResult Function(_FetchProviderRequests value)
        fetchProviderRequests,
    required TResult Function(_UpdateProvider value) updateProvider,
    required TResult Function(_DeleteProvider value) deleteProvider,
  }) {
    return fetchProviderRequests(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangeCurrentTablePageIndex value)?
        changeCurrentTablePageIndex,
    TResult? Function(_SetCurrentMonth value)? setCurrentMonth,
    TResult? Function(_FetchProviderRequests value)? fetchProviderRequests,
    TResult? Function(_UpdateProvider value)? updateProvider,
    TResult? Function(_DeleteProvider value)? deleteProvider,
  }) {
    return fetchProviderRequests?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeCurrentTablePageIndex value)?
        changeCurrentTablePageIndex,
    TResult Function(_SetCurrentMonth value)? setCurrentMonth,
    TResult Function(_FetchProviderRequests value)? fetchProviderRequests,
    TResult Function(_UpdateProvider value)? updateProvider,
    TResult Function(_DeleteProvider value)? deleteProvider,
    required TResult orElse(),
  }) {
    if (fetchProviderRequests != null) {
      return fetchProviderRequests(this);
    }
    return orElse();
  }
}

abstract class _FetchProviderRequests implements DashBoardEvent {
  const factory _FetchProviderRequests() = _$FetchProviderRequestsImpl;
}

/// @nodoc
abstract class _$$UpdateProviderImplCopyWith<$Res> {
  factory _$$UpdateProviderImplCopyWith(_$UpdateProviderImpl value,
          $Res Function(_$UpdateProviderImpl) then) =
      __$$UpdateProviderImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Map<String, dynamic> body, String id, BuildContext context});
}

/// @nodoc
class __$$UpdateProviderImplCopyWithImpl<$Res>
    extends _$DashBoardEventCopyWithImpl<$Res, _$UpdateProviderImpl>
    implements _$$UpdateProviderImplCopyWith<$Res> {
  __$$UpdateProviderImplCopyWithImpl(
      _$UpdateProviderImpl _value, $Res Function(_$UpdateProviderImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? body = null,
    Object? id = null,
    Object? context = null,
  }) {
    return _then(_$UpdateProviderImpl(
      body: null == body
          ? _value._body
          : body // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      context: null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
    ));
  }
}

/// @nodoc

class _$UpdateProviderImpl implements _UpdateProvider {
  const _$UpdateProviderImpl(
      {required final Map<String, dynamic> body,
      required this.id,
      required this.context})
      : _body = body;

  final Map<String, dynamic> _body;
  @override
  Map<String, dynamic> get body {
    if (_body is EqualUnmodifiableMapView) return _body;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_body);
  }

  @override
  final String id;
  @override
  final BuildContext context;

  @override
  String toString() {
    return 'DashBoardEvent.updateProvider(body: $body, id: $id, context: $context)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateProviderImpl &&
            const DeepCollectionEquality().equals(other._body, _body) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.context, context) || other.context == context));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_body), id, context);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateProviderImplCopyWith<_$UpdateProviderImpl> get copyWith =>
      __$$UpdateProviderImplCopyWithImpl<_$UpdateProviderImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int index) changeCurrentTablePageIndex,
    required TResult Function(int index) setCurrentMonth,
    required TResult Function() fetchProviderRequests,
    required TResult Function(
            Map<String, dynamic> body, String id, BuildContext context)
        updateProvider,
    required TResult Function(String id, BuildContext context) deleteProvider,
  }) {
    return updateProvider(body, id, context);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int index)? changeCurrentTablePageIndex,
    TResult? Function(int index)? setCurrentMonth,
    TResult? Function()? fetchProviderRequests,
    TResult? Function(
            Map<String, dynamic> body, String id, BuildContext context)?
        updateProvider,
    TResult? Function(String id, BuildContext context)? deleteProvider,
  }) {
    return updateProvider?.call(body, id, context);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int index)? changeCurrentTablePageIndex,
    TResult Function(int index)? setCurrentMonth,
    TResult Function()? fetchProviderRequests,
    TResult Function(
            Map<String, dynamic> body, String id, BuildContext context)?
        updateProvider,
    TResult Function(String id, BuildContext context)? deleteProvider,
    required TResult orElse(),
  }) {
    if (updateProvider != null) {
      return updateProvider(body, id, context);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangeCurrentTablePageIndex value)
        changeCurrentTablePageIndex,
    required TResult Function(_SetCurrentMonth value) setCurrentMonth,
    required TResult Function(_FetchProviderRequests value)
        fetchProviderRequests,
    required TResult Function(_UpdateProvider value) updateProvider,
    required TResult Function(_DeleteProvider value) deleteProvider,
  }) {
    return updateProvider(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangeCurrentTablePageIndex value)?
        changeCurrentTablePageIndex,
    TResult? Function(_SetCurrentMonth value)? setCurrentMonth,
    TResult? Function(_FetchProviderRequests value)? fetchProviderRequests,
    TResult? Function(_UpdateProvider value)? updateProvider,
    TResult? Function(_DeleteProvider value)? deleteProvider,
  }) {
    return updateProvider?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeCurrentTablePageIndex value)?
        changeCurrentTablePageIndex,
    TResult Function(_SetCurrentMonth value)? setCurrentMonth,
    TResult Function(_FetchProviderRequests value)? fetchProviderRequests,
    TResult Function(_UpdateProvider value)? updateProvider,
    TResult Function(_DeleteProvider value)? deleteProvider,
    required TResult orElse(),
  }) {
    if (updateProvider != null) {
      return updateProvider(this);
    }
    return orElse();
  }
}

abstract class _UpdateProvider implements DashBoardEvent {
  const factory _UpdateProvider(
      {required final Map<String, dynamic> body,
      required final String id,
      required final BuildContext context}) = _$UpdateProviderImpl;

  Map<String, dynamic> get body;
  String get id;
  BuildContext get context;
  @JsonKey(ignore: true)
  _$$UpdateProviderImplCopyWith<_$UpdateProviderImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteProviderImplCopyWith<$Res> {
  factory _$$DeleteProviderImplCopyWith(_$DeleteProviderImpl value,
          $Res Function(_$DeleteProviderImpl) then) =
      __$$DeleteProviderImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String id, BuildContext context});
}

/// @nodoc
class __$$DeleteProviderImplCopyWithImpl<$Res>
    extends _$DashBoardEventCopyWithImpl<$Res, _$DeleteProviderImpl>
    implements _$$DeleteProviderImplCopyWith<$Res> {
  __$$DeleteProviderImplCopyWithImpl(
      _$DeleteProviderImpl _value, $Res Function(_$DeleteProviderImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? context = null,
  }) {
    return _then(_$DeleteProviderImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      context: null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
    ));
  }
}

/// @nodoc

class _$DeleteProviderImpl implements _DeleteProvider {
  const _$DeleteProviderImpl({required this.id, required this.context});

  @override
  final String id;
  @override
  final BuildContext context;

  @override
  String toString() {
    return 'DashBoardEvent.deleteProvider(id: $id, context: $context)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteProviderImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.context, context) || other.context == context));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, context);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteProviderImplCopyWith<_$DeleteProviderImpl> get copyWith =>
      __$$DeleteProviderImplCopyWithImpl<_$DeleteProviderImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int index) changeCurrentTablePageIndex,
    required TResult Function(int index) setCurrentMonth,
    required TResult Function() fetchProviderRequests,
    required TResult Function(
            Map<String, dynamic> body, String id, BuildContext context)
        updateProvider,
    required TResult Function(String id, BuildContext context) deleteProvider,
  }) {
    return deleteProvider(id, context);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int index)? changeCurrentTablePageIndex,
    TResult? Function(int index)? setCurrentMonth,
    TResult? Function()? fetchProviderRequests,
    TResult? Function(
            Map<String, dynamic> body, String id, BuildContext context)?
        updateProvider,
    TResult? Function(String id, BuildContext context)? deleteProvider,
  }) {
    return deleteProvider?.call(id, context);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int index)? changeCurrentTablePageIndex,
    TResult Function(int index)? setCurrentMonth,
    TResult Function()? fetchProviderRequests,
    TResult Function(
            Map<String, dynamic> body, String id, BuildContext context)?
        updateProvider,
    TResult Function(String id, BuildContext context)? deleteProvider,
    required TResult orElse(),
  }) {
    if (deleteProvider != null) {
      return deleteProvider(id, context);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangeCurrentTablePageIndex value)
        changeCurrentTablePageIndex,
    required TResult Function(_SetCurrentMonth value) setCurrentMonth,
    required TResult Function(_FetchProviderRequests value)
        fetchProviderRequests,
    required TResult Function(_UpdateProvider value) updateProvider,
    required TResult Function(_DeleteProvider value) deleteProvider,
  }) {
    return deleteProvider(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangeCurrentTablePageIndex value)?
        changeCurrentTablePageIndex,
    TResult? Function(_SetCurrentMonth value)? setCurrentMonth,
    TResult? Function(_FetchProviderRequests value)? fetchProviderRequests,
    TResult? Function(_UpdateProvider value)? updateProvider,
    TResult? Function(_DeleteProvider value)? deleteProvider,
  }) {
    return deleteProvider?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeCurrentTablePageIndex value)?
        changeCurrentTablePageIndex,
    TResult Function(_SetCurrentMonth value)? setCurrentMonth,
    TResult Function(_FetchProviderRequests value)? fetchProviderRequests,
    TResult Function(_UpdateProvider value)? updateProvider,
    TResult Function(_DeleteProvider value)? deleteProvider,
    required TResult orElse(),
  }) {
    if (deleteProvider != null) {
      return deleteProvider(this);
    }
    return orElse();
  }
}

abstract class _DeleteProvider implements DashBoardEvent {
  const factory _DeleteProvider(
      {required final String id,
      required final BuildContext context}) = _$DeleteProviderImpl;

  String get id;
  BuildContext get context;
  @JsonKey(ignore: true)
  _$$DeleteProviderImplCopyWith<_$DeleteProviderImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$DashBoardState {
  int get totalUsers => throw _privateConstructorUsedError;
  int get totalProviders => throw _privateConstructorUsedError;
  int get currentTablePageIndex => throw _privateConstructorUsedError;
  int get requestsPending => throw _privateConstructorUsedError;
  List<CategoriesModel> get providerStatus =>
      throw _privateConstructorUsedError;
  List<CategoriesModel> get months => throw _privateConstructorUsedError;
  List<RevenueData> get revenueData => throw _privateConstructorUsedError;
  List<ProviderRequestModel> get providerRequests =>
      throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isLoadingDelete => throw _privateConstructorUsedError;
  bool get isLoadingUpdate => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DashBoardStateCopyWith<DashBoardState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DashBoardStateCopyWith<$Res> {
  factory $DashBoardStateCopyWith(
          DashBoardState value, $Res Function(DashBoardState) then) =
      _$DashBoardStateCopyWithImpl<$Res, DashBoardState>;
  @useResult
  $Res call(
      {int totalUsers,
      int totalProviders,
      int currentTablePageIndex,
      int requestsPending,
      List<CategoriesModel> providerStatus,
      List<CategoriesModel> months,
      List<RevenueData> revenueData,
      List<ProviderRequestModel> providerRequests,
      bool isLoading,
      bool isLoadingDelete,
      bool isLoadingUpdate});
}

/// @nodoc
class _$DashBoardStateCopyWithImpl<$Res, $Val extends DashBoardState>
    implements $DashBoardStateCopyWith<$Res> {
  _$DashBoardStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalUsers = null,
    Object? totalProviders = null,
    Object? currentTablePageIndex = null,
    Object? requestsPending = null,
    Object? providerStatus = null,
    Object? months = null,
    Object? revenueData = null,
    Object? providerRequests = null,
    Object? isLoading = null,
    Object? isLoadingDelete = null,
    Object? isLoadingUpdate = null,
  }) {
    return _then(_value.copyWith(
      totalUsers: null == totalUsers
          ? _value.totalUsers
          : totalUsers // ignore: cast_nullable_to_non_nullable
              as int,
      totalProviders: null == totalProviders
          ? _value.totalProviders
          : totalProviders // ignore: cast_nullable_to_non_nullable
              as int,
      currentTablePageIndex: null == currentTablePageIndex
          ? _value.currentTablePageIndex
          : currentTablePageIndex // ignore: cast_nullable_to_non_nullable
              as int,
      requestsPending: null == requestsPending
          ? _value.requestsPending
          : requestsPending // ignore: cast_nullable_to_non_nullable
              as int,
      providerStatus: null == providerStatus
          ? _value.providerStatus
          : providerStatus // ignore: cast_nullable_to_non_nullable
              as List<CategoriesModel>,
      months: null == months
          ? _value.months
          : months // ignore: cast_nullable_to_non_nullable
              as List<CategoriesModel>,
      revenueData: null == revenueData
          ? _value.revenueData
          : revenueData // ignore: cast_nullable_to_non_nullable
              as List<RevenueData>,
      providerRequests: null == providerRequests
          ? _value.providerRequests
          : providerRequests // ignore: cast_nullable_to_non_nullable
              as List<ProviderRequestModel>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoadingDelete: null == isLoadingDelete
          ? _value.isLoadingDelete
          : isLoadingDelete // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoadingUpdate: null == isLoadingUpdate
          ? _value.isLoadingUpdate
          : isLoadingUpdate // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DashBoardStateImplCopyWith<$Res>
    implements $DashBoardStateCopyWith<$Res> {
  factory _$$DashBoardStateImplCopyWith(_$DashBoardStateImpl value,
          $Res Function(_$DashBoardStateImpl) then) =
      __$$DashBoardStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int totalUsers,
      int totalProviders,
      int currentTablePageIndex,
      int requestsPending,
      List<CategoriesModel> providerStatus,
      List<CategoriesModel> months,
      List<RevenueData> revenueData,
      List<ProviderRequestModel> providerRequests,
      bool isLoading,
      bool isLoadingDelete,
      bool isLoadingUpdate});
}

/// @nodoc
class __$$DashBoardStateImplCopyWithImpl<$Res>
    extends _$DashBoardStateCopyWithImpl<$Res, _$DashBoardStateImpl>
    implements _$$DashBoardStateImplCopyWith<$Res> {
  __$$DashBoardStateImplCopyWithImpl(
      _$DashBoardStateImpl _value, $Res Function(_$DashBoardStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalUsers = null,
    Object? totalProviders = null,
    Object? currentTablePageIndex = null,
    Object? requestsPending = null,
    Object? providerStatus = null,
    Object? months = null,
    Object? revenueData = null,
    Object? providerRequests = null,
    Object? isLoading = null,
    Object? isLoadingDelete = null,
    Object? isLoadingUpdate = null,
  }) {
    return _then(_$DashBoardStateImpl(
      totalUsers: null == totalUsers
          ? _value.totalUsers
          : totalUsers // ignore: cast_nullable_to_non_nullable
              as int,
      totalProviders: null == totalProviders
          ? _value.totalProviders
          : totalProviders // ignore: cast_nullable_to_non_nullable
              as int,
      currentTablePageIndex: null == currentTablePageIndex
          ? _value.currentTablePageIndex
          : currentTablePageIndex // ignore: cast_nullable_to_non_nullable
              as int,
      requestsPending: null == requestsPending
          ? _value.requestsPending
          : requestsPending // ignore: cast_nullable_to_non_nullable
              as int,
      providerStatus: null == providerStatus
          ? _value._providerStatus
          : providerStatus // ignore: cast_nullable_to_non_nullable
              as List<CategoriesModel>,
      months: null == months
          ? _value._months
          : months // ignore: cast_nullable_to_non_nullable
              as List<CategoriesModel>,
      revenueData: null == revenueData
          ? _value._revenueData
          : revenueData // ignore: cast_nullable_to_non_nullable
              as List<RevenueData>,
      providerRequests: null == providerRequests
          ? _value._providerRequests
          : providerRequests // ignore: cast_nullable_to_non_nullable
              as List<ProviderRequestModel>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoadingDelete: null == isLoadingDelete
          ? _value.isLoadingDelete
          : isLoadingDelete // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoadingUpdate: null == isLoadingUpdate
          ? _value.isLoadingUpdate
          : isLoadingUpdate // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$DashBoardStateImpl implements _DashBoardState {
  const _$DashBoardStateImpl(
      {required this.totalUsers,
      required this.totalProviders,
      required this.currentTablePageIndex,
      required this.requestsPending,
      required final List<CategoriesModel> providerStatus,
      required final List<CategoriesModel> months,
      required final List<RevenueData> revenueData,
      required final List<ProviderRequestModel> providerRequests,
      required this.isLoading,
      required this.isLoadingDelete,
      required this.isLoadingUpdate})
      : _providerStatus = providerStatus,
        _months = months,
        _revenueData = revenueData,
        _providerRequests = providerRequests;

  @override
  final int totalUsers;
  @override
  final int totalProviders;
  @override
  final int currentTablePageIndex;
  @override
  final int requestsPending;
  final List<CategoriesModel> _providerStatus;
  @override
  List<CategoriesModel> get providerStatus {
    if (_providerStatus is EqualUnmodifiableListView) return _providerStatus;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_providerStatus);
  }

  final List<CategoriesModel> _months;
  @override
  List<CategoriesModel> get months {
    if (_months is EqualUnmodifiableListView) return _months;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_months);
  }

  final List<RevenueData> _revenueData;
  @override
  List<RevenueData> get revenueData {
    if (_revenueData is EqualUnmodifiableListView) return _revenueData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_revenueData);
  }

  final List<ProviderRequestModel> _providerRequests;
  @override
  List<ProviderRequestModel> get providerRequests {
    if (_providerRequests is EqualUnmodifiableListView)
      return _providerRequests;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_providerRequests);
  }

  @override
  final bool isLoading;
  @override
  final bool isLoadingDelete;
  @override
  final bool isLoadingUpdate;

  @override
  String toString() {
    return 'DashBoardState(totalUsers: $totalUsers, totalProviders: $totalProviders, currentTablePageIndex: $currentTablePageIndex, requestsPending: $requestsPending, providerStatus: $providerStatus, months: $months, revenueData: $revenueData, providerRequests: $providerRequests, isLoading: $isLoading, isLoadingDelete: $isLoadingDelete, isLoadingUpdate: $isLoadingUpdate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DashBoardStateImpl &&
            (identical(other.totalUsers, totalUsers) ||
                other.totalUsers == totalUsers) &&
            (identical(other.totalProviders, totalProviders) ||
                other.totalProviders == totalProviders) &&
            (identical(other.currentTablePageIndex, currentTablePageIndex) ||
                other.currentTablePageIndex == currentTablePageIndex) &&
            (identical(other.requestsPending, requestsPending) ||
                other.requestsPending == requestsPending) &&
            const DeepCollectionEquality()
                .equals(other._providerStatus, _providerStatus) &&
            const DeepCollectionEquality().equals(other._months, _months) &&
            const DeepCollectionEquality()
                .equals(other._revenueData, _revenueData) &&
            const DeepCollectionEquality()
                .equals(other._providerRequests, _providerRequests) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isLoadingDelete, isLoadingDelete) ||
                other.isLoadingDelete == isLoadingDelete) &&
            (identical(other.isLoadingUpdate, isLoadingUpdate) ||
                other.isLoadingUpdate == isLoadingUpdate));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      totalUsers,
      totalProviders,
      currentTablePageIndex,
      requestsPending,
      const DeepCollectionEquality().hash(_providerStatus),
      const DeepCollectionEquality().hash(_months),
      const DeepCollectionEquality().hash(_revenueData),
      const DeepCollectionEquality().hash(_providerRequests),
      isLoading,
      isLoadingDelete,
      isLoadingUpdate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DashBoardStateImplCopyWith<_$DashBoardStateImpl> get copyWith =>
      __$$DashBoardStateImplCopyWithImpl<_$DashBoardStateImpl>(
          this, _$identity);
}

abstract class _DashBoardState implements DashBoardState {
  const factory _DashBoardState(
      {required final int totalUsers,
      required final int totalProviders,
      required final int currentTablePageIndex,
      required final int requestsPending,
      required final List<CategoriesModel> providerStatus,
      required final List<CategoriesModel> months,
      required final List<RevenueData> revenueData,
      required final List<ProviderRequestModel> providerRequests,
      required final bool isLoading,
      required final bool isLoadingDelete,
      required final bool isLoadingUpdate}) = _$DashBoardStateImpl;

  @override
  int get totalUsers;
  @override
  int get totalProviders;
  @override
  int get currentTablePageIndex;
  @override
  int get requestsPending;
  @override
  List<CategoriesModel> get providerStatus;
  @override
  List<CategoriesModel> get months;
  @override
  List<RevenueData> get revenueData;
  @override
  List<ProviderRequestModel> get providerRequests;
  @override
  bool get isLoading;
  @override
  bool get isLoadingDelete;
  @override
  bool get isLoadingUpdate;
  @override
  @JsonKey(ignore: true)
  _$$DashBoardStateImplCopyWith<_$DashBoardStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
