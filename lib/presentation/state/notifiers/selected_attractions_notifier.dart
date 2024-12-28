// lib/presentation/state/notifiers/selected_attractions_notifier.dart
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../data/models/user_preferences.dart';

class SelectedAttractionsNotifier extends StateNotifier<List<SelectedAttraction>> {
  SelectedAttractionsNotifier() : super([]);

  void addAttraction(SelectedAttraction attraction) {
    state = [...state, attraction];
  }

  void removeAttraction(String name) {
    state = state.where((attraction) => attraction.name != name).toList();
  }

  void updateAttractions(List<SelectedAttraction> attractions) {
    state = attractions;
  }

  void clearAttractions() {
    state = [];
  }
}