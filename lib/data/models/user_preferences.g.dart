// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_preferences.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserPreferencesImpl _$$UserPreferencesImplFromJson(
        Map<String, dynamic> json) =>
    _$UserPreferencesImpl(
      tripDuration: json['trip_duration'] as String,
      tripStyle: json['trip_style'] as String,
      budgetLevel: json['budget_level'] as String,
      baseLocations: (json['base_locations'] as List<dynamic>)
          .map((e) => BaseLocation.fromJson(e as Map<String, dynamic>))
          .toList(),
      entryPoint:
          EntryPoint.fromJson(json['entry_point'] as Map<String, dynamic>),
      selectedAttractions: (json['selected_attractions'] as List<dynamic>)
          .map((e) => Attraction.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$UserPreferencesImplToJson(
        _$UserPreferencesImpl instance) =>
    <String, dynamic>{
      'trip_duration': instance.tripDuration,
      'trip_style': instance.tripStyle,
      'budget_level': instance.budgetLevel,
      'base_locations': instance.baseLocations.map((e) => e.toJson()).toList(),
      'entry_point': instance.entryPoint.toJson(),
      'selected_attractions':
          instance.selectedAttractions.map((e) => e.toJson()).toList(),
    };
