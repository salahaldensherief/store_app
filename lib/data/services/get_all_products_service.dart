import 'dart:convert';

import 'package:store_app/core/helper/api.dart';
import 'package:store_app/data/models/product_model.dart';
import 'package:http/http.dart';

class AllProductsService {
  Future<List<ProductModel>> getAllProducts() async {
    List<dynamic> data =
        await Api().get(url: 'https://fakestoreapi.com/products');
    List<ProductModel> productsList = [];
    for (int i = 0; i < data.length; i++) {
      productsList.add(
        ProductModel.fromjson(
          data[i],
        ),
      );
    }
    return productsList;
  }
}
