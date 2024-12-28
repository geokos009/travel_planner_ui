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

// Selected regions provider
final selectedRegionsProvider = StateNotifierProvider<SelectedRegionsNotifier, List<Region>>((ref) {
  return SelectedRegionsNotifier();
});

class SelectedRegionsNotifier extends StateNotifier<List<Region>> {
  SelectedRegionsNotifier() : super([]);

  void toggleRegion(Region region) {
    state = state.contains(region) 
      ? state.where((r) => r != region).toList()
      : [...state, region];
  }
}

// User preferences provider
final userPreferencesProvider = StateNotifierProvider<UserPreferencesNotifier, UserPreferences?>((ref) {
  final repository = ref.watch(travelRepositoryProvider);
  return UserPreferencesNotifier(repository);
});

// Itinerary provider
final itineraryProvider = FutureProvider.family<ItineraryModel, UserPreferences>(
  (ref, preferences) async {
    final repository = ref.watch(travelRepositoryProvider);
    final destination = ref.watch(selectedDestinationProvider);
    if (destination == null) throw Exception('No destination selected');
    return repository.createItinerary(destination, preferences);
  },
);

// Selected attractions provider
final selectedAttractionsProvider = StateNotifierProvider<SelectedAttractionsNotifier, Set<Attraction>>((ref) {
  return SelectedAttractionsNotifier();
});

class SelectedAttractionsNotifier extends StateNotifier<Set<Attraction>> {
  SelectedAttractionsNotifier() : super({});

  void toggleAttraction(Attraction attraction) {
    if (state.contains(attraction)) {
      state = Set.from(state)..remove(attraction);
    } else {
      state = Set.from(state)..add(attraction);
    }
  }

  void clearAttractions() {
    state = {};
  }
}