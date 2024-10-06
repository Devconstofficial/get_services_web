// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'categories_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CategoriesEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool value) changeDeleteModeCategory,
    required TResult Function(int index) setCurrentCategory,
    required TResult Function(bool value) changeDeleteModeSubCategory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool value)? changeDeleteModeCategory,
    TResult? Function(int index)? setCurrentCategory,
    TResult? Function(bool value)? changeDeleteModeSubCategory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool value)? changeDeleteModeCategory,
    TResult Function(int index)? setCurrentCategory,
    TResult Function(bool value)? changeDeleteModeSubCategory,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangeDeleteModeCategory value)
        changeDeleteModeCategory,
    required TResult Function(_SetCurrentCategory value) setCurrentCategory,
    required TResult Function(_ChangeDeleteModeSubCategory value)
        changeDeleteModeSubCategory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangeDeleteModeCategory value)?
        changeDeleteModeCategory,
    TResult? Function(_SetCurrentCategory value)? setCurrentCategory,
    TResult? Function(_ChangeDeleteModeSubCategory value)?
        changeDeleteModeSubCategory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeDeleteModeCategory value)? changeDeleteModeCategory,
    TResult Function(_SetCurrentCategory value)? setCurrentCategory,
    TResult Function(_ChangeDeleteModeSubCategory value)?
        changeDeleteModeSubCategory,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoriesEventCopyWith<$Res> {
  factory $CategoriesEventCopyWith(
          CategoriesEvent value, $Res Function(CategoriesEvent) then) =
      _$CategoriesEventCopyWithImpl<$Res, CategoriesEvent>;
}

/// @nodoc
class _$CategoriesEventCopyWithImpl<$Res, $Val extends CategoriesEvent>
    implements $CategoriesEventCopyWith<$Res> {
  _$CategoriesEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ChangeDeleteModeCategoryImplCopyWith<$Res> {
  factory _$$ChangeDeleteModeCategoryImplCopyWith(
          _$ChangeDeleteModeCategoryImpl value,
          $Res Function(_$ChangeDeleteModeCategoryImpl) then) =
      __$$ChangeDeleteModeCategoryImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool value});
}

/// @nodoc
class __$$ChangeDeleteModeCategoryImplCopyWithImpl<$Res>
    extends _$CategoriesEventCopyWithImpl<$Res, _$ChangeDeleteModeCategoryImpl>
    implements _$$ChangeDeleteModeCategoryImplCopyWith<$Res> {
  __$$ChangeDeleteModeCategoryImplCopyWithImpl(
      _$ChangeDeleteModeCategoryImpl _value,
      $Res Function(_$ChangeDeleteModeCategoryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$ChangeDeleteModeCategoryImpl(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$ChangeDeleteModeCategoryImpl implements _ChangeDeleteModeCategory {
  const _$ChangeDeleteModeCategoryImpl({required this.value});

  @override
  final bool value;

  @override
  String toString() {
    return 'CategoriesEvent.changeDeleteModeCategory(value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeDeleteModeCategoryImpl &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeDeleteModeCategoryImplCopyWith<_$ChangeDeleteModeCategoryImpl>
      get copyWith => __$$ChangeDeleteModeCategoryImplCopyWithImpl<
          _$ChangeDeleteModeCategoryImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool value) changeDeleteModeCategory,
    required TResult Function(int index) setCurrentCategory,
    required TResult Function(bool value) changeDeleteModeSubCategory,
  }) {
    return changeDeleteModeCategory(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool value)? changeDeleteModeCategory,
    TResult? Function(int index)? setCurrentCategory,
    TResult? Function(bool value)? changeDeleteModeSubCategory,
  }) {
    return changeDeleteModeCategory?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool value)? changeDeleteModeCategory,
    TResult Function(int index)? setCurrentCategory,
    TResult Function(bool value)? changeDeleteModeSubCategory,
    required TResult orElse(),
  }) {
    if (changeDeleteModeCategory != null) {
      return changeDeleteModeCategory(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangeDeleteModeCategory value)
        changeDeleteModeCategory,
    required TResult Function(_SetCurrentCategory value) setCurrentCategory,
    required TResult Function(_ChangeDeleteModeSubCategory value)
        changeDeleteModeSubCategory,
  }) {
    return changeDeleteModeCategory(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangeDeleteModeCategory value)?
        changeDeleteModeCategory,
    TResult? Function(_SetCurrentCategory value)? setCurrentCategory,
    TResult? Function(_ChangeDeleteModeSubCategory value)?
        changeDeleteModeSubCategory,
  }) {
    return changeDeleteModeCategory?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeDeleteModeCategory value)? changeDeleteModeCategory,
    TResult Function(_SetCurrentCategory value)? setCurrentCategory,
    TResult Function(_ChangeDeleteModeSubCategory value)?
        changeDeleteModeSubCategory,
    required TResult orElse(),
  }) {
    if (changeDeleteModeCategory != null) {
      return changeDeleteModeCategory(this);
    }
    return orElse();
  }
}

