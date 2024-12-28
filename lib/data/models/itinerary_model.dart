// lib/data/models/itinerary_model.freezed.dart
import 'package:freezed_annotation/freezed_annotation.dart';

part 'itinerary_model.freezed.dart';
part 'itinerary_model.g.dart';

@freezed
class ItineraryModel with _$ItineraryModel {
  const factory ItineraryModel({
    required List<DayPlan> itinerary,
  }) = _ItineraryModel;

  factory ItineraryModel.fromJson(Map<String, dynamic> json) =>
      _$ItineraryModelFromJson(json);
}

@freezed
class DayPlan with _$DayPlan {
  const factory DayPlan({
    required int day,
    required String date,
    required String baseLocation,
    required bool travelDay,
    required List<Activity> activities,
    required Accommodation accommodation,
    required String totalCostEstimate,
    required List<String> notes,
  }) = _DayPlan;

  factory DayPlan.fromJson(Map<String, dynamic> json) =>
      _$DayPlanFromJson(json);
}

@freezed
class Activity with _$Activity {
  const factory Activity({
    required String time,
    required String activity,
    required String location,
    required String description,
    required String duration,
    required Transportation transportation,
    required String cost,
    required List<String> tips,
    required bool bookingRequired,
    String? bookingInfo,
  }) = _Activity;

  factory Activity.fromJson(Map<String, dynamic> json) =>
      _$ActivityFromJson(json);
}

@freezed
class Transportation with _$Transportation {
  const factory Transportation({
    required String method,
    required String from,
    required String to,
    required String duration,
    required String cost,
    required List<String> notes,
  }) = _Transportation;

  factory Transportation.fromJson(Map<String, dynamic> json) =>
      _$TransportationFromJson(json);
}

@freezed
class Accommodation with _$Accommodation {
  const factory Accommodation({
    required String name,
    required String location,
    required String checkIn,
    required String checkOut,
    required List<String> amenities,
    required String bookingInfo,
    required List<String> notes,
  }) = _Accommodation;

  factory Accommodation.fromJson(Map<String, dynamic> json) =>
      _$AccommodationFromJson(json);
}