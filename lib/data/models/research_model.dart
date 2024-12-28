// lib/data/models/research_model.dart
import 'package:freezed_annotation/freezed_annotation.dart';

part 'research_model.freezed.dart';
part 'research_model.g.dart';

@freezed
class ResearchModel with _$ResearchModel {
  const factory ResearchModel({
    @JsonKey(defaultValue: '') required String destination,
    required ResearchData data,
  }) = _ResearchModel;

  factory ResearchModel.fromJson(Map<String, dynamic> json) =>
      _$ResearchModelFromJson(json);
}

@freezed
class ResearchData with _$ResearchData {
  const factory ResearchData({
    @JsonKey(name: 'research') required ResearchDetails research,
  }) = _ResearchData;

  factory ResearchData.fromJson(Map<String, dynamic> json) =>
      _$ResearchDataFromJson(json);
}

@freezed
class ResearchDetails with _$ResearchDetails {
  const factory ResearchDetails({
    @JsonKey(name: 'entry_points', defaultValue: []) 
    required List<EntryPoint> entryPoints,
    @JsonKey(defaultValue: []) 
    required List<Region> regions,
    @Default({}) 
    Map<String, List<Attraction>> attractions,
  }) = _ResearchDetails;

  factory ResearchDetails.fromJson(Map<String, dynamic> json) =>
      _$ResearchDetailsFromJson(json);
}

@freezed
class EntryPoint with _$EntryPoint {
  const factory EntryPoint({
    @Default('') String name,
    @Default('') String type,
    @Default('') String location,
    @Default('') String code,
    @JsonKey(name: 'transportation_to_city', defaultValue: []) 
    required List<Transportation> transportationToCity,
  }) = _EntryPoint;

  factory EntryPoint.fromJson(Map<String, dynamic> json) =>
      _$EntryPointFromJson(json);
}

@freezed
class Transportation with _$Transportation {
  const factory Transportation({
    @Default('') String method,
    @Default('') String duration,
    @Default('') String cost,
    @Default('') String frequency,
  }) = _Transportation;

  factory Transportation.fromJson(Map<String, dynamic> json) =>
      _$TransportationFromJson(json);
}

@freezed
class Region with _$Region {
  const factory Region({
    @Default('') String name,
    @Default('') String description,
    @JsonKey(name: 'recommended_stay') 
    @Default({}) Map<String, String> recommendedStay,
    @Default([]) List<String> highlights,
    @JsonKey(name: 'base_for') 
    @Default([]) List<String> baseFor,
    @JsonKey(name: 'typical_order') 
    @Default('') String typicalOrder,
  }) = _Region;

  factory Region.fromJson(Map<String, dynamic> json) =>
      _$RegionFromJson(json);
}

@freezed
class Attraction with _$Attraction {
  const factory Attraction({
    @Default('') String name,
    @Default('') String region,
    @Default('') String category,
    @JsonKey(name: 'sub_category') 
    @Default('') String subCategory,
    @Default('') String description,
    @JsonKey(name: 'time_required') 
    @Default('') String timeRequired,
    @JsonKey(name: 'best_timing') 
    @Default('') String bestTiming,
    @JsonKey(name: 'cost_range') 
    @Default('') String costRange,
    @Default('') String rating,
    @JsonKey(name: 'review_count') 
    @Default('') String reviewCount,
    @JsonKey(name: 'must_see') 
    @Default(false) bool mustSee,
  }) = _Attraction;

  factory Attraction.fromJson(Map<String, dynamic> json) =>
      _$AttractionFromJson(json);
}