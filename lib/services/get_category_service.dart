import 'package:store_app/models/product_model.dart';
import 'package:store_app/services/get_all_product_service.dart';

class GetCategoryService {
  Future<List<ProductModel>> getCategoryProducts(String category) async {
    List<ProductModel> allProducts = await AllProductService().getAllProducts();
    List<ProductModel> categoryProducts =
        allProducts.where((product) => product.category == category).toList();
    return categoryProducts;
  }
}
