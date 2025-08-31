import 'package:store_app/services/Api.dart';

class GetAllCategories {
  List<dynamic> getAllCategories() {
    List categories = Api()
        .getapi(url: 'https://fakestoreapi.com/products/categories') as List;
    return categories;
  }
}
