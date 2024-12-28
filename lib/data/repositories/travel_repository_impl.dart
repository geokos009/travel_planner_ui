// lib/data/repositories/travel_repository_impl.dart
import 'package:dio/dio.dart';
import '../../core/utils/api_client.dart';
import '../../core/config/api_config.dart';
import '../../domain/repositories/travel_repository.dart';
import '../models/research_model.dart';
import '../models/itinerary_model.dart';
import '../models/user_preferences.dart';

class TravelRepositoryImpl implements TravelRepository {
  final ApiClient _apiClient;

  TravelRepositoryImpl({ApiClient? apiClient}) 
      : _apiClient = apiClient ?? ApiClient();

    @override
  Future<ResearchModel> getDestinationResearch(String destination) async {
    try {
      final response = await _apiClient.post(
        ApiConfig.researchEndpoint,
        data: {'destination': destination},
      );

      if (response.data != null) {
        print('Response data structure: ${response.data.runtimeType}');
        print('Response data: ${response.data}');
        
        // Extract the research data from the nested structure
        final researchData = response.data['data']['research']['data']['research'];
        
        // Construct the data in the expected format
        final formattedData = {
          'destination': destination,
          'data': {
            'research': {
              'entry_points': researchData['entry_points'],
              'regions': researchData['regions'],
              'attractions': researchData['attractions'],
            }
          }
        };
        
        print('Formatted data: $formattedData');
        return ResearchModel.fromJson(formattedData);
      }
      throw Exception('Invalid response format');
    } catch (e, stack) {
      print('Error in getDestinationResearch: $e');
      print('Stack trace: $stack');
      rethrow;
    }
  }

  @override
  Future<ItineraryModel> createItinerary(
    String destination,
    UserPreferences preferences,
  ) async {
    try {
      final response = await _apiClient.post(
        ApiConfig.planEndpoint,
        data: {
          'destination': destination,
          'preferences': preferences.toJson(),
        },
      );

      if (response.data != null && response.data['data'] != null) {
        return ItineraryModel.fromJson(response.data['data']);
      }
      throw Exception('Invalid response format');
    } catch (e) {
      print('Error in createItinerary: $e');
      rethrow;
    }
  }

  @override
  Future<void> saveUserPreferences(UserPreferences preferences) async {
    // TODO: Implement local storage
  }

  @override
  Future<UserPreferences?> getUserPreferences() async {
    // TODO: Implement local storage
    return null;
  }
}