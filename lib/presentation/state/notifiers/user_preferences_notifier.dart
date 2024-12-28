// lib/presentation/state/notifiers/user_preferences_notifier.dart
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../data/models/user_preferences.dart';
import '../../../domain/repositories/travel_repository.dart';

class UserPreferencesNotifier extends StateNotifier<UserPreferences?> {
  final TravelRepository repository;

  UserPreferencesNotifier(this.repository) : super(null);

  Future<void> updatePreferences(UserPreferences preferences) async {
    state = preferences;
    try {
      await repository.saveUserPreferences(preferences);
    } catch (e) {
      print('Error saving preferences: $e');
    }
  }

  Future<void> loadPreferences() async {
    try {
      final preferences = await repository.getUserPreferences();
      state = preferences;
    } catch (e) {
      print('Error loading preferences: $e');
    }
  }

  void clearPreferences() {
    state = null;
  }
}