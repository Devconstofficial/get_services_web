// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'side_bar_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SideBarEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int index) setSideBarIndex,
    required TResult Function(int? hoveredIndex) setSideBarHoverIndex,
    required TResult Function(bool isLanguageMenuHover)
        updateIsLanguageMenuHover,
    required TResult Function(int index, bool value)
        setSideBarLanguageIndexIndex,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int index)? setSideBarIndex,
    TResult? Function(int? hoveredIndex)? setSideBarHoverIndex,
    TResult? Function(bool isLanguageMenuHover)? updateIsLanguageMenuHover,
    TResult? Function(int index, bool value)? setSideBarLanguageIndexIndex,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int index)? setSideBarIndex,
    TResult Function(int? hoveredIndex)? setSideBarHoverIndex,
    TResult Function(bool isLanguageMenuHover)? updateIsLanguageMenuHover,
    TResult Function(int index, bool value)? setSideBarLanguageIndexIndex,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetSideBarIndex value) setSideBarIndex,
    required TResult Function(_SetSideBarHoverIndex value) setSideBarHoverIndex,
    required TResult Function(_UpdateIsLanguageMenuHover value)
        updateIsLanguageMenuHover,
    required TResult Function(_SetSideBarLanguageIndexIndex value)
        setSideBarLanguageIndexIndex,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SetSideBarIndex value)? setSideBarIndex,
    TResult? Function(_SetSideBarHoverIndex value)? setSideBarHoverIndex,
    TResult? Function(_UpdateIsLanguageMenuHover value)?
        updateIsLanguageMenuHover,
    TResult? Function(_SetSideBarLanguageIndexIndex value)?
        setSideBarLanguageIndexIndex,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetSideBarIndex value)? setSideBarIndex,
    TResult Function(_SetSideBarHoverIndex value)? setSideBarHoverIndex,
    TResult Function(_UpdateIsLanguageMenuHover value)?
        updateIsLanguageMenuHover,
    TResult Function(_SetSideBarLanguageIndexIndex value)?
        setSideBarLanguageIndexIndex,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SideBarEventCopyWith<$Res> {
  factory $SideBarEventCopyWith(
          SideBarEvent value, $Res Function(SideBarEvent) then) =
      _$SideBarEventCopyWithImpl<$Res, SideBarEvent>;
}

/// @nodoc
class _$SideBarEventCopyWithImpl<$Res, $Val extends SideBarEvent>
    implements $SideBarEventCopyWith<$Res> {
  _$SideBarEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$SetSideBarIndexImplCopyWith<$Res> {
  factory _$$SetSideBarIndexImplCopyWith(_$SetSideBarIndexImpl value,
          $Res Function(_$SetSideBarIndexImpl) then) =
      __$$SetSideBarIndexImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int index});
}

