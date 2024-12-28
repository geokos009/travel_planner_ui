// lib/data/models/user_preferences.dart
import 'package:freezed_annotation/freezed_annotation.dart';
import 'research_model.dart';
import 'base_location.dart';

part 'user_preferences.freezed.dart';
part 'user_preferences.g.dart';

@freezed
class UserPreferences with _$UserPreferences {
  const factory UserPreferences({
    @JsonKey(name: 'trip_duration') required String tripDuration,
    @JsonKey(name: 'trip_style') required String tripStyle,
    @JsonKey(name: 'budget_level') required String budgetLevel,
    @JsonKey(name: 'base_locations') required List<BaseLocation> baseLocations,
    @JsonKey(name: 'entry_point') required EntryPoint entryPoint,
    @JsonKey(name: 'selected_attractions') required List<Attraction> selectedAttractions,
  }) = _UserPreferences;

  factory UserPreferences.fromJson(Map<String, dynamic> json) =>
      _$UserPreferencesFromJson(json);
}