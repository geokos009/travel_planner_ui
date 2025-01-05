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
  Future<ItineraryResponse> createItinerary(String destination, UserPreferences preferences) async {
    try {
      final apiResponse = await _apiClient.post(
        '/plan',
        data: {
          'destination': destination,
          'preferences': preferences.toJson(),
        },
      );

      // Enhanced debug logging
      print('\n=== Frontend Response Debug ===');
      print('Response received');
      print('Status code: ${apiResponse.statusCode}');
      print('Response data type: ${apiResponse.data.runtimeType}');
      print('Raw response data: ${apiResponse.data}');

      final responseData = apiResponse.data as Map<String, dynamic>;
      
      // Validate response structure
      if (!responseData.containsKey('data')) {
        print('Missing data key in response');
        throw Exception('Invalid response structure: missing data key');
      }

      final data = responseData['data'] as Map<String, dynamic>;
      if (!data.containsKey('itinerary')) {
        print('Missing itinerary key in data');
        throw Exception('Invalid response structure: missing itinerary key');
      }

      final itineraryList = data['itinerary'] as List;
      print('Itinerary list length: ${itineraryList.length}');

      // Create and return the ItineraryResponse
      final itineraryResponse = ItineraryResponse(
        error: responseData['error'] ?? false,
        data: ItineraryData(
          itinerary: itineraryList
              .map((item) {
                print('Processing day plan: Day ${item['day']}');
                return DayPlan.fromJson(item as Map<String, dynamic>);
              })
              .toList(),
        ),
      );

      print('Successfully created ItineraryResponse with ${itineraryResponse.data.itinerary.length} days');
      return itineraryResponse;

    } catch (e, stackTrace) {
      print('Error in createItinerary: $e');
      print('Stack trace: $stackTrace');
      throw Exception('Failed to create itinerary: $e');
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