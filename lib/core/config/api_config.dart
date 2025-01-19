// lib/core/config/api_config.dart
class ApiConfig {
  static const String baseUrl = 'http://localhost:8000';
  
  static const Map<String, String> headers = {
    'Content-Type': 'application/json',
    'Accept': 'application/json',
  };

  // Increase timeouts for AI processing
  static const Duration connectTimeout = Duration(seconds: 30);
  static const Duration receiveTimeout = Duration(seconds: 300);  // 5 minutes
  static const Duration sendTimeout = Duration(seconds: 30);

  // API Endpoints
  static const String researchEndpoint = '/research';
  static const String planEndpoint = '/plan';
}