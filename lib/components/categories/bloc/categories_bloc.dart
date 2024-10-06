import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get_services/common_model/categories_model.dart';
import 'package:intl/intl.dart';
import '../../../gen/assets.gen.dart';
import '../../dashboard/model/provider_request.dart';
import '../model/categories_model.dart';

part 'categories_event.dart';
part 'categories_state.dart';
part 'categories_bloc.freezed.dart';


class CategoriesBloc extends Bloc<CategoriesEvent, CategoriesState> {


  CategoriesBloc() : super(CategoriesState.initial()) {


    on<CategoriesEvent>((event, emit) async {
      await event.map(
        changeDeleteModeCategory: (_) async {
          emit(state.copyWith(isDeletionModeCategory: _.value));
        },
        setCurrentCategory: (_) async {

          List<CategoriesData> categoriesModel = List.from(state.categories);
          if(_.index < 0 || _.index > categoriesModel.length-1){
            for(int i = 0;i<categoriesModel.length;i++){
              if(i  == 0){
                CategoriesData updatedData = categoriesModel[_.index].copyWith(isUpdating: true);
                categoriesModel[_.index] = updatedData;
              }
              else{
                CategoriesData updatedData = categoriesModel[i].copyWith(isUpdating: false);
                categoriesModel[i] = updatedData;
              }
            }
          }
          else{
            for(int i = 0;i<categoriesModel.length;i++){
              if(i  == _.index){
                CategoriesData updatedData = categoriesModel[_.index].copyWith(isUpdating: true);
                categoriesModel[_.index] = updatedData;
              }
              else{
                CategoriesData updatedData = categoriesModel[i].copyWith(isUpdating: false);
                categoriesModel[i] = updatedData;
              }
            }
          }
          emit(state.copyWith(categories: categoriesModel));
        },
        changeDeleteModeSubCategory: (_) async {
          emit(state.copyWith(isDeletionModeSubcategory: _.value));
        },
      );
    });


  }


}
