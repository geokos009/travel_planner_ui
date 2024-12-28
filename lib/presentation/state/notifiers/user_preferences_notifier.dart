// lib/presentation/state/notifiers/user_preferences_notifier.dart
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../data/models/user_preferences.dart';
import '../../../domain/repositories/travel_repository.dart';

class UserPreferencesNotifier extends StateNotifier<UserPreferences?> {
  final TravelRepository _repository;

  UserPreferencesNotifier(this._repository) : super(null);

  Future<void> updatePreferences(UserPreferences preferences) async {
    await _repository.saveUserPreferences(preferences);
    state = preferences;
  }

  Future<void> loadPreferences() async {
    state = await _repository.getUserPreferences();
  }

  void clearPreferences() {
    state = null;
  }
}