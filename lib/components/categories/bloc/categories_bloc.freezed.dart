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
    required TResult Function() fetchCategoriesAndServices,
    required TResult Function(String categoryId) deleteCategory,
    required TResult Function(String subCategoryId) deleteSubCategory,
    required TResult Function(String? name, dynamic imageFile) addCategory,
    required TResult Function(String categoryId, String serviceName) addService,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool value)? changeDeleteModeCategory,
    TResult? Function(int index)? setCurrentCategory,
    TResult? Function(bool value)? changeDeleteModeSubCategory,
    TResult? Function()? fetchCategoriesAndServices,
    TResult? Function(String categoryId)? deleteCategory,
    TResult? Function(String subCategoryId)? deleteSubCategory,
    TResult? Function(String? name, dynamic imageFile)? addCategory,
    TResult? Function(String categoryId, String serviceName)? addService,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool value)? changeDeleteModeCategory,
    TResult Function(int index)? setCurrentCategory,
    TResult Function(bool value)? changeDeleteModeSubCategory,
    TResult Function()? fetchCategoriesAndServices,
    TResult Function(String categoryId)? deleteCategory,
    TResult Function(String subCategoryId)? deleteSubCategory,
    TResult Function(String? name, dynamic imageFile)? addCategory,
    TResult Function(String categoryId, String serviceName)? addService,
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
    required TResult Function(_FetchCategoriesAndServices value)
        fetchCategoriesAndServices,
    required TResult Function(_DeleteCategory value) deleteCategory,
    required TResult Function(_DeleteSubCategory value) deleteSubCategory,
    required TResult Function(AddCategory value) addCategory,
    required TResult Function(_AddService value) addService,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangeDeleteModeCategory value)?
        changeDeleteModeCategory,
    TResult? Function(_SetCurrentCategory value)? setCurrentCategory,
    TResult? Function(_ChangeDeleteModeSubCategory value)?
        changeDeleteModeSubCategory,
    TResult? Function(_FetchCategoriesAndServices value)?
        fetchCategoriesAndServices,
    TResult? Function(_DeleteCategory value)? deleteCategory,
    TResult? Function(_DeleteSubCategory value)? deleteSubCategory,
    TResult? Function(AddCategory value)? addCategory,
    TResult? Function(_AddService value)? addService,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeDeleteModeCategory value)? changeDeleteModeCategory,
    TResult Function(_SetCurrentCategory value)? setCurrentCategory,
    TResult Function(_ChangeDeleteModeSubCategory value)?
        changeDeleteModeSubCategory,
    TResult Function(_FetchCategoriesAndServices value)?
        fetchCategoriesAndServices,
    TResult Function(_DeleteCategory value)? deleteCategory,
    TResult Function(_DeleteSubCategory value)? deleteSubCategory,
    TResult Function(AddCategory value)? addCategory,
    TResult Function(_AddService value)? addService,
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
    required TResult Function() fetchCategoriesAndServices,
    required TResult Function(String categoryId) deleteCategory,
    required TResult Function(String subCategoryId) deleteSubCategory,
    required TResult Function(String? name, dynamic imageFile) addCategory,
    required TResult Function(String categoryId, String serviceName) addService,
  }) {
    return changeDeleteModeCategory(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool value)? changeDeleteModeCategory,
    TResult? Function(int index)? setCurrentCategory,
    TResult? Function(bool value)? changeDeleteModeSubCategory,
    TResult? Function()? fetchCategoriesAndServices,
    TResult? Function(String categoryId)? deleteCategory,
    TResult? Function(String subCategoryId)? deleteSubCategory,
    TResult? Function(String? name, dynamic imageFile)? addCategory,
    TResult? Function(String categoryId, String serviceName)? addService,
  }) {
    return changeDeleteModeCategory?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool value)? changeDeleteModeCategory,
    TResult Function(int index)? setCurrentCategory,
    TResult Function(bool value)? changeDeleteModeSubCategory,
    TResult Function()? fetchCategoriesAndServices,
    TResult Function(String categoryId)? deleteCategory,
    TResult Function(String subCategoryId)? deleteSubCategory,
    TResult Function(String? name, dynamic imageFile)? addCategory,
    TResult Function(String categoryId, String serviceName)? addService,
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
    required TResult Function(_FetchCategoriesAndServices value)
        fetchCategoriesAndServices,
    required TResult Function(_DeleteCategory value) deleteCategory,
    required TResult Function(_DeleteSubCategory value) deleteSubCategory,
    required TResult Function(AddCategory value) addCategory,
    required TResult Function(_AddService value) addService,
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
    TResult? Function(_FetchCategoriesAndServices value)?
        fetchCategoriesAndServices,
    TResult? Function(_DeleteCategory value)? deleteCategory,
    TResult? Function(_DeleteSubCategory value)? deleteSubCategory,
    TResult? Function(AddCategory value)? addCategory,
    TResult? Function(_AddService value)? addService,
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
    TResult Function(_FetchCategoriesAndServices value)?
        fetchCategoriesAndServices,
    TResult Function(_DeleteCategory value)? deleteCategory,
    TResult Function(_DeleteSubCategory value)? deleteSubCategory,
    TResult Function(AddCategory value)? addCategory,
    TResult Function(_AddService value)? addService,
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
    required TResult Function() fetchCategoriesAndServices,
    required TResult Function(String categoryId) deleteCategory,
    required TResult Function(String subCategoryId) deleteSubCategory,
    required TResult Function(String? name, dynamic imageFile) addCategory,
    required TResult Function(String categoryId, String serviceName) addService,
  }) {
    return setCurrentCategory(index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool value)? changeDeleteModeCategory,
    TResult? Function(int index)? setCurrentCategory,
    TResult? Function(bool value)? changeDeleteModeSubCategory,
    TResult? Function()? fetchCategoriesAndServices,
    TResult? Function(String categoryId)? deleteCategory,
    TResult? Function(String subCategoryId)? deleteSubCategory,
    TResult? Function(String? name, dynamic imageFile)? addCategory,
    TResult? Function(String categoryId, String serviceName)? addService,
  }) {
    return setCurrentCategory?.call(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool value)? changeDeleteModeCategory,
    TResult Function(int index)? setCurrentCategory,
    TResult Function(bool value)? changeDeleteModeSubCategory,
    TResult Function()? fetchCategoriesAndServices,
    TResult Function(String categoryId)? deleteCategory,
    TResult Function(String subCategoryId)? deleteSubCategory,
    TResult Function(String? name, dynamic imageFile)? addCategory,
    TResult Function(String categoryId, String serviceName)? addService,
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
    required TResult Function(_FetchCategoriesAndServices value)
        fetchCategoriesAndServices,
    required TResult Function(_DeleteCategory value) deleteCategory,
    required TResult Function(_DeleteSubCategory value) deleteSubCategory,
    required TResult Function(AddCategory value) addCategory,
    required TResult Function(_AddService value) addService,
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
    TResult? Function(_FetchCategoriesAndServices value)?
        fetchCategoriesAndServices,
    TResult? Function(_DeleteCategory value)? deleteCategory,
    TResult? Function(_DeleteSubCategory value)? deleteSubCategory,
    TResult? Function(AddCategory value)? addCategory,
    TResult? Function(_AddService value)? addService,
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
    TResult Function(_FetchCategoriesAndServices value)?
        fetchCategoriesAndServices,
    TResult Function(_DeleteCategory value)? deleteCategory,
    TResult Function(_DeleteSubCategory value)? deleteSubCategory,
    TResult Function(AddCategory value)? addCategory,
    TResult Function(_AddService value)? addService,
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
    required TResult Function() fetchCategoriesAndServices,
    required TResult Function(String categoryId) deleteCategory,
    required TResult Function(String subCategoryId) deleteSubCategory,
    required TResult Function(String? name, dynamic imageFile) addCategory,
    required TResult Function(String categoryId, String serviceName) addService,
  }) {
    return changeDeleteModeSubCategory(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool value)? changeDeleteModeCategory,
    TResult? Function(int index)? setCurrentCategory,
    TResult? Function(bool value)? changeDeleteModeSubCategory,
    TResult? Function()? fetchCategoriesAndServices,
    TResult? Function(String categoryId)? deleteCategory,
    TResult? Function(String subCategoryId)? deleteSubCategory,
    TResult? Function(String? name, dynamic imageFile)? addCategory,
    TResult? Function(String categoryId, String serviceName)? addService,
  }) {
    return changeDeleteModeSubCategory?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool value)? changeDeleteModeCategory,
    TResult Function(int index)? setCurrentCategory,
    TResult Function(bool value)? changeDeleteModeSubCategory,
    TResult Function()? fetchCategoriesAndServices,
    TResult Function(String categoryId)? deleteCategory,
    TResult Function(String subCategoryId)? deleteSubCategory,
    TResult Function(String? name, dynamic imageFile)? addCategory,
    TResult Function(String categoryId, String serviceName)? addService,
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
    required TResult Function(_FetchCategoriesAndServices value)
        fetchCategoriesAndServices,
    required TResult Function(_DeleteCategory value) deleteCategory,
    required TResult Function(_DeleteSubCategory value) deleteSubCategory,
    required TResult Function(AddCategory value) addCategory,
    required TResult Function(_AddService value) addService,
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
    TResult? Function(_FetchCategoriesAndServices value)?
        fetchCategoriesAndServices,
    TResult? Function(_DeleteCategory value)? deleteCategory,
    TResult? Function(_DeleteSubCategory value)? deleteSubCategory,
    TResult? Function(AddCategory value)? addCategory,
    TResult? Function(_AddService value)? addService,
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
    TResult Function(_FetchCategoriesAndServices value)?
        fetchCategoriesAndServices,
    TResult Function(_DeleteCategory value)? deleteCategory,
    TResult Function(_DeleteSubCategory value)? deleteSubCategory,
    TResult Function(AddCategory value)? addCategory,
    TResult Function(_AddService value)? addService,
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
abstract class _$$FetchCategoriesAndServicesImplCopyWith<$Res> {
  factory _$$FetchCategoriesAndServicesImplCopyWith(
          _$FetchCategoriesAndServicesImpl value,
          $Res Function(_$FetchCategoriesAndServicesImpl) then) =
      __$$FetchCategoriesAndServicesImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchCategoriesAndServicesImplCopyWithImpl<$Res>
    extends _$CategoriesEventCopyWithImpl<$Res,
        _$FetchCategoriesAndServicesImpl>
    implements _$$FetchCategoriesAndServicesImplCopyWith<$Res> {
  __$$FetchCategoriesAndServicesImplCopyWithImpl(
      _$FetchCategoriesAndServicesImpl _value,
      $Res Function(_$FetchCategoriesAndServicesImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FetchCategoriesAndServicesImpl implements _FetchCategoriesAndServices {
  const _$FetchCategoriesAndServicesImpl();

  @override
  String toString() {
    return 'CategoriesEvent.fetchCategoriesAndServices()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchCategoriesAndServicesImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool value) changeDeleteModeCategory,
    required TResult Function(int index) setCurrentCategory,
    required TResult Function(bool value) changeDeleteModeSubCategory,
    required TResult Function() fetchCategoriesAndServices,
    required TResult Function(String categoryId) deleteCategory,
    required TResult Function(String subCategoryId) deleteSubCategory,
    required TResult Function(String? name, dynamic imageFile) addCategory,
    required TResult Function(String categoryId, String serviceName) addService,
  }) {
    return fetchCategoriesAndServices();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool value)? changeDeleteModeCategory,
    TResult? Function(int index)? setCurrentCategory,
    TResult? Function(bool value)? changeDeleteModeSubCategory,
    TResult? Function()? fetchCategoriesAndServices,
    TResult? Function(String categoryId)? deleteCategory,
    TResult? Function(String subCategoryId)? deleteSubCategory,
    TResult? Function(String? name, dynamic imageFile)? addCategory,
    TResult? Function(String categoryId, String serviceName)? addService,
  }) {
    return fetchCategoriesAndServices?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool value)? changeDeleteModeCategory,
    TResult Function(int index)? setCurrentCategory,
    TResult Function(bool value)? changeDeleteModeSubCategory,
    TResult Function()? fetchCategoriesAndServices,
    TResult Function(String categoryId)? deleteCategory,
    TResult Function(String subCategoryId)? deleteSubCategory,
    TResult Function(String? name, dynamic imageFile)? addCategory,
    TResult Function(String categoryId, String serviceName)? addService,
    required TResult orElse(),
  }) {
    if (fetchCategoriesAndServices != null) {
      return fetchCategoriesAndServices();
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
    required TResult Function(_FetchCategoriesAndServices value)
        fetchCategoriesAndServices,
    required TResult Function(_DeleteCategory value) deleteCategory,
    required TResult Function(_DeleteSubCategory value) deleteSubCategory,
    required TResult Function(AddCategory value) addCategory,
    required TResult Function(_AddService value) addService,
  }) {
    return fetchCategoriesAndServices(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangeDeleteModeCategory value)?
        changeDeleteModeCategory,
    TResult? Function(_SetCurrentCategory value)? setCurrentCategory,
    TResult? Function(_ChangeDeleteModeSubCategory value)?
        changeDeleteModeSubCategory,
    TResult? Function(_FetchCategoriesAndServices value)?
        fetchCategoriesAndServices,
    TResult? Function(_DeleteCategory value)? deleteCategory,
    TResult? Function(_DeleteSubCategory value)? deleteSubCategory,
    TResult? Function(AddCategory value)? addCategory,
    TResult? Function(_AddService value)? addService,
  }) {
    return fetchCategoriesAndServices?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeDeleteModeCategory value)? changeDeleteModeCategory,
    TResult Function(_SetCurrentCategory value)? setCurrentCategory,
    TResult Function(_ChangeDeleteModeSubCategory value)?
        changeDeleteModeSubCategory,
    TResult Function(_FetchCategoriesAndServices value)?
        fetchCategoriesAndServices,
    TResult Function(_DeleteCategory value)? deleteCategory,
    TResult Function(_DeleteSubCategory value)? deleteSubCategory,
    TResult Function(AddCategory value)? addCategory,
    TResult Function(_AddService value)? addService,
    required TResult orElse(),
  }) {
    if (fetchCategoriesAndServices != null) {
      return fetchCategoriesAndServices(this);
    }
    return orElse();
  }
}

