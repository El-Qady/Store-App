import 'package:dio/dio.dart';
import 'package:store_app/models/product_model.dart';

class AllProductsService {
  Future<List<ProuductModel>> getAllPruducts() async {
    final dio = Dio();
    final response = await dio.get('https://fakestoreapi.com/products');
    List<ProuductModel> products = [];
    for (var product in response.data) {
      products.add(
        ProuductModel.fromJson(product),
      );
    }
    return products;
  }
}
