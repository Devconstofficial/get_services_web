part of 'categories_bloc.dart';

@freezed
class CategoriesEvent with _$CategoriesEvent {
  const factory CategoriesEvent.changeDeleteMode({required bool value}) = _ChangeDeleteMode;
}
