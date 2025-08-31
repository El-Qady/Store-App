import 'package:dio/dio.dart';
import 'package:store_app/models/product_model.dart';
import 'package:store_app/services/Api.dart';

class AllProductService {
  
  List<ProductModel> getAllProducts()  {
    List data = Api().getapi(url: 'https://fakestoreapi.com/products') as List;
    List<ProductModel> products = [];
    for (var product in data) {
      products.add(ProductModel.fromJson(product));
    }
    return products;
    
  }
}