import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:slash/cubits/get_new_arrivals_cubit/get_new_arrivals_states.dart';
import 'package:slash/services/products_service.dart';

class GetNewArrivalCubit extends Cubit<NewArrivalStates> {
  GetNewArrivalCubit() : super(NewArrivalInitial());

  void getNewArrival() async {
    emit(NewArrivalLoading());

    try {
      final newArrivalList = ProductsService.getNewArrivalList();
      if (newArrivalList.isEmpty) {
        emit(NewArrivalEmpty());
      } else {
        emit(NewArrivalLoaded(newArrivalList: newArrivalList));
      }
    } catch (e) {
      emit(NewArrivalError(error: e.toString()));
    }
  }
}
