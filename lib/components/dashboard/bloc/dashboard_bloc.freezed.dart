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
  int get index => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int index) changeCurrentTablePageIndex,
    required TResult Function(int index) setCurrentMonth,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int index)? changeCurrentTablePageIndex,
    TResult? Function(int index)? setCurrentMonth,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int index)? changeCurrentTablePageIndex,
    TResult Function(int index)? setCurrentMonth,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangeCurrentTablePageIndex value)
        changeCurrentTablePageIndex,
    required TResult Function(_SetCurrentMonth value) setCurrentMonth,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangeCurrentTablePageIndex value)?
        changeCurrentTablePageIndex,
    TResult? Function(_SetCurrentMonth value)? setCurrentMonth,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeCurrentTablePageIndex value)?
        changeCurrentTablePageIndex,
    TResult Function(_SetCurrentMonth value)? setCurrentMonth,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DashBoardEventCopyWith<DashBoardEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DashBoardEventCopyWith<$Res> {
  factory $DashBoardEventCopyWith(
          DashBoardEvent value, $Res Function(DashBoardEvent) then) =
      _$DashBoardEventCopyWithImpl<$Res, DashBoardEvent>;
  @useResult
  $Res call({int index});
}

/// @nodoc
class _$DashBoardEventCopyWithImpl<$Res, $Val extends DashBoardEvent>
    implements $DashBoardEventCopyWith<$Res> {
  _$DashBoardEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
  }) {
    return _then(_value.copyWith(
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChangeCurrentTablePageIndexImplCopyWith<$Res>
    implements $DashBoardEventCopyWith<$Res> {
  factory _$$ChangeCurrentTablePageIndexImplCopyWith(
          _$ChangeCurrentTablePageIndexImpl value,
          $Res Function(_$ChangeCurrentTablePageIndexImpl) then) =
      __$$ChangeCurrentTablePageIndexImplCopyWithImpl<$Res>;
  @override
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
  }) {
    return changeCurrentTablePageIndex(index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int index)? changeCurrentTablePageIndex,
    TResult? Function(int index)? setCurrentMonth,
  }) {
    return changeCurrentTablePageIndex?.call(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int index)? changeCurrentTablePageIndex,
    TResult Function(int index)? setCurrentMonth,
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
  }) {
    return changeCurrentTablePageIndex(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangeCurrentTablePageIndex value)?
        changeCurrentTablePageIndex,
    TResult? Function(_SetCurrentMonth value)? setCurrentMonth,
  }) {
    return changeCurrentTablePageIndex?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeCurrentTablePageIndex value)?
        changeCurrentTablePageIndex,
    TResult Function(_SetCurrentMonth value)? setCurrentMonth,
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

  @override
  int get index;
  @override
  @JsonKey(ignore: true)
  _$$ChangeCurrentTablePageIndexImplCopyWith<_$ChangeCurrentTablePageIndexImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SetCurrentMonthImplCopyWith<$Res>
    implements $DashBoardEventCopyWith<$Res> {
  factory _$$SetCurrentMonthImplCopyWith(_$SetCurrentMonthImpl value,
          $Res Function(_$SetCurrentMonthImpl) then) =
      __$$SetCurrentMonthImplCopyWithImpl<$Res>;
  @override
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
  }) {
    return setCurrentMonth(index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int index)? changeCurrentTablePageIndex,
    TResult? Function(int index)? setCurrentMonth,
  }) {
    return setCurrentMonth?.call(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int index)? changeCurrentTablePageIndex,
    TResult Function(int index)? setCurrentMonth,
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
  }) {
    return setCurrentMonth(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangeCurrentTablePageIndex value)?
        changeCurrentTablePageIndex,
    TResult? Function(_SetCurrentMonth value)? setCurrentMonth,
  }) {
    return setCurrentMonth?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeCurrentTablePageIndex value)?
        changeCurrentTablePageIndex,
    TResult Function(_SetCurrentMonth value)? setCurrentMonth,
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

  @override
  int get index;
  @override
  @JsonKey(ignore: true)
  _$$SetCurrentMonthImplCopyWith<_$SetCurrentMonthImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$DashBoardState {
  int get totalUsers => throw _privateConstructorUsedError;
  int get totalProviders => throw _privateConstructorUsedError;
  int get currentTablePageIndex => throw _privateConstructorUsedError;
  int get requestsPending => throw _privateConstructorUsedError;
  List<CategoriesModel> get months => throw _privateConstructorUsedError;
  List<RevenueData> get revenueData => throw _privateConstructorUsedError;
  List<ProviderRequest> get providerRequests =>
      throw _privateConstructorUsedError;

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
      List<CategoriesModel> months,
      List<RevenueData> revenueData,
      List<ProviderRequest> providerRequests});
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
    Object? months = null,
    Object? revenueData = null,
    Object? providerRequests = null,
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
              as List<ProviderRequest>,
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
      List<CategoriesModel> months,
      List<RevenueData> revenueData,
      List<ProviderRequest> providerRequests});
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
    Object? months = null,
    Object? revenueData = null,
    Object? providerRequests = null,
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
              as List<ProviderRequest>,
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
      required final List<CategoriesModel> months,
      required final List<RevenueData> revenueData,
      required final List<ProviderRequest> providerRequests})
      : _months = months,
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

  final List<ProviderRequest> _providerRequests;
  @override
  List<ProviderRequest> get providerRequests {
    if (_providerRequests is EqualUnmodifiableListView)
      return _providerRequests;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_providerRequests);
  }

  @override
  String toString() {
    return 'DashBoardState(totalUsers: $totalUsers, totalProviders: $totalProviders, currentTablePageIndex: $currentTablePageIndex, requestsPending: $requestsPending, months: $months, revenueData: $revenueData, providerRequests: $providerRequests)';
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
            const DeepCollectionEquality().equals(other._months, _months) &&
            const DeepCollectionEquality()
                .equals(other._revenueData, _revenueData) &&
            const DeepCollectionEquality()
                .equals(other._providerRequests, _providerRequests));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      totalUsers,
      totalProviders,
      currentTablePageIndex,
      requestsPending,
      const DeepCollectionEquality().hash(_months),
      const DeepCollectionEquality().hash(_revenueData),
      const DeepCollectionEquality().hash(_providerRequests));

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
          required final List<CategoriesModel> months,
          required final List<RevenueData> revenueData,
          required final List<ProviderRequest> providerRequests}) =
      _$DashBoardStateImpl;

  @override
  int get totalUsers;
  @override
  int get totalProviders;
  @override
  int get currentTablePageIndex;
  @override
  int get requestsPending;
  @override
  List<CategoriesModel> get months;
  @override
  List<RevenueData> get revenueData;
  @override
  List<ProviderRequest> get providerRequests;
  @override
  @JsonKey(ignore: true)
  _$$DashBoardStateImplCopyWith<_$DashBoardStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