abstract class _FetchCategoriesAndServices implements CategoriesEvent {
  const factory _FetchCategoriesAndServices() =
      _$FetchCategoriesAndServicesImpl;
}

/// @nodoc
abstract class _$$DeleteCategoryImplCopyWith<$Res> {
  factory _$$DeleteCategoryImplCopyWith(_$DeleteCategoryImpl value,
          $Res Function(_$DeleteCategoryImpl) then) =
      __$$DeleteCategoryImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String categoryId});
}

/// @nodoc
class __$$DeleteCategoryImplCopyWithImpl<$Res>
    extends _$CategoriesEventCopyWithImpl<$Res, _$DeleteCategoryImpl>
    implements _$$DeleteCategoryImplCopyWith<$Res> {
  __$$DeleteCategoryImplCopyWithImpl(
      _$DeleteCategoryImpl _value, $Res Function(_$DeleteCategoryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categoryId = null,
  }) {
    return _then(_$DeleteCategoryImpl(
      categoryId: null == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DeleteCategoryImpl implements _DeleteCategory {
  const _$DeleteCategoryImpl({required this.categoryId});

  @override
  final String categoryId;

  @override
  String toString() {
    return 'CategoriesEvent.deleteCategory(categoryId: $categoryId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteCategoryImpl &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, categoryId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteCategoryImplCopyWith<_$DeleteCategoryImpl> get copyWith =>
      __$$DeleteCategoryImplCopyWithImpl<_$DeleteCategoryImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool value) changeDeleteModeCategory,
    required TResult Function(int index) setCurrentCategory,
    required TResult Function(bool value) changeDeleteModeSubCategory,
    required TResult Function() fetchCategoriesAndServices,
    required TResult Function(String categoryId) deleteCategory,
    required TResult Function(String subCategoryId) deleteSubCategory,
    required TResult Function(String? name, dynamic imageFile) addCategory,
    required TResult Function(String categoryId, String serviceName) addService,
  }) {
    return deleteCategory(categoryId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool value)? changeDeleteModeCategory,
    TResult? Function(int index)? setCurrentCategory,
    TResult? Function(bool value)? changeDeleteModeSubCategory,
    TResult? Function()? fetchCategoriesAndServices,
    TResult? Function(String categoryId)? deleteCategory,
    TResult? Function(String subCategoryId)? deleteSubCategory,
    TResult? Function(String? name, dynamic imageFile)? addCategory,
    TResult? Function(String categoryId, String serviceName)? addService,
  }) {
    return deleteCategory?.call(categoryId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool value)? changeDeleteModeCategory,
    TResult Function(int index)? setCurrentCategory,
    TResult Function(bool value)? changeDeleteModeSubCategory,
    TResult Function()? fetchCategoriesAndServices,
    TResult Function(String categoryId)? deleteCategory,
    TResult Function(String subCategoryId)? deleteSubCategory,
    TResult Function(String? name, dynamic imageFile)? addCategory,
    TResult Function(String categoryId, String serviceName)? addService,
    required TResult orElse(),
  }) {
    if (deleteCategory != null) {
      return deleteCategory(categoryId);
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
    required TResult Function(_FetchCategoriesAndServices value)
        fetchCategoriesAndServices,
    required TResult Function(_DeleteCategory value) deleteCategory,
    required TResult Function(_DeleteSubCategory value) deleteSubCategory,
    required TResult Function(AddCategory value) addCategory,
    required TResult Function(_AddService value) addService,
  }) {
    return deleteCategory(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangeDeleteModeCategory value)?
        changeDeleteModeCategory,
    TResult? Function(_SetCurrentCategory value)? setCurrentCategory,
    TResult? Function(_ChangeDeleteModeSubCategory value)?
        changeDeleteModeSubCategory,
    TResult? Function(_FetchCategoriesAndServices value)?
        fetchCategoriesAndServices,
    TResult? Function(_DeleteCategory value)? deleteCategory,
    TResult? Function(_DeleteSubCategory value)? deleteSubCategory,
    TResult? Function(AddCategory value)? addCategory,
    TResult? Function(_AddService value)? addService,
  }) {
    return deleteCategory?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeDeleteModeCategory value)? changeDeleteModeCategory,
    TResult Function(_SetCurrentCategory value)? setCurrentCategory,
    TResult Function(_ChangeDeleteModeSubCategory value)?
        changeDeleteModeSubCategory,
    TResult Function(_FetchCategoriesAndServices value)?
        fetchCategoriesAndServices,
    TResult Function(_DeleteCategory value)? deleteCategory,
    TResult Function(_DeleteSubCategory value)? deleteSubCategory,
    TResult Function(AddCategory value)? addCategory,
    TResult Function(_AddService value)? addService,
    required TResult orElse(),
  }) {
    if (deleteCategory != null) {
      return deleteCategory(this);
    }
    return orElse();
  }
}

