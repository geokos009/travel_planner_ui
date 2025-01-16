// lib/presentation/state/providers/travel_provider.dart
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../data/models/research_model.dart';
import '../../../data/models/itinerary_model.dart';
import '../../../data/models/user_preferences.dart';
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
final selectedRegionsProvider = StateNotifierProvider<SelectedRegionsNotifier, List<Region>>((ref) {
  return SelectedRegionsNotifier();
});

class SelectedRegionsNotifier extends StateNotifier<List<Region>> {
  SelectedRegionsNotifier() : super([]);

  void toggleRegion(Region region) {
    print('Toggling region: ${region.name}'); // Debug print
    final currentState = [...state];
    
    if (currentState.any((r) => r.name == region.name)) {
      state = currentState.where((r) => r.name != region.name).toList();
    } else {
      state = [...currentState, region];
    }
    
    print('Updated selected regions: ${state.map((r) => r.name).join(', ')}'); // Debug print
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
final selectedAttractionsProvider = StateNotifierProvider<SelectedAttractionsNotifier, List<Attraction>>((ref) {
  return SelectedAttractionsNotifier();
});

class SelectedAttractionsNotifier extends StateNotifier<List<Attraction>> {
  SelectedAttractionsNotifier() : super([]);

  void addAttraction(Attraction attraction) {
    if (!state.contains(attraction)) {
      state = [...state, attraction];
    }
  }

  void removeAttraction(Attraction attraction) {
    state = state.where((a) => a != attraction).toList();
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