abstract class _ChangeDeleteModeCategory implements CategoriesEvent {
  const factory _ChangeDeleteModeCategory({required final bool value}) =
      _$ChangeDeleteModeCategoryImpl;

  bool get value;
  @JsonKey(ignore: true)
  _$$ChangeDeleteModeCategoryImplCopyWith<_$ChangeDeleteModeCategoryImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SetCurrentCategoryImplCopyWith<$Res> {
  factory _$$SetCurrentCategoryImplCopyWith(_$SetCurrentCategoryImpl value,
          $Res Function(_$SetCurrentCategoryImpl) then) =
      __$$SetCurrentCategoryImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int index});
}

/// @nodoc
class __$$SetCurrentCategoryImplCopyWithImpl<$Res>
    extends _$CategoriesEventCopyWithImpl<$Res, _$SetCurrentCategoryImpl>
    implements _$$SetCurrentCategoryImplCopyWith<$Res> {
  __$$SetCurrentCategoryImplCopyWithImpl(_$SetCurrentCategoryImpl _value,
      $Res Function(_$SetCurrentCategoryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
  }) {
    return _then(_$SetCurrentCategoryImpl(
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$SetCurrentCategoryImpl implements _SetCurrentCategory {
  const _$SetCurrentCategoryImpl({required this.index});

  @override
  final int index;

  @override
  String toString() {
    return 'CategoriesEvent.setCurrentCategory(index: $index)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetCurrentCategoryImpl &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SetCurrentCategoryImplCopyWith<_$SetCurrentCategoryImpl> get copyWith =>
      __$$SetCurrentCategoryImplCopyWithImpl<_$SetCurrentCategoryImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool value) changeDeleteModeCategory,
    required TResult Function(int index) setCurrentCategory,
    required TResult Function(bool value) changeDeleteModeSubCategory,
  }) {
    return setCurrentCategory(index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool value)? changeDeleteModeCategory,
    TResult? Function(int index)? setCurrentCategory,
    TResult? Function(bool value)? changeDeleteModeSubCategory,
  }) {
    return setCurrentCategory?.call(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool value)? changeDeleteModeCategory,
    TResult Function(int index)? setCurrentCategory,
    TResult Function(bool value)? changeDeleteModeSubCategory,
    required TResult orElse(),
  }) {
    if (setCurrentCategory != null) {
      return setCurrentCategory(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangeDeleteModeCategory value)
        changeDeleteModeCategory,
    required TResult Function(_SetCurrentCategory value) setCurrentCategory,
    required TResult Function(_ChangeDeleteModeSubCategory value)
        changeDeleteModeSubCategory,
  }) {
    return setCurrentCategory(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangeDeleteModeCategory value)?
        changeDeleteModeCategory,
    TResult? Function(_SetCurrentCategory value)? setCurrentCategory,
    TResult? Function(_ChangeDeleteModeSubCategory value)?
        changeDeleteModeSubCategory,
  }) {
    return setCurrentCategory?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeDeleteModeCategory value)? changeDeleteModeCategory,
    TResult Function(_SetCurrentCategory value)? setCurrentCategory,
    TResult Function(_ChangeDeleteModeSubCategory value)?
        changeDeleteModeSubCategory,
    required TResult orElse(),
  }) {
    if (setCurrentCategory != null) {
      return setCurrentCategory(this);
    }
    return orElse();
  }
}

abstract class _SetCurrentCategory implements CategoriesEvent {
  const factory _SetCurrentCategory({required final int index}) =
      _$SetCurrentCategoryImpl;