abstract class _DeleteCategory implements CategoriesEvent {
  const factory _DeleteCategory({required final String categoryId}) =
      _$DeleteCategoryImpl;

  String get categoryId;
  @JsonKey(ignore: true)
  _$$DeleteCategoryImplCopyWith<_$DeleteCategoryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteSubCategoryImplCopyWith<$Res> {
  factory _$$DeleteSubCategoryImplCopyWith(_$DeleteSubCategoryImpl value,
          $Res Function(_$DeleteSubCategoryImpl) then) =
      __$$DeleteSubCategoryImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String subCategoryId});
}

/// @nodoc
class __$$DeleteSubCategoryImplCopyWithImpl<$Res>
    extends _$CategoriesEventCopyWithImpl<$Res, _$DeleteSubCategoryImpl>
    implements _$$DeleteSubCategoryImplCopyWith<$Res> {
  __$$DeleteSubCategoryImplCopyWithImpl(_$DeleteSubCategoryImpl _value,
      $Res Function(_$DeleteSubCategoryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? subCategoryId = null,
  }) {
    return _then(_$DeleteSubCategoryImpl(
      subCategoryId: null == subCategoryId
          ? _value.subCategoryId
          : subCategoryId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DeleteSubCategoryImpl implements _DeleteSubCategory {
  const _$DeleteSubCategoryImpl({required this.subCategoryId});

  @override
  final String subCategoryId;

  @override
  String toString() {
    return 'CategoriesEvent.deleteSubCategory(subCategoryId: $subCategoryId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteSubCategoryImpl &&
            (identical(other.subCategoryId, subCategoryId) ||
                other.subCategoryId == subCategoryId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, subCategoryId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteSubCategoryImplCopyWith<_$DeleteSubCategoryImpl> get copyWith =>
      __$$DeleteSubCategoryImplCopyWithImpl<_$DeleteSubCategoryImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool value) changeDeleteModeCategory,
    required TResult Function(int index) setCurrentCategory,
    required TResult Function(bool value) changeDeleteModeSubCategory,
    required TResult Function() fetchCategoriesAndServices,
    required TResult Function(String categoryId) deleteCategory,
    required TResult Function(String subCategoryId) deleteSubCategory,
    required TResult Function(String? name, dynamic imageFile) addCategory,
    required TResult Function(String categoryId, String serviceName) addService,
  }) {
    return deleteSubCategory(subCategoryId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool value)? changeDeleteModeCategory,
    TResult? Function(int index)? setCurrentCategory,
    TResult? Function(bool value)? changeDeleteModeSubCategory,
    TResult? Function()? fetchCategoriesAndServices,
    TResult? Function(String categoryId)? deleteCategory,
    TResult? Function(String subCategoryId)? deleteSubCategory,
    TResult? Function(String? name, dynamic imageFile)? addCategory,
    TResult? Function(String categoryId, String serviceName)? addService,
  }) {
    return deleteSubCategory?.call(subCategoryId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool value)? changeDeleteModeCategory,
    TResult Function(int index)? setCurrentCategory,
    TResult Function(bool value)? changeDeleteModeSubCategory,
    TResult Function()? fetchCategoriesAndServices,
    TResult Function(String categoryId)? deleteCategory,
    TResult Function(String subCategoryId)? deleteSubCategory,
    TResult Function(String? name, dynamic imageFile)? addCategory,
    TResult Function(String categoryId, String serviceName)? addService,
    required TResult orElse(),
  }) {
    if (deleteSubCategory != null) {
      return deleteSubCategory(subCategoryId);
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
    required TResult Function(_FetchCategoriesAndServices value)
        fetchCategoriesAndServices,
    required TResult Function(_DeleteCategory value) deleteCategory,
    required TResult Function(_DeleteSubCategory value) deleteSubCategory,
    required TResult Function(AddCategory value) addCategory,
    required TResult Function(_AddService value) addService,
  }) {
    return deleteSubCategory(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangeDeleteModeCategory value)?
        changeDeleteModeCategory,
    TResult? Function(_SetCurrentCategory value)? setCurrentCategory,
    TResult? Function(_ChangeDeleteModeSubCategory value)?
        changeDeleteModeSubCategory,
    TResult? Function(_FetchCategoriesAndServices value)?
        fetchCategoriesAndServices,
    TResult? Function(_DeleteCategory value)? deleteCategory,
    TResult? Function(_DeleteSubCategory value)? deleteSubCategory,
    TResult? Function(AddCategory value)? addCategory,
    TResult? Function(_AddService value)? addService,
  }) {
    return deleteSubCategory?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeDeleteModeCategory value)? changeDeleteModeCategory,
    TResult Function(_SetCurrentCategory value)? setCurrentCategory,
    TResult Function(_ChangeDeleteModeSubCategory value)?
        changeDeleteModeSubCategory,
    TResult Function(_FetchCategoriesAndServices value)?
        fetchCategoriesAndServices,
    TResult Function(_DeleteCategory value)? deleteCategory,
    TResult Function(_DeleteSubCategory value)? deleteSubCategory,
    TResult Function(AddCategory value)? addCategory,
    TResult Function(_AddService value)? addService,
    required TResult orElse(),
  }) {
    if (deleteSubCategory != null) {
      return deleteSubCategory(this);
    }
    return orElse();
  }
}

