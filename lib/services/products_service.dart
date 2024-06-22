import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:slash/models/product_model.dart';

class ProductsService {
  static dynamic dummyData;

  Future<void> getProducts() async {
    final String response =
        await rootBundle.loadString('assets/dummyData.json');
    dummyData = await json.decode(response);
  }

  static List<ProductModel> getBestSellingList() {
    List<ProductModel> bestSellingList = [];

    for (var data in dummyData['bestSelling']) {
      bestSellingList.add(ProductModel.fromJson(data));
    }
    return bestSellingList;
  }

  static List<ProductModel> getNewArrivalList() {
    List<ProductModel> newArrivalList = [];

    for (var data in dummyData['newArrival']) {
      newArrivalList.add(ProductModel.fromJson(data));
    }
    return newArrivalList;
  }

  static List<ProductModel> getRecommendedList() {
    List<ProductModel> recommendedList = [];
    for (var data in dummyData['recommendedForYou']) {
      recommendedList.add(ProductModel.fromJson(data));
    }
    return recommendedList;
  }
}
