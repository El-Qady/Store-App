import 'package:store_app/services/Api.dart';

class GetAllCategories {
  Future<List<dynamic>> getAllCategories() async {
    List<dynamic> categories =
        await Api().getapi(url: 'https://fakestoreapi.com/products/categories');
    return categories;
  }
}
