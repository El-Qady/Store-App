import 'package:store_app/models/product_model.dart';
import 'package:store_app/services/Api.dart';

class UpdateProductService {
  Future<ProductModel> updateProduct(
      {required String title,
      required String description,
      required String price,
      required String category,
      required String image,
      required String id}) async {
    final response = await
        Api().putapi(url: 'https://fakestoreapi.com/products/$id', body: {
      'title': title,
      'price': price,
      'description': description,
      'category': category,
      'image': image,
      'id': id,
    });
    return ProductModel.fromJson(response);
  }
}