abstract class _DeleteSubCategory implements CategoriesEvent {
  const factory _DeleteSubCategory({required final String subCategoryId}) =
      _$DeleteSubCategoryImpl;

  String get subCategoryId;
  @JsonKey(ignore: true)
  _$$DeleteSubCategoryImplCopyWith<_$DeleteSubCategoryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddCategoryImplCopyWith<$Res> {
  factory _$$AddCategoryImplCopyWith(
          _$AddCategoryImpl value, $Res Function(_$AddCategoryImpl) then) =
      __$$AddCategoryImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? name, dynamic imageFile});
}

/// @nodoc
class __$$AddCategoryImplCopyWithImpl<$Res>
    extends _$CategoriesEventCopyWithImpl<$Res, _$AddCategoryImpl>
    implements _$$AddCategoryImplCopyWith<$Res> {
  __$$AddCategoryImplCopyWithImpl(
      _$AddCategoryImpl _value, $Res Function(_$AddCategoryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? imageFile = freezed,
  }) {
    return _then(_$AddCategoryImpl(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      imageFile: freezed == imageFile
          ? _value.imageFile
          : imageFile // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc

class _$AddCategoryImpl implements AddCategory {
  const _$AddCategoryImpl({required this.name, required this.imageFile});

  @override
  final String? name;
  @override
  final dynamic imageFile;

  @override
  String toString() {
    return 'CategoriesEvent.addCategory(name: $name, imageFile: $imageFile)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddCategoryImpl &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other.imageFile, imageFile));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, name, const DeepCollectionEquality().hash(imageFile));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddCategoryImplCopyWith<_$AddCategoryImpl> get copyWith =>
      __$$AddCategoryImplCopyWithImpl<_$AddCategoryImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool value) changeDeleteModeCategory,
    required TResult Function(int index) setCurrentCategory,
    required TResult Function(bool value) changeDeleteModeSubCategory,
    required TResult Function() fetchCategoriesAndServices,
    required TResult Function(String categoryId) deleteCategory,
    required TResult Function(String subCategoryId) deleteSubCategory,
    required TResult Function(String? name, dynamic imageFile) addCategory,
    required TResult Function(String categoryId, String serviceName) addService,
  }) {
    return addCategory(name, imageFile);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool value)? changeDeleteModeCategory,
    TResult? Function(int index)? setCurrentCategory,
    TResult? Function(bool value)? changeDeleteModeSubCategory,
    TResult? Function()? fetchCategoriesAndServices,
    TResult? Function(String categoryId)? deleteCategory,
    TResult? Function(String subCategoryId)? deleteSubCategory,
    TResult? Function(String? name, dynamic imageFile)? addCategory,
    TResult? Function(String categoryId, String serviceName)? addService,
  }) {
    return addCategory?.call(name, imageFile);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool value)? changeDeleteModeCategory,
    TResult Function(int index)? setCurrentCategory,
    TResult Function(bool value)? changeDeleteModeSubCategory,
    TResult Function()? fetchCategoriesAndServices,
    TResult Function(String categoryId)? deleteCategory,
    TResult Function(String subCategoryId)? deleteSubCategory,
    TResult Function(String? name, dynamic imageFile)? addCategory,
    TResult Function(String categoryId, String serviceName)? addService,
    required TResult orElse(),
  }) {
    if (addCategory != null) {
      return addCategory(name, imageFile);
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
    required TResult Function(_FetchCategoriesAndServices value)
        fetchCategoriesAndServices,
    required TResult Function(_DeleteCategory value) deleteCategory,
    required TResult Function(_DeleteSubCategory value) deleteSubCategory,
    required TResult Function(AddCategory value) addCategory,
    required TResult Function(_AddService value) addService,
  }) {
    return addCategory(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangeDeleteModeCategory value)?
        changeDeleteModeCategory,
    TResult? Function(_SetCurrentCategory value)? setCurrentCategory,
    TResult? Function(_ChangeDeleteModeSubCategory value)?
        changeDeleteModeSubCategory,
    TResult? Function(_FetchCategoriesAndServices value)?
        fetchCategoriesAndServices,
    TResult? Function(_DeleteCategory value)? deleteCategory,
    TResult? Function(_DeleteSubCategory value)? deleteSubCategory,
    TResult? Function(AddCategory value)? addCategory,
    TResult? Function(_AddService value)? addService,
  }) {
    return addCategory?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeDeleteModeCategory value)? changeDeleteModeCategory,
    TResult Function(_SetCurrentCategory value)? setCurrentCategory,
    TResult Function(_ChangeDeleteModeSubCategory value)?
        changeDeleteModeSubCategory,
    TResult Function(_FetchCategoriesAndServices value)?
        fetchCategoriesAndServices,
    TResult Function(_DeleteCategory value)? deleteCategory,
    TResult Function(_DeleteSubCategory value)? deleteSubCategory,
    TResult Function(AddCategory value)? addCategory,
    TResult Function(_AddService value)? addService,
    required TResult orElse(),
  }) {
    if (addCategory != null) {
      return addCategory(this);
    }
    return orElse();
  }
}

