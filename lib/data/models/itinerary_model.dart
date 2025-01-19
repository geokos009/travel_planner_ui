// lib/data/models/itinerary_model.dart
import 'package:freezed_annotation/freezed_annotation.dart';
import 'activity_model.dart';
import 'accommodation_model.dart';

part 'itinerary_model.freezed.dart';
part 'itinerary_model.g.dart';

@freezed
class ItineraryResponse with _$ItineraryResponse {
  const factory ItineraryResponse({
    required bool error,
    required ItineraryData data,
  }) = _ItineraryResponse;

  factory ItineraryResponse.fromJson(Map<String, dynamic> json) =>
      _$ItineraryResponseFromJson(json);
}

@freezed
class ItineraryData with _$ItineraryData {
  const factory ItineraryData({
    required List<DayPlan> itinerary,
  }) = _ItineraryData;

  factory ItineraryData.fromJson(Map<String, dynamic> json) =>
      _$ItineraryDataFromJson(json);
}

@freezed
class DayPlan with _$DayPlan {
  const factory DayPlan({
    required int day,
    required String date,
    required List<Activity> activities,
    required Accommodation accommodation,
    @JsonKey(name: 'total_cost_estimate')
    required String totalCostEstimate,
    required List<String> notes,
    @Default('') String baseLocation,
  }) = _DayPlan;

  factory DayPlan.fromJson(Map<String, dynamic> json) =>
      _$DayPlanFromJson(json);
}
