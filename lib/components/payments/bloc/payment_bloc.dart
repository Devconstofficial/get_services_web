import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get_services/common_model/categories_model.dart';
import 'package:intl/intl.dart';
import '../../dashboard/model/payment_model.dart';
import '../../dashboard/model/provider_request.dart';

part 'payment_event.dart';
part 'payment_state.dart';
part 'payment_bloc.freezed.dart';


class PaymentBloc extends Bloc<PaymentEvent, PaymentState> {


  PaymentBloc() : super(PaymentState.initial()) {


    on<PaymentEvent>((event, emit) async {
      await event.map(
        changeCurrentTablePageIndex: (_) async {
          emit(state.copyWith(currentTablePageIndex: _.index));
        },
        changeFilterDate: (_) async {
          emit(state.copyWith(customStartDate: _.startDate,customEndDate: _.endDate));
        },
        setPaymentStatus: (_) async {
          List<CategoriesModel> categoriesModel = List.from(state.paymentStatus);
          CategoriesModel updatedData = categoriesModel[_.index].copyWith(isSelected: _.value);
          categoriesModel[_.index] = updatedData;
          emit(state.copyWith(paymentStatus: categoriesModel));
        },
        resetFilter: (_) async {
          List<CategoriesModel> categoriesModel = List.from(state.paymentStatus);
          for(int i =0;i<categoriesModel.length;i++){
            CategoriesModel updatedData = categoriesModel[i].copyWith(isSelected: false);
            categoriesModel[i] = updatedData;

          }
          emit(state.copyWith(paymentStatus: categoriesModel,customEndDate: null,customStartDate: null));
        },
      );
    });


  }


}
