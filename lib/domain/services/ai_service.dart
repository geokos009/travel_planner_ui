// lib/domain/services/ai_service.dart
import '../entities/itinerary.dart';
import '../../data/models/user_preferences.dart';

abstract class AIService {
  Future<List<String>> getSuggestions(String destination);
  Future<Itinerary> optimizeItinerary(Itinerary itinerary, UserPreferences preferences);
  Future<List<String>> getLocalTips(String destination);
}