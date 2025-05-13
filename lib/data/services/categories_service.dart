import 'dart:convert';

import 'package:store_app/core/helper/api.dart';
import 'package:store_app/data/models/product_model.dart';
import 'package:http/http.dart' as http;

class CategoriesService {
  Future<List<ProductModel>> getCategoriesProducts(
      {required String categoryName}) async {
    List<dynamic> data = await Api()
        .get(url: 'https://fakestoreapi.com/products/category/${categoryName}');
    List<ProductModel> categoriesList = [];
    for (int i = 0; i < data.length; i++) {
      categoriesList.add(ProductModel.fromjson(data[i]));
    }
    return categoriesList;
  }
}