  int get index;
  @JsonKey(ignore: true)
  _$$SetCurrentCategoryImplCopyWith<_$SetCurrentCategoryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChangeDeleteModeSubCategoryImplCopyWith<$Res> {
  factory _$$ChangeDeleteModeSubCategoryImplCopyWith(
          _$ChangeDeleteModeSubCategoryImpl value,
          $Res Function(_$ChangeDeleteModeSubCategoryImpl) then) =
      __$$ChangeDeleteModeSubCategoryImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool value});
}

/// @nodoc
class __$$ChangeDeleteModeSubCategoryImplCopyWithImpl<$Res>
    extends _$CategoriesEventCopyWithImpl<$Res,
        _$ChangeDeleteModeSubCategoryImpl>
    implements _$$ChangeDeleteModeSubCategoryImplCopyWith<$Res> {
  __$$ChangeDeleteModeSubCategoryImplCopyWithImpl(
      _$ChangeDeleteModeSubCategoryImpl _value,
      $Res Function(_$ChangeDeleteModeSubCategoryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$ChangeDeleteModeSubCategoryImpl(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$ChangeDeleteModeSubCategoryImpl
    implements _ChangeDeleteModeSubCategory {
  const _$ChangeDeleteModeSubCategoryImpl({required this.value});

  @override
  final bool value;

  @override
  String toString() {
    return 'CategoriesEvent.changeDeleteModeSubCategory(value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeDeleteModeSubCategoryImpl &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeDeleteModeSubCategoryImplCopyWith<_$ChangeDeleteModeSubCategoryImpl>
      get copyWith => __$$ChangeDeleteModeSubCategoryImplCopyWithImpl<
          _$ChangeDeleteModeSubCategoryImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool value) changeDeleteModeCategory,
    required TResult Function(int index) setCurrentCategory,
    required TResult Function(bool value) changeDeleteModeSubCategory,
  }) {
    return changeDeleteModeSubCategory(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool value)? changeDeleteModeCategory,
    TResult? Function(int index)? setCurrentCategory,
    TResult? Function(bool value)? changeDeleteModeSubCategory,
  }) {
    return changeDeleteModeSubCategory?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool value)? changeDeleteModeCategory,
    TResult Function(int index)? setCurrentCategory,
    TResult Function(bool value)? changeDeleteModeSubCategory,
    required TResult orElse(),
  }) {
    if (changeDeleteModeSubCategory != null) {
      return changeDeleteModeSubCategory(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangeDeleteModeCategory value)
        changeDeleteModeCategory,
    required TResult Function(_SetCurrentCategory value) setCurrentCategory,
    required TResult Function(_ChangeDeleteModeSubCategory value)
        changeDeleteModeSubCategory,
  }) {
    return changeDeleteModeSubCategory(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangeDeleteModeCategory value)?
        changeDeleteModeCategory,
    TResult? Function(_SetCurrentCategory value)? setCurrentCategory,
    TResult? Function(_ChangeDeleteModeSubCategory value)?
        changeDeleteModeSubCategory,
  }) {
    return changeDeleteModeSubCategory?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeDeleteModeCategory value)? changeDeleteModeCategory,
    TResult Function(_SetCurrentCategory value)? setCurrentCategory,
    TResult Function(_ChangeDeleteModeSubCategory value)?
        changeDeleteModeSubCategory,
    required TResult orElse(),
  }) {
    if (changeDeleteModeSubCategory != null) {
      return changeDeleteModeSubCategory(this);
    }
    return orElse();
  }
}

abstract class _ChangeDeleteModeSubCategory implements CategoriesEvent {
  const factory _ChangeDeleteModeSubCategory({required final bool value}) =
      _$ChangeDeleteModeSubCategoryImpl;

