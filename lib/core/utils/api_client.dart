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
      final response = await _dio.post(
        path, 
        data: data,
        options: Options(
          headers: {
            'Content-Type': 'application/json',
          },
          sendTimeout: ApiConfig.sendTimeout,
          receiveTimeout: ApiConfig.receiveTimeout,
        ),
      );
      
      // Validate response structure
      if (response.data is! Map<String, dynamic>) {
        throw DioException(
          requestOptions: response.requestOptions,
          error: 'Invalid response format',
        );
      }

      return response;
    } on DioException catch (e) {
      // Return error response in our standard format
      return Response(
        requestOptions: e.requestOptions,
        data: {
          'error': true,
          'data': null,
          'message': e.message,
        },
      );
    }
  }

  Future<Response> get(String path) async {
    return _dio.get(path);
  }
}