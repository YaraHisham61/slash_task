import 'package:slash/models/product_model.dart';

class RecommendedStates {}

class RecommendedInitial extends RecommendedStates {}

class RecommendedLoading extends RecommendedStates {}

class RecommendedLoaded extends RecommendedStates {
  final List<ProductModel> recommendedList;
  RecommendedLoaded({required this.recommendedList});
}

class RecommendedError extends RecommendedStates {
  final String error;
  RecommendedError({required this.error});
}

class RecommendedEmpty extends RecommendedStates {}