  bool get value;
  @JsonKey(ignore: true)
  _$$ChangeDeleteModeSubCategoryImplCopyWith<_$ChangeDeleteModeSubCategoryImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CategoriesState {
  bool get isDeletionModeCategory => throw _privateConstructorUsedError;
  bool get isDeletionModeSubcategory => throw _privateConstructorUsedError;
  List<CategoriesData> get categories => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CategoriesStateCopyWith<CategoriesState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoriesStateCopyWith<$Res> {
  factory $CategoriesStateCopyWith(
          CategoriesState value, $Res Function(CategoriesState) then) =
      _$CategoriesStateCopyWithImpl<$Res, CategoriesState>;
  @useResult
  $Res call(
      {bool isDeletionModeCategory,
      bool isDeletionModeSubcategory,
      List<CategoriesData> categories});
}

/// @nodoc
class _$CategoriesStateCopyWithImpl<$Res, $Val extends CategoriesState>
    implements $CategoriesStateCopyWith<$Res> {
  _$CategoriesStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isDeletionModeCategory = null,
    Object? isDeletionModeSubcategory = null,
    Object? categories = null,
  }) {
    return _then(_value.copyWith(
      isDeletionModeCategory: null == isDeletionModeCategory
          ? _value.isDeletionModeCategory
          : isDeletionModeCategory // ignore: cast_nullable_to_non_nullable
              as bool,
      isDeletionModeSubcategory: null == isDeletionModeSubcategory
          ? _value.isDeletionModeSubcategory
          : isDeletionModeSubcategory // ignore: cast_nullable_to_non_nullable
              as bool,
      categories: null == categories
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<CategoriesData>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CategoriesStateImplCopyWith<$Res>
    implements $CategoriesStateCopyWith<$Res> {
  factory _$$CategoriesStateImplCopyWith(_$CategoriesStateImpl value,
          $Res Function(_$CategoriesStateImpl) then) =
      __$$CategoriesStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isDeletionModeCategory,
      bool isDeletionModeSubcategory,
      List<CategoriesData> categories});
}

/// @nodoc
class __$$CategoriesStateImplCopyWithImpl<$Res>
    extends _$CategoriesStateCopyWithImpl<$Res, _$CategoriesStateImpl>
    implements _$$CategoriesStateImplCopyWith<$Res> {
  __$$CategoriesStateImplCopyWithImpl(
      _$CategoriesStateImpl _value, $Res Function(_$CategoriesStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isDeletionModeCategory = null,
    Object? isDeletionModeSubcategory = null,
    Object? categories = null,
  }) {
    return _then(_$CategoriesStateImpl(
      isDeletionModeCategory: null == isDeletionModeCategory
          ? _value.isDeletionModeCategory
          : isDeletionModeCategory // ignore: cast_nullable_to_non_nullable
              as bool,
      isDeletionModeSubcategory: null == isDeletionModeSubcategory
          ? _value.isDeletionModeSubcategory
          : isDeletionModeSubcategory // ignore: cast_nullable_to_non_nullable
              as bool,
      categories: null == categories
          ? _value._categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<CategoriesData>,
    ));
  }
}

/// @nodoc

class _$CategoriesStateImpl implements _CategoriesState {
  const _$CategoriesStateImpl(
      {required this.isDeletionModeCategory,
      required this.isDeletionModeSubcategory,
      required final List<CategoriesData> categories})
      : _categories = categories;

  @override
  final bool isDeletionModeCategory;
  @override
  final bool isDeletionModeSubcategory;
  final List<CategoriesData> _categories;
  @override
  List<CategoriesData> get categories {
    if (_categories is EqualUnmodifiableListView) return _categories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_categories);
  }

  @override
  String toString() {
    return 'CategoriesState(isDeletionModeCategory: $isDeletionModeCategory, isDeletionModeSubcategory: $isDeletionModeSubcategory, categories: $categories)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoriesStateImpl &&
            (identical(other.isDeletionModeCategory, isDeletionModeCategory) ||
                other.isDeletionModeCategory == isDeletionModeCategory) &&
            (identical(other.isDeletionModeSubcategory,
                    isDeletionModeSubcategory) ||
                other.isDeletionModeSubcategory == isDeletionModeSubcategory) &&
            const DeepCollectionEquality()
                .equals(other._categories, _categories));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isDeletionModeCategory,
      isDeletionModeSubcategory,
      const DeepCollectionEquality().hash(_categories));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CategoriesStateImplCopyWith<_$CategoriesStateImpl> get copyWith =>
      __$$CategoriesStateImplCopyWithImpl<_$CategoriesStateImpl>(
          this, _$identity);
}

abstract class _CategoriesState implements CategoriesState {
  const factory _CategoriesState(
      {required final bool isDeletionModeCategory,
      required final bool isDeletionModeSubcategory,
      required final List<CategoriesData> categories}) = _$CategoriesStateImpl;

  @override
  bool get isDeletionModeCategory;
  @override
  bool get isDeletionModeSubcategory;
  @override
  List<CategoriesData> get categories;
  @override
  @JsonKey(ignore: true)
  _$$CategoriesStateImplCopyWith<_$CategoriesStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