/// @nodoc
class __$$SetSideBarIndexImplCopyWithImpl<$Res>
    extends _$SideBarEventCopyWithImpl<$Res, _$SetSideBarIndexImpl>
    implements _$$SetSideBarIndexImplCopyWith<$Res> {
  __$$SetSideBarIndexImplCopyWithImpl(
      _$SetSideBarIndexImpl _value, $Res Function(_$SetSideBarIndexImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
  }) {
    return _then(_$SetSideBarIndexImpl(
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$SetSideBarIndexImpl implements _SetSideBarIndex {
  const _$SetSideBarIndexImpl({required this.index});

  @override
  final int index;

  @override
  String toString() {
    return 'SideBarEvent.setSideBarIndex(index: $index)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetSideBarIndexImpl &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SetSideBarIndexImplCopyWith<_$SetSideBarIndexImpl> get copyWith =>
      __$$SetSideBarIndexImplCopyWithImpl<_$SetSideBarIndexImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int index) setSideBarIndex,
    required TResult Function(int? hoveredIndex) setSideBarHoverIndex,
    required TResult Function(bool isLanguageMenuHover)
        updateIsLanguageMenuHover,
    required TResult Function(int index, bool value)
        setSideBarLanguageIndexIndex,
  }) {
    return setSideBarIndex(index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int index)? setSideBarIndex,
    TResult? Function(int? hoveredIndex)? setSideBarHoverIndex,
    TResult? Function(bool isLanguageMenuHover)? updateIsLanguageMenuHover,
    TResult? Function(int index, bool value)? setSideBarLanguageIndexIndex,
  }) {
    return setSideBarIndex?.call(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int index)? setSideBarIndex,
    TResult Function(int? hoveredIndex)? setSideBarHoverIndex,
    TResult Function(bool isLanguageMenuHover)? updateIsLanguageMenuHover,
    TResult Function(int index, bool value)? setSideBarLanguageIndexIndex,
    required TResult orElse(),
  }) {
    if (setSideBarIndex != null) {
      return setSideBarIndex(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetSideBarIndex value) setSideBarIndex,
    required TResult Function(_SetSideBarHoverIndex value) setSideBarHoverIndex,
    required TResult Function(_UpdateIsLanguageMenuHover value)
        updateIsLanguageMenuHover,
    required TResult Function(_SetSideBarLanguageIndexIndex value)
        setSideBarLanguageIndexIndex,
  }) {
    return setSideBarIndex(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SetSideBarIndex value)? setSideBarIndex,
    TResult? Function(_SetSideBarHoverIndex value)? setSideBarHoverIndex,
    TResult? Function(_UpdateIsLanguageMenuHover value)?
        updateIsLanguageMenuHover,
    TResult? Function(_SetSideBarLanguageIndexIndex value)?
        setSideBarLanguageIndexIndex,
  }) {
    return setSideBarIndex?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetSideBarIndex value)? setSideBarIndex,
    TResult Function(_SetSideBarHoverIndex value)? setSideBarHoverIndex,
    TResult Function(_UpdateIsLanguageMenuHover value)?
        updateIsLanguageMenuHover,
    TResult Function(_SetSideBarLanguageIndexIndex value)?
        setSideBarLanguageIndexIndex,
    required TResult orElse(),
  }) {
    if (setSideBarIndex != null) {
      return setSideBarIndex(this);
    }
    return orElse();
  }
}

abstract class _SetSideBarIndex implements SideBarEvent {
  const factory _SetSideBarIndex({required final int index}) =
      _$SetSideBarIndexImpl;

  int get index;
  @JsonKey(ignore: true)
  _$$SetSideBarIndexImplCopyWith<_$SetSideBarIndexImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SetSideBarHoverIndexImplCopyWith<$Res> {
  factory _$$SetSideBarHoverIndexImplCopyWith(_$SetSideBarHoverIndexImpl value,
          $Res Function(_$SetSideBarHoverIndexImpl) then) =
      __$$SetSideBarHoverIndexImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int? hoveredIndex});
}

