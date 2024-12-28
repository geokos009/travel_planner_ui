// lib/data/models/user_preferences.dart
import 'package:freezed_annotation/freezed_annotation.dart';
import 'research_model.dart';  // Add this import for EntryPoint

part 'user_preferences.freezed.dart';
part 'user_preferences.g.dart';

@freezed
class UserPreferences with _$UserPreferences {
  const factory UserPreferences({
    required String tripDuration,
    required String tripStyle,
    required String budgetLevel,
    required List<BaseLocation> baseLocations,
    required EntryPoint entryPoint,  // This now references the imported EntryPoint
    required List<SelectedAttraction> selectedAttractions,
  }) = _UserPreferences;

  factory UserPreferences.fromJson(Map<String, dynamic> json) =>
      _$UserPreferencesFromJson(json);
}

@freezed
class BaseLocation with _$BaseLocation {
  const factory BaseLocation({
    required String location,
    required int nights,
  }) = _BaseLocation;

  factory BaseLocation.fromJson(Map<String, dynamic> json) =>
      _$BaseLocationFromJson(json);
}

@freezed
class SelectedAttraction with _$SelectedAttraction {
  const factory SelectedAttraction({
    required String name,
    required String category,
    required String duration,
    required String bestTiming,
  }) = _SelectedAttraction;

  factory SelectedAttraction.fromJson(Map<String, dynamic> json) =>
      _$SelectedAttractionFromJson(json);
}