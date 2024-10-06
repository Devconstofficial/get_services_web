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
        changeDeleteMode: (_) async {
          emit(state.copyWith(isDeletionMode: _.value));
        },

      );
    });


  }


}