/// @nodoc
class __$$SetSideBarHoverIndexImplCopyWithImpl<$Res>
    extends _$SideBarEventCopyWithImpl<$Res, _$SetSideBarHoverIndexImpl>
    implements _$$SetSideBarHoverIndexImplCopyWith<$Res> {
  __$$SetSideBarHoverIndexImplCopyWithImpl(_$SetSideBarHoverIndexImpl _value,
      $Res Function(_$SetSideBarHoverIndexImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hoveredIndex = freezed,
  }) {
    return _then(_$SetSideBarHoverIndexImpl(
      hoveredIndex: freezed == hoveredIndex
          ? _value.hoveredIndex
          : hoveredIndex // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$SetSideBarHoverIndexImpl implements _SetSideBarHoverIndex {
  const _$SetSideBarHoverIndexImpl({required this.hoveredIndex});

  @override
  final int? hoveredIndex;

  @override
  String toString() {
    return 'SideBarEvent.setSideBarHoverIndex(hoveredIndex: $hoveredIndex)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetSideBarHoverIndexImpl &&
            (identical(other.hoveredIndex, hoveredIndex) ||
                other.hoveredIndex == hoveredIndex));
  }

  @override
  int get hashCode => Object.hash(runtimeType, hoveredIndex);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SetSideBarHoverIndexImplCopyWith<_$SetSideBarHoverIndexImpl>
      get copyWith =>
          __$$SetSideBarHoverIndexImplCopyWithImpl<_$SetSideBarHoverIndexImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int index) setSideBarIndex,
    required TResult Function(int? hoveredIndex) setSideBarHoverIndex,
    required TResult Function(bool isLanguageMenuHover)
        updateIsLanguageMenuHover,
    required TResult Function(int index, bool value)
        setSideBarLanguageIndexIndex,
  }) {
    return setSideBarHoverIndex(hoveredIndex);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int index)? setSideBarIndex,
    TResult? Function(int? hoveredIndex)? setSideBarHoverIndex,
    TResult? Function(bool isLanguageMenuHover)? updateIsLanguageMenuHover,
    TResult? Function(int index, bool value)? setSideBarLanguageIndexIndex,
  }) {
    return setSideBarHoverIndex?.call(hoveredIndex);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int index)? setSideBarIndex,
    TResult Function(int? hoveredIndex)? setSideBarHoverIndex,
    TResult Function(bool isLanguageMenuHover)? updateIsLanguageMenuHover,
    TResult Function(int index, bool value)? setSideBarLanguageIndexIndex,
    required TResult orElse(),
  }) {
    if (setSideBarHoverIndex != null) {
      return setSideBarHoverIndex(hoveredIndex);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetSideBarIndex value) setSideBarIndex,
    required TResult Function(_SetSideBarHoverIndex value) setSideBarHoverIndex,
    required TResult Function(_UpdateIsLanguageMenuHover value)
        updateIsLanguageMenuHover,
    required TResult Function(_SetSideBarLanguageIndexIndex value)
        setSideBarLanguageIndexIndex,
  }) {
    return setSideBarHoverIndex(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SetSideBarIndex value)? setSideBarIndex,
    TResult? Function(_SetSideBarHoverIndex value)? setSideBarHoverIndex,
    TResult? Function(_UpdateIsLanguageMenuHover value)?
        updateIsLanguageMenuHover,
    TResult? Function(_SetSideBarLanguageIndexIndex value)?
        setSideBarLanguageIndexIndex,
  }) {
    return setSideBarHoverIndex?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetSideBarIndex value)? setSideBarIndex,
    TResult Function(_SetSideBarHoverIndex value)? setSideBarHoverIndex,
    TResult Function(_UpdateIsLanguageMenuHover value)?
        updateIsLanguageMenuHover,
    TResult Function(_SetSideBarLanguageIndexIndex value)?
        setSideBarLanguageIndexIndex,
    required TResult orElse(),
  }) {
    if (setSideBarHoverIndex != null) {
      return setSideBarHoverIndex(this);
    }
    return orElse();
  }
}

abstract class _SetSideBarHoverIndex implements SideBarEvent {
  const factory _SetSideBarHoverIndex({required final int? hoveredIndex}) =
      _$SetSideBarHoverIndexImpl;

  int? get hoveredIndex;
  @JsonKey(ignore: true)
  _$$SetSideBarHoverIndexImplCopyWith<_$SetSideBarHoverIndexImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateIsLanguageMenuHoverImplCopyWith<$Res> {
  factory _$$UpdateIsLanguageMenuHoverImplCopyWith(
          _$UpdateIsLanguageMenuHoverImpl value,
          $Res Function(_$UpdateIsLanguageMenuHoverImpl) then) =
      __$$UpdateIsLanguageMenuHoverImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool isLanguageMenuHover});
}