abstract class AddCategory implements CategoriesEvent {
  const factory AddCategory(
      {required final String? name,
      required final dynamic imageFile}) = _$AddCategoryImpl;

  String? get name;
  dynamic get imageFile;
  @JsonKey(ignore: true)
  _$$AddCategoryImplCopyWith<_$AddCategoryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddServiceImplCopyWith<$Res> {
  factory _$$AddServiceImplCopyWith(
          _$AddServiceImpl value, $Res Function(_$AddServiceImpl) then) =
      __$$AddServiceImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String categoryId, String serviceName});
}

/// @nodoc
class __$$AddServiceImplCopyWithImpl<$Res>
    extends _$CategoriesEventCopyWithImpl<$Res, _$AddServiceImpl>
    implements _$$AddServiceImplCopyWith<$Res> {
  __$$AddServiceImplCopyWithImpl(
      _$AddServiceImpl _value, $Res Function(_$AddServiceImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categoryId = null,
    Object? serviceName = null,
  }) {
    return _then(_$AddServiceImpl(
      categoryId: null == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as String,
      serviceName: null == serviceName
          ? _value.serviceName
          : serviceName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AddServiceImpl implements _AddService {
  const _$AddServiceImpl({required this.categoryId, required this.serviceName});

  @override
  final String categoryId;
  @override
  final String serviceName;

  @override
  String toString() {
    return 'CategoriesEvent.addService(categoryId: $categoryId, serviceName: $serviceName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddServiceImpl &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId) &&
            (identical(other.serviceName, serviceName) ||
                other.serviceName == serviceName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, categoryId, serviceName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddServiceImplCopyWith<_$AddServiceImpl> get copyWith =>
      __$$AddServiceImplCopyWithImpl<_$AddServiceImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool value) changeDeleteModeCategory,
    required TResult Function(int index) setCurrentCategory,
    required TResult Function(bool value) changeDeleteModeSubCategory,
    required TResult Function() fetchCategoriesAndServices,
    required TResult Function(String categoryId) deleteCategory,
    required TResult Function(String subCategoryId) deleteSubCategory,
    required TResult Function(String? name, dynamic imageFile) addCategory,
    required TResult Function(String categoryId, String serviceName) addService,
  }) {
    return addService(categoryId, serviceName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool value)? changeDeleteModeCategory,
    TResult? Function(int index)? setCurrentCategory,
    TResult? Function(bool value)? changeDeleteModeSubCategory,
    TResult? Function()? fetchCategoriesAndServices,
    TResult? Function(String categoryId)? deleteCategory,
    TResult? Function(String subCategoryId)? deleteSubCategory,
    TResult? Function(String? name, dynamic imageFile)? addCategory,
    TResult? Function(String categoryId, String serviceName)? addService,
  }) {
    return addService?.call(categoryId, serviceName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool value)? changeDeleteModeCategory,
    TResult Function(int index)? setCurrentCategory,
    TResult Function(bool value)? changeDeleteModeSubCategory,
    TResult Function()? fetchCategoriesAndServices,
    TResult Function(String categoryId)? deleteCategory,
    TResult Function(String subCategoryId)? deleteSubCategory,
    TResult Function(String? name, dynamic imageFile)? addCategory,
    TResult Function(String categoryId, String serviceName)? addService,
    required TResult orElse(),
  }) {
    if (addService != null) {
      return addService(categoryId, serviceName);
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
    required TResult Function(_FetchCategoriesAndServices value)
        fetchCategoriesAndServices,
    required TResult Function(_DeleteCategory value) deleteCategory,
    required TResult Function(_DeleteSubCategory value) deleteSubCategory,
    required TResult Function(AddCategory value) addCategory,
    required TResult Function(_AddService value) addService,
  }) {
    return addService(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangeDeleteModeCategory value)?
        changeDeleteModeCategory,
    TResult? Function(_SetCurrentCategory value)? setCurrentCategory,
    TResult? Function(_ChangeDeleteModeSubCategory value)?
        changeDeleteModeSubCategory,
    TResult? Function(_FetchCategoriesAndServices value)?
        fetchCategoriesAndServices,
    TResult? Function(_DeleteCategory value)? deleteCategory,
    TResult? Function(_DeleteSubCategory value)? deleteSubCategory,
    TResult? Function(AddCategory value)? addCategory,
    TResult? Function(_AddService value)? addService,
  }) {
    return addService?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeDeleteModeCategory value)? changeDeleteModeCategory,
    TResult Function(_SetCurrentCategory value)? setCurrentCategory,
    TResult Function(_ChangeDeleteModeSubCategory value)?
        changeDeleteModeSubCategory,
    TResult Function(_FetchCategoriesAndServices value)?
        fetchCategoriesAndServices,
    TResult Function(_DeleteCategory value)? deleteCategory,
    TResult Function(_DeleteSubCategory value)? deleteSubCategory,
    TResult Function(AddCategory value)? addCategory,
    TResult Function(_AddService value)? addService,
    required TResult orElse(),
  }) {
    if (addService != null) {
      return addService(this);
    }
    return orElse();
  }
}

