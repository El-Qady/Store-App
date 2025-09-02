import 'package:store_app/models/product_model.dart';
import 'package:store_app/services/Api.dart';

class AddProductService {
  Future<ProductModel> addProduct({
    required String title,
    required String description,
    required String price,
    required String category,
    required String image,
  }) async {
    final response = await Api().postapi(
      url: 'https://fakestoreapi.com/products',
      body: {
        'title': title,
        'price': price,
        'description': description,
        'category': category,
        'image': image,
        'rating': {'rate': 0, 'count': 0},
      },
    );
    return ProductModel.fromJson(response);
  }
}
