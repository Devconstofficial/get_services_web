import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get_services/common_model/categories_model.dart';
import 'package:get_services/components/providers/screens/provider_page.dart';

import '../../../gen/assets.gen.dart';
import '../../categories/screens/categories_page.dart';
import '../../dashboard/screens/dashboard_page.dart';
import '../../payments/screens/payment_page.dart';

part 'side_bar_event.dart';
part 'side_bar_state.dart';
part 'side_bar_bloc.freezed.dart';


class SideBarBloc extends Bloc<SideBarEvent, SideBarState> {


  SideBarBloc() : super(SideBarState.initial()) {


    on<SideBarEvent>((event, emit) async {
      await event.map(
        setSideBarIndex: (_) async {
          emit(state.copyWith(
            selectedIndex: _.index
          ));
        },
        updateIsLanguageMenuHover: (_) async {
          emit(state.copyWith(
            isLanguageMenuHover: _.isLanguageMenuHover
          ));
        },
        setSideBarHoverIndex: (_) async {
          emit(state.copyWith(
              hoveredIndex: _.hoveredIndex
          ));
        },
        setSideBarLanguageIndexIndex: (_) async {

          List<CategoriesModel> categoriesModel = List.from(state.languages);
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
          emit(state.copyWith(languages: categoriesModel));
        },
      );
    });


  }


}
