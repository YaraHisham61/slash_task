import 'package:slash/models/product_model.dart';

class BestSellingStates {}

class BestSellingInitial extends BestSellingStates {}

class BestSellingLoading extends BestSellingStates {}

class BestSellingLoaded extends BestSellingStates {
  final List<ProductModel> bestSellingList;
  BestSellingLoaded({required this.bestSellingList});
}

class BestSellingError extends BestSellingStates {
  final String error;
  BestSellingError({required this.error});
}

class BestSellingEmpty extends BestSellingStates {}
