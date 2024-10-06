import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get_services/common_model/categories_model.dart';
import 'package:intl/intl.dart';
import '../model/provider_request.dart';
import '../model/revenue_data.dart';

part 'dashboard_event.dart';
part 'dashboard_state.dart';
part 'dashboard_bloc.freezed.dart';


class DashBoardBloc extends Bloc<DashBoardEvent, DashBoardState> {


  DashBoardBloc() : super(DashBoardState.initial()) {


    on<DashBoardEvent>((event, emit) async {
      await event.map(
        changeCurrentTablePageIndex: (_) async {
          emit(state.copyWith(currentTablePageIndex: _.index));
        },
        setCurrentMonth: (_) async {

          List<CategoriesModel> categoriesModel = List.from(state.months);
          if(_.index < 0 || _.index > categoriesModel.length-1){
            for(int i = 0;i<categoriesModel.length;i++){
              if(i  == 0){
                CategoriesModel updatedData = categoriesModel[_.index].copyWith(isSelected: true);
                categoriesModel[_.index] = updatedData;
              }
              else{
                CategoriesModel updatedData = categoriesModel[i].copyWith(isSelected: false);
                categoriesModel[i] = updatedData;
              }
            }
          }
          else{
            for(int i = 0;i<categoriesModel.length;i++){
              if(i  == _.index){
                CategoriesModel updatedData = categoriesModel[_.index].copyWith(isSelected: true);
                categoriesModel[_.index] = updatedData;
              }
              else{
                CategoriesModel updatedData = categoriesModel[i].copyWith(isSelected: false);
                categoriesModel[i] = updatedData;
              }
            }
          }
          emit(state.copyWith(months: categoriesModel));
        },
      );
    });


  }


}
