import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:slash/cubits/get_recommended_cubit/get_recommended_states.dart';
import 'package:slash/services/products_service.dart';

class GetRecommendedCubit extends Cubit<RecommendedStates> {
  GetRecommendedCubit() : super(RecommendedInitial());

  void getRecommended() async {
    emit(RecommendedLoading());

    try {
      final recommendedList = ProductsService.getRecommendedList();
      if (recommendedList.isEmpty) {
        emit(RecommendedEmpty());
      } else {
        emit(RecommendedLoaded(recommendedList: recommendedList));
      }
    } catch (e) {
      emit(RecommendedError(error: e.toString()));
    }
  }
}
