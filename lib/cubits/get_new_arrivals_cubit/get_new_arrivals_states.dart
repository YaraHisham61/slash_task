import 'package:slash/models/product_model.dart';

class NewArrivalStates {}

class NewArrivalInitial extends NewArrivalStates {}

class NewArrivalLoading extends NewArrivalStates {}

class NewArrivalLoaded extends NewArrivalStates {
  final List<ProductModel> newArrivalList;
  NewArrivalLoaded({required this.newArrivalList});
}

class NewArrivalError extends NewArrivalStates {
  final String error;
  NewArrivalError({required this.error});
}

class NewArrivalEmpty extends NewArrivalStates {}