/// @nodoc
class __$$UpdateIsLanguageMenuHoverImplCopyWithImpl<$Res>
    extends _$SideBarEventCopyWithImpl<$Res, _$UpdateIsLanguageMenuHoverImpl>
    implements _$$UpdateIsLanguageMenuHoverImplCopyWith<$Res> {
  __$$UpdateIsLanguageMenuHoverImplCopyWithImpl(
      _$UpdateIsLanguageMenuHoverImpl _value,
      $Res Function(_$UpdateIsLanguageMenuHoverImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLanguageMenuHover = null,
  }) {
    return _then(_$UpdateIsLanguageMenuHoverImpl(
      isLanguageMenuHover: null == isLanguageMenuHover
          ? _value.isLanguageMenuHover
          : isLanguageMenuHover // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$UpdateIsLanguageMenuHoverImpl implements _UpdateIsLanguageMenuHover {
  const _$UpdateIsLanguageMenuHoverImpl({required this.isLanguageMenuHover});

  @override
  final bool isLanguageMenuHover;

  @override
  String toString() {
    return 'SideBarEvent.updateIsLanguageMenuHover(isLanguageMenuHover: $isLanguageMenuHover)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateIsLanguageMenuHoverImpl &&
            (identical(other.isLanguageMenuHover, isLanguageMenuHover) ||
                other.isLanguageMenuHover == isLanguageMenuHover));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLanguageMenuHover);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateIsLanguageMenuHoverImplCopyWith<_$UpdateIsLanguageMenuHoverImpl>
      get copyWith => __$$UpdateIsLanguageMenuHoverImplCopyWithImpl<
          _$UpdateIsLanguageMenuHoverImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int index) setSideBarIndex,
    required TResult Function(int? hoveredIndex) setSideBarHoverIndex,
    required TResult Function(bool isLanguageMenuHover)
        updateIsLanguageMenuHover,
    required TResult Function(int index, bool value)
        setSideBarLanguageIndexIndex,
  }) {
    return updateIsLanguageMenuHover(isLanguageMenuHover);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int index)? setSideBarIndex,
    TResult? Function(int? hoveredIndex)? setSideBarHoverIndex,
    TResult? Function(bool isLanguageMenuHover)? updateIsLanguageMenuHover,
    TResult? Function(int index, bool value)? setSideBarLanguageIndexIndex,
  }) {
    return updateIsLanguageMenuHover?.call(isLanguageMenuHover);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int index)? setSideBarIndex,
    TResult Function(int? hoveredIndex)? setSideBarHoverIndex,
    TResult Function(bool isLanguageMenuHover)? updateIsLanguageMenuHover,
    TResult Function(int index, bool value)? setSideBarLanguageIndexIndex,
    required TResult orElse(),
  }) {
    if (updateIsLanguageMenuHover != null) {
      return updateIsLanguageMenuHover(isLanguageMenuHover);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetSideBarIndex value) setSideBarIndex,
    required TResult Function(_SetSideBarHoverIndex value) setSideBarHoverIndex,
    required TResult Function(_UpdateIsLanguageMenuHover value)
        updateIsLanguageMenuHover,
    required TResult Function(_SetSideBarLanguageIndexIndex value)
        setSideBarLanguageIndexIndex,
  }) {
    return updateIsLanguageMenuHover(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SetSideBarIndex value)? setSideBarIndex,
    TResult? Function(_SetSideBarHoverIndex value)? setSideBarHoverIndex,
    TResult? Function(_UpdateIsLanguageMenuHover value)?
        updateIsLanguageMenuHover,
    TResult? Function(_SetSideBarLanguageIndexIndex value)?
        setSideBarLanguageIndexIndex,
  }) {
    return updateIsLanguageMenuHover?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetSideBarIndex value)? setSideBarIndex,
    TResult Function(_SetSideBarHoverIndex value)? setSideBarHoverIndex,
    TResult Function(_UpdateIsLanguageMenuHover value)?
        updateIsLanguageMenuHover,
    TResult Function(_SetSideBarLanguageIndexIndex value)?
        setSideBarLanguageIndexIndex,
    required TResult orElse(),
  }) {
    if (updateIsLanguageMenuHover != null) {
      return updateIsLanguageMenuHover(this);
    }
    return orElse();
  }
}

abstract class _UpdateIsLanguageMenuHover implements SideBarEvent {
  const factory _UpdateIsLanguageMenuHover(
          {required final bool isLanguageMenuHover}) =
      _$UpdateIsLanguageMenuHoverImpl;

  bool get isLanguageMenuHover;
  @JsonKey(ignore: true)
  _$$UpdateIsLanguageMenuHoverImplCopyWith<_$UpdateIsLanguageMenuHoverImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SetSideBarLanguageIndexIndexImplCopyWith<$Res> {
  factory _$$SetSideBarLanguageIndexIndexImplCopyWith(
          _$SetSideBarLanguageIndexIndexImpl value,
          $Res Function(_$SetSideBarLanguageIndexIndexImpl) then) =
      __$$SetSideBarLanguageIndexIndexImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int index, bool value});
}

