import 'package:dio/dio.dart';

class APIService {
  static late Dio dio;

  static init() {
    dio = Dio(BaseOptions(
      baseUrl: 'https://flutter.prominaagency.com/api/',
      receiveDataWhenStatusError: true,
    ));
  }

  final baseUrl = "https://flutter.prominaagency.com/api/";
//ratke.emmie@example.com
  APIService();

  Future<Map<String, dynamic>> get(
      {required String endPoint, String? token}) async {
    dio.options.headers = {
      'Authorization': 'Bearer $token',
    };
    var response = await dio.get(
      endPoint,
    );
    return response.data;
  }

  Future<Map<String, dynamic>> post(
      {required String endPoint, required data, String? token}) async {
    dio.options.headers = {
      'Authorization': 'Bearer $token',
    };
    var response = await dio.post(
      endPoint,
      data: data,
    );
    return response.data;
  }
}
