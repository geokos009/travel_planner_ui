// lib/core/utils/api_client.dart
import 'package:dio/dio.dart';
import '../config/api_config.dart';

class ApiClient {
  final Dio _dio;

  ApiClient() : _dio = Dio() {
    _dio.options.baseUrl = ApiConfig.baseUrl;
    _dio.options.headers = ApiConfig.headers;
    _dio.options.connectTimeout = ApiConfig.connectTimeout;
    _dio.options.receiveTimeout = ApiConfig.receiveTimeout;
    _dio.options.sendTimeout = ApiConfig.sendTimeout;
    
    // Add logging interceptor
    _dio.interceptors.add(LogInterceptor(
      requestBody: true,
      responseBody: true,
      error: true,
    ));
  }

  Future<Response> post(String path, {dynamic data}) async {
    try {
      print('Making request to: ${_dio.options.baseUrl}$path');
      print('Request data: $data');
      
      final response = await _dio.post(
        path, 
        data: data,
        options: Options(
          sendTimeout: ApiConfig.sendTimeout,
          receiveTimeout: ApiConfig.receiveTimeout,
        ),
      );
      
      print('Response received');
      print('Status code: ${response.statusCode}');
      print('Response data: ${response.data}');
      
      return response;
    } on DioException catch (e) {
      print('DioError: ${e.message}');
      print('Response: ${e.response?.data}');
      print('Error type: ${e.type}');
      rethrow;
    } catch (e) {
      print('Error: $e');
      rethrow;
    }
  }

  Future<Response> get(String path) async {
    return _dio.get(path);
  }
}