/// @nodoc
class __$$SetSideBarLanguageIndexIndexImplCopyWithImpl<$Res>
    extends _$SideBarEventCopyWithImpl<$Res, _$SetSideBarLanguageIndexIndexImpl>
    implements _$$SetSideBarLanguageIndexIndexImplCopyWith<$Res> {
  __$$SetSideBarLanguageIndexIndexImplCopyWithImpl(
      _$SetSideBarLanguageIndexIndexImpl _value,
      $Res Function(_$SetSideBarLanguageIndexIndexImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
    Object? value = null,
  }) {
    return _then(_$SetSideBarLanguageIndexIndexImpl(
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$SetSideBarLanguageIndexIndexImpl
    implements _SetSideBarLanguageIndexIndex {
  const _$SetSideBarLanguageIndexIndexImpl(
      {required this.index, required this.value});

  @override
  final int index;
  @override
  final bool value;

  @override
  String toString() {
    return 'SideBarEvent.setSideBarLanguageIndexIndex(index: $index, value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetSideBarLanguageIndexIndexImpl &&
            (identical(other.index, index) || other.index == index) &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SetSideBarLanguageIndexIndexImplCopyWith<
          _$SetSideBarLanguageIndexIndexImpl>
      get copyWith => __$$SetSideBarLanguageIndexIndexImplCopyWithImpl<
          _$SetSideBarLanguageIndexIndexImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int index) setSideBarIndex,
    required TResult Function(int? hoveredIndex) setSideBarHoverIndex,
    required TResult Function(bool isLanguageMenuHover)
        updateIsLanguageMenuHover,
    required TResult Function(int index, bool value)
        setSideBarLanguageIndexIndex,
  }) {
    return setSideBarLanguageIndexIndex(index, value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int index)? setSideBarIndex,
    TResult? Function(int? hoveredIndex)? setSideBarHoverIndex,
    TResult? Function(bool isLanguageMenuHover)? updateIsLanguageMenuHover,
    TResult? Function(int index, bool value)? setSideBarLanguageIndexIndex,
  }) {
    return setSideBarLanguageIndexIndex?.call(index, value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int index)? setSideBarIndex,
    TResult Function(int? hoveredIndex)? setSideBarHoverIndex,
    TResult Function(bool isLanguageMenuHover)? updateIsLanguageMenuHover,
    TResult Function(int index, bool value)? setSideBarLanguageIndexIndex,
    required TResult orElse(),
  }) {
    if (setSideBarLanguageIndexIndex != null) {
      return setSideBarLanguageIndexIndex(index, value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetSideBarIndex value) setSideBarIndex,
    required TResult Function(_SetSideBarHoverIndex value) setSideBarHoverIndex,
    required TResult Function(_UpdateIsLanguageMenuHover value)
        updateIsLanguageMenuHover,
    required TResult Function(_SetSideBarLanguageIndexIndex value)
        setSideBarLanguageIndexIndex,
  }) {
    return setSideBarLanguageIndexIndex(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SetSideBarIndex value)? setSideBarIndex,
    TResult? Function(_SetSideBarHoverIndex value)? setSideBarHoverIndex,
    TResult? Function(_UpdateIsLanguageMenuHover value)?
        updateIsLanguageMenuHover,
    TResult? Function(_SetSideBarLanguageIndexIndex value)?
        setSideBarLanguageIndexIndex,
  }) {
    return setSideBarLanguageIndexIndex?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetSideBarIndex value)? setSideBarIndex,
    TResult Function(_SetSideBarHoverIndex value)? setSideBarHoverIndex,
    TResult Function(_UpdateIsLanguageMenuHover value)?
        updateIsLanguageMenuHover,
    TResult Function(_SetSideBarLanguageIndexIndex value)?
        setSideBarLanguageIndexIndex,
    required TResult orElse(),
  }) {
    if (setSideBarLanguageIndexIndex != null) {
      return setSideBarLanguageIndexIndex(this);
    }
    return orElse();
  }
}

abstract class _SetSideBarLanguageIndexIndex implements SideBarEvent {
  const factory _SetSideBarLanguageIndexIndex(
      {required final int index,
      required final bool value}) = _$SetSideBarLanguageIndexIndexImpl;

