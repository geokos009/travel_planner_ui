// lib/domain/repositories/travel_repository.dart
import '../../data/models/research_model.dart';
import '../../data/models/itinerary_model.dart';
import '../../data/models/user_preferences.dart';

abstract class TravelRepository {
  Future<ResearchModel> getDestinationResearch(String destination);
  Future<ItineraryResponse> createItinerary(String destination, UserPreferences preferences);
  Future<void> saveUserPreferences(UserPreferences preferences);
  Future<UserPreferences?> getUserPreferences();
}