abstract class _AddService implements CategoriesEvent {
  const factory _AddService(
      {required final String categoryId,
      required final String serviceName}) = _$AddServiceImpl;

  String get categoryId;
  String get serviceName;
  @JsonKey(ignore: true)
  _$$AddServiceImplCopyWith<_$AddServiceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CategoriesState {
  bool get isDeletionModeCategory => throw _privateConstructorUsedError;
  bool get isDeletionModeSubcategory => throw _privateConstructorUsedError;
  String? get deletingCategoryId => throw _privateConstructorUsedError;
  String? get deletingSubCategoryId => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isAddingService => throw _privateConstructorUsedError;
  bool get isAddingCategory => throw _privateConstructorUsedError;
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
      String? deletingCategoryId,
      String? deletingSubCategoryId,
      bool isLoading,
      bool isAddingService,
      bool isAddingCategory,
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
    Object? deletingCategoryId = freezed,
    Object? deletingSubCategoryId = freezed,
    Object? isLoading = null,
    Object? isAddingService = null,
    Object? isAddingCategory = null,
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
      deletingCategoryId: freezed == deletingCategoryId
          ? _value.deletingCategoryId
          : deletingCategoryId // ignore: cast_nullable_to_non_nullable
              as String?,
      deletingSubCategoryId: freezed == deletingSubCategoryId
          ? _value.deletingSubCategoryId
          : deletingSubCategoryId // ignore: cast_nullable_to_non_nullable
              as String?,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isAddingService: null == isAddingService
          ? _value.isAddingService
          : isAddingService // ignore: cast_nullable_to_non_nullable
              as bool,
      isAddingCategory: null == isAddingCategory
          ? _value.isAddingCategory
          : isAddingCategory // ignore: cast_nullable_to_non_nullable
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
      String? deletingCategoryId,
      String? deletingSubCategoryId,
      bool isLoading,
      bool isAddingService,
      bool isAddingCategory,
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
    Object? deletingCategoryId = freezed,
    Object? deletingSubCategoryId = freezed,
    Object? isLoading = null,
    Object? isAddingService = null,
    Object? isAddingCategory = null,
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
      deletingCategoryId: freezed == deletingCategoryId
          ? _value.deletingCategoryId
          : deletingCategoryId // ignore: cast_nullable_to_non_nullable
              as String?,
      deletingSubCategoryId: freezed == deletingSubCategoryId
          ? _value.deletingSubCategoryId
          : deletingSubCategoryId // ignore: cast_nullable_to_non_nullable
              as String?,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isAddingService: null == isAddingService
          ? _value.isAddingService
          : isAddingService // ignore: cast_nullable_to_non_nullable
              as bool,
      isAddingCategory: null == isAddingCategory
          ? _value.isAddingCategory
          : isAddingCategory // ignore: cast_nullable_to_non_nullable
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
      this.deletingCategoryId,
      this.deletingSubCategoryId,
      required this.isLoading,
      required this.isAddingService,
      required this.isAddingCategory,
      required final List<CategoriesData> categories})
      : _categories = categories;

  @override
  final bool isDeletionModeCategory;
  @override
  final bool isDeletionModeSubcategory;
  @override
  final String? deletingCategoryId;
  @override
  final String? deletingSubCategoryId;
  @override
  final bool isLoading;
  @override
  final bool isAddingService;
  @override
  final bool isAddingCategory;
  final List<CategoriesData> _categories;
  @override
  List<CategoriesData> get categories {
    if (_categories is EqualUnmodifiableListView) return _categories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_categories);
  }

  @override
  String toString() {
    return 'CategoriesState(isDeletionModeCategory: $isDeletionModeCategory, isDeletionModeSubcategory: $isDeletionModeSubcategory, deletingCategoryId: $deletingCategoryId, deletingSubCategoryId: $deletingSubCategoryId, isLoading: $isLoading, isAddingService: $isAddingService, isAddingCategory: $isAddingCategory, categories: $categories)';
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
            (identical(other.deletingCategoryId, deletingCategoryId) ||
                other.deletingCategoryId == deletingCategoryId) &&
            (identical(other.deletingSubCategoryId, deletingSubCategoryId) ||
                other.deletingSubCategoryId == deletingSubCategoryId) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isAddingService, isAddingService) ||
                other.isAddingService == isAddingService) &&
            (identical(other.isAddingCategory, isAddingCategory) ||
                other.isAddingCategory == isAddingCategory) &&
            const DeepCollectionEquality()
                .equals(other._categories, _categories));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isDeletionModeCategory,
      isDeletionModeSubcategory,
      deletingCategoryId,
      deletingSubCategoryId,
      isLoading,
      isAddingService,
      isAddingCategory,
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
      final String? deletingCategoryId,
      final String? deletingSubCategoryId,
      required final bool isLoading,
      required final bool isAddingService,
      required final bool isAddingCategory,
      required final List<CategoriesData> categories}) = _$CategoriesStateImpl;

  @override
  bool get isDeletionModeCategory;
  @override
  bool get isDeletionModeSubcategory;
  @override
  String? get deletingCategoryId;
  @override
  String? get deletingSubCategoryId;
  @override
  bool get isLoading;
  @override
  bool get isAddingService;
  @override
  bool get isAddingCategory;
  @override
  List<CategoriesData> get categories;
  @override
  @JsonKey(ignore: true)
  _$$CategoriesStateImplCopyWith<_$CategoriesStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
