import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get_services/common_model/categories_model.dart';
import 'package:intl/intl.dart';
import '../../dashboard/model/provider_request.dart';

part 'provider_event.dart';
part 'providers_state.dart';
part 'provider_bloc.freezed.dart';


class ProvidersBloc extends Bloc<ProvidersEvent, ProvidersState> {


  ProvidersBloc() : super(ProvidersState.initial()) {


    on<ProvidersEvent>((event, emit) async {
      await event.map(
        changeCurrentTablePageIndex: (_) async {
          emit(state.copyWith(currentTablePageIndex: _.index));
        },
        changeFilterDate: (_) async {
          emit(state.copyWith(customStartDate: _.startDate,customEndDate: _.endDate));
        },
        setProviderStatus: (_) async {
          List<CategoriesModel> categoriesModel = List.from(state.providerStatus);
          CategoriesModel updatedData = categoriesModel[_.index].copyWith(isSelected: _.value);
          categoriesModel[_.index] = updatedData;
          emit(state.copyWith(providerStatus: categoriesModel));
        },
        resetFilter: (_) async {
          List<CategoriesModel> categoriesModel = List.from(state.providerStatus);
          for(int i =0;i<categoriesModel.length;i++){
            CategoriesModel updatedData = categoriesModel[i].copyWith(isSelected: false);
            categoriesModel[i] = updatedData;

          }
          emit(state.copyWith(providerStatus: categoriesModel,customEndDate: null,customStartDate: null));
        },
      );
    });


  }


}
