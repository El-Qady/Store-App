import 'package:dio/dio.dart';

class Api {
  final dio = Dio();
  Future<dynamic> getapi({required String url}) async {
    final response = await dio.get(url);
    if (response.statusCode == 200) {
      return response.data;
    } else {
      throw Exception('Failed to load data from API ${response.statusCode}');
    }
  }

  Future<dynamic> postapi(
      {required String url, required Map<String, dynamic> body}) async {
    final response = await dio.post(
      url,
      data: body,
    );
    if (response.statusCode == 200 || response.statusCode == 201) {
      return response.data;
    } else {
      throw Exception('Failed to post data to API ${response.statusCode}');
    }
  }

  Future<dynamic> putapi(
      {required String url, required Map<String, dynamic> body}) async {
    final response = await dio.put(
      url,
      data: body,
    );
    if (response.statusCode == 200 || response.statusCode == 201) {
      return response.data;
    } else {
      throw Exception('Failed to put data to API ${response.statusCode}');
    }
  }
}
