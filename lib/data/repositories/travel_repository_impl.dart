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
        '/research',
        data: {'destination': destination},
      );

      // Extract the deeply nested research data
      final Map<String, dynamic> responseData = response.data;
      final researchData = responseData['data']['research']['data']['research']['data']['research'];
      
      // Create the model data with the correct structure
      final modelData = {
        'error': false,
        'data': {
          'research': {
            'destination': destination,
            'data': {
              'research': researchData
            }
          }
        }
      };

      print('Research data before parsing:');
      print('Raw research data: $researchData');
      
      final researchModel = ResearchModel.fromJson(modelData);
      
      print('Research model created:');
      print('Number of regions: ${researchModel.data.research.data.research.regions.length}');
      
      return researchModel;
    } catch (e, stackTrace) {
      print('Error in getDestinationResearch: $e');
      print('Stack trace: $stackTrace');
      throw Exception('Failed to get destination research: $e');
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