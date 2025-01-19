// lib/data/models/research_model.dart
import 'package:freezed_annotation/freezed_annotation.dart';

part 'research_model.freezed.dart';
part 'research_model.g.dart';

@Freezed(genericArgumentFactories: true)
class ApiResponse<T> with _$ApiResponse<T> {
  const factory ApiResponse({
    required bool error,
    required T? data,
    String? message,
  }) = _ApiResponse;

  factory ApiResponse.fromJson(
    Map<String, dynamic> json,
    T Function(Object?) fromJsonT,
  ) =>
      _$ApiResponseFromJson(json, fromJsonT);
}

@freezed
class ResearchModel with _$ResearchModel {
  const factory ResearchModel({
    required bool error,
    required ResearchData data,
  }) = _ResearchModel;

  factory ResearchModel.fromJson(Map<String, dynamic> json) =>
      _$ResearchModelFromJson(json);
}

@freezed
class ResearchData with _$ResearchData {
  const factory ResearchData({
    required ResearchContent research,
  }) = _ResearchData;

  factory ResearchData.fromJson(Map<String, dynamic> json) =>
      _$ResearchDataFromJson(json);
}

@freezed
class ResearchContent with _$ResearchContent {
  const factory ResearchContent({
    required bool error,
    ResearchDetails? data,
  }) = _ResearchContent;

  factory ResearchContent.fromJson(Map<String, dynamic> json) =>
      _$ResearchContentFromJson(json);
}

@freezed
class ResearchDetails with _$ResearchDetails {
  const factory ResearchDetails({
    required String destination,
    required CoreInfoData data,
  }) = _ResearchDetails;

  factory ResearchDetails.fromJson(Map<String, dynamic> json) =>
      _$ResearchDetailsFromJson(json);
}

@freezed
class CoreInfoData with _$CoreInfoData {
  const factory CoreInfoData({
    @JsonKey(name: 'core_info')
    required CoreInfo coreInfo,
  }) = _CoreInfoData;

  factory CoreInfoData.fromJson(Map<String, dynamic> json) =>
      _$CoreInfoDataFromJson(json);
}

@freezed
class CoreInfo with _$CoreInfo {
  const factory CoreInfo({
    required String description,
    @JsonKey(name: 'best_time_to_visit')
    required String bestTimeToVisit,
    @JsonKey(name: 'main_areas')
    required List<MainArea> mainAreas,
    required Transportation transportation,
  }) = _CoreInfo;

  factory CoreInfo.fromJson(Map<String, dynamic> json) =>
      _$CoreInfoFromJson(json);
}

@freezed
class MainArea with _$MainArea {
  const factory MainArea({
    required String name,
    required String description,
    required List<String> highlights,
  }) = _MainArea;

  factory MainArea.fromJson(Map<String, dynamic> json) =>
      _$MainAreaFromJson(json);
}

@freezed
class Transportation with _$Transportation {
  const factory Transportation({
    @JsonKey(name: 'getting_there')
    required String gettingThere,
    @JsonKey(name: 'getting_around')
    required String gettingAround,
  }) = _Transportation;

  factory Transportation.fromJson(Map<String, dynamic> json) =>
      _$TransportationFromJson(json);
}

ResearchInfo _researchFromJson(Map<String, dynamic> json) {
  return ResearchInfo(
    entryPoints: (json['entry_points'] as List?)
            ?.map((e) => EntryPoint.fromJson(e as Map<String, dynamic>))
            .toList() ??
        [],
    regions: (json['regions'] as List?)
            ?.map((e) => Region.fromJson(e as Map<String, dynamic>))
            .toList() ??
        [],
    attractions: (json['attractions'] as Map<String, dynamic>?)?.map(
          (key, value) => MapEntry(
            key,
            (value as List)
                .map((e) => Attraction.fromJson(e as Map<String, dynamic>))
                .toList(),
          ),
        ) ??
        {},
  );
}

Map<String, dynamic> _researchToJson(ResearchInfo research) {
  return {
    'entry_points': research.entryPoints.map((e) => e.toJson()).toList(),
    'regions': research.regions.map((e) => e.toJson()).toList(),
    'attractions': research.attractions.map(
      (key, value) => MapEntry(key, value.map((e) => e.toJson()).toList()),
    ),
  };
}

@freezed
class ResearchInfo with _$ResearchInfo {
  const factory ResearchInfo({
    @Default([]) List<EntryPoint> entryPoints,
    @Default([]) List<Region> regions,
    @Default({}) Map<String, List<Attraction>> attractions,
  }) = _ResearchInfo;

  factory ResearchInfo.fromJson(Map<String, dynamic> json) =>
      _$ResearchInfoFromJson(json);
}

@freezed
class Region with _$Region {
  const factory Region({
    required String name,
    required String description,
    @JsonKey(name: 'recommended_stay') 
    required Map<String, String> recommendedStay,
    @Default([]) List<String> highlights,
    @JsonKey(name: 'base_for') 
    @Default([]) List<String> baseFor,
    @JsonKey(name: 'typical_order') 
    required String typicalOrder,
  }) = _Region;

  factory Region.fromJson(Map<String, dynamic> json) => _$RegionFromJson(json);
}

@freezed
class EntryPoint with _$EntryPoint {
  const factory EntryPoint({
    required String name,
    required String type,
    required String location,
    required String code,
    @JsonKey(name: 'transportation_to_city') 
    required List<Transportation> transportationToCity,
  }) = _EntryPoint;

  factory EntryPoint.fromJson(Map<String, dynamic> json) =>
      _$EntryPointFromJson(json);
}

@freezed
class Attraction with _$Attraction {
  const factory Attraction({
    required String name,
    required String region,
    required String category,
    @JsonKey(name: 'sub_category') 
    required String subCategory,
    required String description,
    @JsonKey(name: 'time_required') 
    required String timeRequired,
    @JsonKey(name: 'best_timing') 
    required String bestTiming,
    @JsonKey(name: 'cost_range') 
    required String costRange,
    required String rating,
    @JsonKey(name: 'review_count') 
    required String reviewCount,
    @JsonKey(name: 'must_see') 
    required bool mustSee,
  }) = _Attraction;

  factory Attraction.fromJson(Map<String, dynamic> json) =>
      _$AttractionFromJson(json);
}