  int get index;
  bool get value;
  @JsonKey(ignore: true)
  _$$SetSideBarLanguageIndexIndexImplCopyWith<
          _$SetSideBarLanguageIndexIndexImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SideBarState {
  int get selectedIndex => throw _privateConstructorUsedError;
  int get notificationCount => throw _privateConstructorUsedError;
  bool get isLanguageMenuHover => throw _privateConstructorUsedError;
  int? get hoveredIndex => throw _privateConstructorUsedError;
  List<CategoriesModel> get languages => throw _privateConstructorUsedError;
  List<String> get languageImages => throw _privateConstructorUsedError;
  List<String> get items => throw _privateConstructorUsedError;
  List<Widget> get pages => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SideBarStateCopyWith<SideBarState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SideBarStateCopyWith<$Res> {
  factory $SideBarStateCopyWith(
          SideBarState value, $Res Function(SideBarState) then) =
      _$SideBarStateCopyWithImpl<$Res, SideBarState>;
  @useResult
  $Res call(
      {int selectedIndex,
      int notificationCount,
      bool isLanguageMenuHover,
      int? hoveredIndex,
      List<CategoriesModel> languages,
      List<String> languageImages,
      List<String> items,
      List<Widget> pages});
}

/// @nodoc
class _$SideBarStateCopyWithImpl<$Res, $Val extends SideBarState>
    implements $SideBarStateCopyWith<$Res> {
  _$SideBarStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedIndex = null,
    Object? notificationCount = null,
    Object? isLanguageMenuHover = null,
    Object? hoveredIndex = freezed,
    Object? languages = null,
    Object? languageImages = null,
    Object? items = null,
    Object? pages = null,
  }) {
    return _then(_value.copyWith(
      selectedIndex: null == selectedIndex
          ? _value.selectedIndex
          : selectedIndex // ignore: cast_nullable_to_non_nullable
              as int,
      notificationCount: null == notificationCount
          ? _value.notificationCount
          : notificationCount // ignore: cast_nullable_to_non_nullable
              as int,
      isLanguageMenuHover: null == isLanguageMenuHover
          ? _value.isLanguageMenuHover
          : isLanguageMenuHover // ignore: cast_nullable_to_non_nullable
              as bool,
      hoveredIndex: freezed == hoveredIndex
          ? _value.hoveredIndex
          : hoveredIndex // ignore: cast_nullable_to_non_nullable
              as int?,
      languages: null == languages
          ? _value.languages
          : languages // ignore: cast_nullable_to_non_nullable
              as List<CategoriesModel>,
      languageImages: null == languageImages
          ? _value.languageImages
          : languageImages // ignore: cast_nullable_to_non_nullable
              as List<String>,
      items: null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<String>,
      pages: null == pages
          ? _value.pages
          : pages // ignore: cast_nullable_to_non_nullable
              as List<Widget>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SideBarStateImplCopyWith<$Res>
    implements $SideBarStateCopyWith<$Res> {
  factory _$$SideBarStateImplCopyWith(
          _$SideBarStateImpl value, $Res Function(_$SideBarStateImpl) then) =
      __$$SideBarStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int selectedIndex,
      int notificationCount,
      bool isLanguageMenuHover,
      int? hoveredIndex,
      List<CategoriesModel> languages,
      List<String> languageImages,
      List<String> items,
      List<Widget> pages});
}

/// @nodoc
class __$$SideBarStateImplCopyWithImpl<$Res>
    extends _$SideBarStateCopyWithImpl<$Res, _$SideBarStateImpl>
    implements _$$SideBarStateImplCopyWith<$Res> {
  __$$SideBarStateImplCopyWithImpl(
      _$SideBarStateImpl _value, $Res Function(_$SideBarStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedIndex = null,
    Object? notificationCount = null,
    Object? isLanguageMenuHover = null,
    Object? hoveredIndex = freezed,
    Object? languages = null,
    Object? languageImages = null,
    Object? items = null,
    Object? pages = null,
  }) {
    return _then(_$SideBarStateImpl(
      selectedIndex: null == selectedIndex
          ? _value.selectedIndex
          : selectedIndex // ignore: cast_nullable_to_non_nullable
              as int,
      notificationCount: null == notificationCount
          ? _value.notificationCount
          : notificationCount // ignore: cast_nullable_to_non_nullable
              as int,
      isLanguageMenuHover: null == isLanguageMenuHover
          ? _value.isLanguageMenuHover
          : isLanguageMenuHover // ignore: cast_nullable_to_non_nullable
              as bool,
      hoveredIndex: freezed == hoveredIndex
          ? _value.hoveredIndex
          : hoveredIndex // ignore: cast_nullable_to_non_nullable
              as int?,
      languages: null == languages
          ? _value._languages
          : languages // ignore: cast_nullable_to_non_nullable
              as List<CategoriesModel>,
      languageImages: null == languageImages
          ? _value._languageImages
          : languageImages // ignore: cast_nullable_to_non_nullable
              as List<String>,
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<String>,
      pages: null == pages
          ? _value._pages
          : pages // ignore: cast_nullable_to_non_nullable
              as List<Widget>,
    ));
  }
}

/// @nodoc

class _$SideBarStateImpl implements _SideBarState {
  const _$SideBarStateImpl(
      {required this.selectedIndex,
      required this.notificationCount,
      required this.isLanguageMenuHover,
      required this.hoveredIndex,
      required final List<CategoriesModel> languages,
      required final List<String> languageImages,
      required final List<String> items,
      required final List<Widget> pages})
      : _languages = languages,
        _languageImages = languageImages,
        _items = items,
        _pages = pages;

  @override
  final int selectedIndex;
  @override
  final int notificationCount;
  @override
  final bool isLanguageMenuHover;
  @override
  final int? hoveredIndex;
  final List<CategoriesModel> _languages;
  @override
  List<CategoriesModel> get languages {
    if (_languages is EqualUnmodifiableListView) return _languages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_languages);
  }

  final List<String> _languageImages;
  @override
  List<String> get languageImages {
    if (_languageImages is EqualUnmodifiableListView) return _languageImages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_languageImages);
  }

