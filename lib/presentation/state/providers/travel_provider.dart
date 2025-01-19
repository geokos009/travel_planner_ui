// lib/presentation/state/providers/travel_provider.dart
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../data/models/research_model.dart';
import '../../../data/models/itinerary_model.dart';
import '../../../data/models/user_preferences.dart';
import '../../../data/models/selected_attraction.dart';
import '../../../data/repositories/travel_repository_impl.dart';
import '../../../domain/repositories/travel_repository.dart';
import '../notifiers/user_preferences_notifier.dart';

// Repository provider
final travelRepositoryProvider = Provider<TravelRepository>((ref) {
  return TravelRepositoryImpl();
});

// Selected destination provider
final selectedDestinationProvider = StateProvider<String?>((ref) => null);

// Research data provider
final destinationResearchProvider = FutureProvider.family<ResearchModel, String>(
  (ref, destination) async {
    final repository = ref.watch(travelRepositoryProvider);
    return repository.getDestinationResearch(destination);
  },
);

// Agent outputs provider
final allAgentOutputsProvider = FutureProvider.family<Map<String, dynamic>, String>((ref, destination) async {
  // Add your logic to fetch agent outputs
  // For now, return empty map
  return {};
});

// Selected regions provider
final selectedRegionsProvider = StateNotifierProvider<SelectedRegionsNotifier, List<MainArea>>((ref) {
  return SelectedRegionsNotifier();
});

class SelectedRegionsNotifier extends StateNotifier<List<MainArea>> {
  SelectedRegionsNotifier() : super([]);

  void toggleRegion(MainArea region) {
    if (state.any((r) => r.name == region.name)) {
      state = state.where((r) => r.name != region.name).toList();
    } else {
      state = [...state, region];
    }
  }
}

// User preferences provider
final userPreferencesProvider = StateNotifierProvider<UserPreferencesNotifier, UserPreferences?>((ref) {
  final repository = ref.watch(travelRepositoryProvider);
  return UserPreferencesNotifier(repository);
});

// Itinerary provider
final itineraryProvider = FutureProvider.family<ItineraryData, UserPreferences>(
  (ref, preferences) async {
    final repository = ref.watch(travelRepositoryProvider);
    final destination = ref.watch(selectedDestinationProvider);
    if (destination == null) throw Exception('No destination selected');
    final response = await repository.createItinerary(destination, preferences);
    return response.data;
  },
);

// Selected attractions provider
final selectedAttractionsProvider = StateNotifierProvider<SelectedAttractionsNotifier, List<SelectedAttraction>>((ref) {
  return SelectedAttractionsNotifier();
});

class SelectedAttractionsNotifier extends StateNotifier<List<SelectedAttraction>> {
  SelectedAttractionsNotifier() : super([]);

  void addAttraction(SelectedAttraction attraction) {
    if (!state.any((a) => a.name == attraction.name)) {
      state = [...state, attraction];
    }
  }

  void removeAttraction(SelectedAttraction attraction) {
    state = state.where((a) => a.name != attraction.name).toList();
  }

  void clearAttractions() {
    state = [];
  }
}

// Add this provider to get attractions from research data
final attractionsProvider = Provider<List<Attraction>>((ref) {
  final destination = ref.watch(selectedDestinationProvider);
  if (destination == null) return [];
  
  final researchAsync = ref.watch(destinationResearchProvider(destination));
  return researchAsync.maybeWhen(
    data: (research) {
      final attractions = research.data.research.data.research.attractions;
      return attractions.values.expand((list) => list).toList();
    },
    orElse: () => [],
  );
});