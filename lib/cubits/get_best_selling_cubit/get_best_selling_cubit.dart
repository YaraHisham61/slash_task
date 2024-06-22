import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:slash/cubits/get_best_selling_cubit/get_best_selling_states.dart';
import 'package:slash/services/products_service.dart';

class GetBestSellingCubit extends Cubit<BestSellingStates>{

  GetBestSellingCubit() : super(BestSellingInitial());

  void getBestSelling() async {
    emit(BestSellingLoading());

    try {
      final bestSellingList = ProductsService.getBestSellingList();
      if (bestSellingList.isEmpty) {
        emit(BestSellingEmpty());
      } else {
        emit(BestSellingLoaded(bestSellingList: bestSellingList));
      }
    } catch (e) {
      emit(BestSellingError(error: e.toString()));
    }
  }
  
}