  final List<String> _items;
  @override
  List<String> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  final List<Widget> _pages;
  @override
  List<Widget> get pages {
    if (_pages is EqualUnmodifiableListView) return _pages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_pages);
  }

  @override
  String toString() {
    return 'SideBarState(selectedIndex: $selectedIndex, notificationCount: $notificationCount, isLanguageMenuHover: $isLanguageMenuHover, hoveredIndex: $hoveredIndex, languages: $languages, languageImages: $languageImages, items: $items, pages: $pages)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SideBarStateImpl &&
            (identical(other.selectedIndex, selectedIndex) ||
                other.selectedIndex == selectedIndex) &&
            (identical(other.notificationCount, notificationCount) ||
                other.notificationCount == notificationCount) &&
            (identical(other.isLanguageMenuHover, isLanguageMenuHover) ||
                other.isLanguageMenuHover == isLanguageMenuHover) &&
            (identical(other.hoveredIndex, hoveredIndex) ||
                other.hoveredIndex == hoveredIndex) &&
            const DeepCollectionEquality()
                .equals(other._languages, _languages) &&
            const DeepCollectionEquality()
                .equals(other._languageImages, _languageImages) &&
            const DeepCollectionEquality().equals(other._items, _items) &&
            const DeepCollectionEquality().equals(other._pages, _pages));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      selectedIndex,
      notificationCount,
      isLanguageMenuHover,
      hoveredIndex,
      const DeepCollectionEquality().hash(_languages),
      const DeepCollectionEquality().hash(_languageImages),
      const DeepCollectionEquality().hash(_items),
      const DeepCollectionEquality().hash(_pages));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SideBarStateImplCopyWith<_$SideBarStateImpl> get copyWith =>
      __$$SideBarStateImplCopyWithImpl<_$SideBarStateImpl>(this, _$identity);
}

abstract class _SideBarState implements SideBarState {
  const factory _SideBarState(
      {required final int selectedIndex,
      required final int notificationCount,
      required final bool isLanguageMenuHover,
      required final int? hoveredIndex,
      required final List<CategoriesModel> languages,
      required final List<String> languageImages,
      required final List<String> items,
      required final List<Widget> pages}) = _$SideBarStateImpl;

  @override
  int get selectedIndex;
  @override
  int get notificationCount;
  @override
  bool get isLanguageMenuHover;
  @override
  int? get hoveredIndex;
  @override
  List<CategoriesModel> get languages;
  @override
  List<String> get languageImages;
  @override
  List<String> get items;
  @override
  List<Widget> get pages;
  @override
  @JsonKey(ignore: true)
  _$$SideBarStateImplCopyWith<_$SideBarStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
