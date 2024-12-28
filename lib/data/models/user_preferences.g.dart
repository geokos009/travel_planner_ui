// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_preferences.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserPreferencesImpl _$$UserPreferencesImplFromJson(
        Map<String, dynamic> json) =>
    _$UserPreferencesImpl(
      tripDuration: json['tripDuration'] as String,
      tripStyle: json['tripStyle'] as String,
      budgetLevel: json['budgetLevel'] as String,
      baseLocations: (json['baseLocations'] as List<dynamic>)
          .map((e) => BaseLocation.fromJson(e as Map<String, dynamic>))
          .toList(),
      entryPoint:
          EntryPoint.fromJson(json['entryPoint'] as Map<String, dynamic>),
      selectedAttractions: (json['selectedAttractions'] as List<dynamic>)
          .map((e) => SelectedAttraction.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$UserPreferencesImplToJson(
        _$UserPreferencesImpl instance) =>
    <String, dynamic>{
      'tripDuration': instance.tripDuration,
      'tripStyle': instance.tripStyle,
      'budgetLevel': instance.budgetLevel,
      'baseLocations': instance.baseLocations,
      'entryPoint': instance.entryPoint,
      'selectedAttractions': instance.selectedAttractions,
    };

_$BaseLocationImpl _$$BaseLocationImplFromJson(Map<String, dynamic> json) =>
    _$BaseLocationImpl(
      location: json['location'] as String,
      nights: (json['nights'] as num).toInt(),
    );

Map<String, dynamic> _$$BaseLocationImplToJson(_$BaseLocationImpl instance) =>
    <String, dynamic>{
      'location': instance.location,
      'nights': instance.nights,
    };

_$SelectedAttractionImpl _$$SelectedAttractionImplFromJson(
        Map<String, dynamic> json) =>
    _$SelectedAttractionImpl(
      name: json['name'] as String,
      category: json['category'] as String,
      duration: json['duration'] as String,
      bestTiming: json['bestTiming'] as String,
    );

Map<String, dynamic> _$$SelectedAttractionImplToJson(
        _$SelectedAttractionImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'category': instance.category,
      'duration': instance.duration,
      'bestTiming': instance.bestTiming,
    };
