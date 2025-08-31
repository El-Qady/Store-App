import 'package:dio/dio.dart';

class Api {
  final dio = Dio();
  Future<dynamic> getapi({required String url}) async {
    final response =
        await dio.get(url);
    if (response.statusCode == 200) {
      return response.data;
    } else {
      throw Exception('Failed to load data from API ${response.statusCode}');
    }
  }
}