// lib/core/config/api_config.dart
class ApiConfig {
  static const String baseUrl = 'http://localhost:8000';
  
  // Increase timeouts to 5 minutes since AI responses can be slow
  static const Duration timeout = Duration(minutes: 5);
  static const Duration connectTimeout = Duration(minutes: 1);
  static const Duration receiveTimeout = Duration(minutes: 5);
  static const Duration sendTimeout = Duration(minutes: 1);

  static const String researchEndpoint = '/research';
  static const String planEndpoint = '/plan';

  static const Map<String, String> headers = {
    'Content-Type': 'application/json',
    'Accept': 'application/json',
  };
}