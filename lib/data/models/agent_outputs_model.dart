import 'package:freezed_annotation/freezed_annotation.dart';

part 'agent_outputs_model.freezed.dart';
part 'agent_outputs_model.g.dart';

@freezed
class AgentOutputs with _$AgentOutputs {
  const factory AgentOutputs({
    SafetyInfo? safetyInfo,
    BudgetInfo? budgetInfo,
    CulturalInfo? culturalInfo,
    FoodInfo? foodInfo,
    AccommodationInfo? accommodationInfo,
    TransportationInfo? transportationInfo,
    ActivityInfo? activityInfo,
    SeasonalInfo? seasonalInfo,
    CurrencyInfo? currencyInfo,
    ShoppingInfo? shoppingInfo,
    HealthInfo? healthInfo,
    AccessibilityInfo? accessibilityInfo,
    VisaInfo? visaInfo,
    TechnologyInfo? technologyInfo,
  }) = _AgentOutputs;

  factory AgentOutputs.fromJson(Map<String, dynamic> json) =>
      _$AgentOutputsFromJson(json);
}

@freezed
class SafetyInfo with _$SafetyInfo {
  const factory SafetyInfo({
    required Map<String, dynamic> overallSafety,
    required List<Map<String, dynamic>> areasToAvoid,
    required List<Map<String, dynamic>> commonScams,
    required List<Map<String, dynamic>> safetyTips,
    required Map<String, dynamic> healthSafety,
  }) = _SafetyInfo;

  factory SafetyInfo.fromJson(Map<String, dynamic> json) =>
      _$SafetyInfoFromJson(json);
}

@freezed
class BudgetInfo with _$BudgetInfo {
  const factory BudgetInfo({
    required Map<String, dynamic> budgetBreakdown,
    required List<Map<String, dynamic>> moneySavingTips,
    required List<Map<String, dynamic>> seasonalPriceVariations,
  }) = _BudgetInfo;

  factory BudgetInfo.fromJson(Map<String, dynamic> json) =>
      _$BudgetInfoFromJson(json);
}

@freezed
class CulturalInfo with _$CulturalInfo {
  const factory CulturalInfo({
    required List<Map<String, dynamic>> traditions,
  }) = _CulturalInfo;

  factory CulturalInfo.fromJson(Map<String, dynamic> json) =>
      _$CulturalInfoFromJson(json);
}

@freezed
class FoodInfo with _$FoodInfo {
  const factory FoodInfo({
    required List<Map<String, dynamic>> localDishes,
    required List<Map<String, dynamic>> diningEtiquette,
  }) = _FoodInfo;

  factory FoodInfo.fromJson(Map<String, dynamic> json) =>
      _$FoodInfoFromJson(json);
}

@freezed
class AccommodationInfo with _$AccommodationInfo {
  const factory AccommodationInfo({
    required List<Map<String, dynamic>> recommendations,
    required Map<String, dynamic> areaGuide,
    required List<String> bookingTips,
  }) = _AccommodationInfo;

  factory AccommodationInfo.fromJson(Map<String, dynamic> json) =>
      _$AccommodationInfoFromJson(json);
}

@freezed
class TransportationInfo with _$TransportationInfo {
  const factory TransportationInfo({
    required Map<String, dynamic> publicTransport,
    required Map<String, dynamic> taxiServices,
    required List<Map<String, dynamic>> transportationTips,
  }) = _TransportationInfo;

  factory TransportationInfo.fromJson(Map<String, dynamic> json) =>
      _$TransportationInfoFromJson(json);
}

@freezed
class ActivityInfo with _$ActivityInfo {
  const factory ActivityInfo({
    required List<Map<String, dynamic>> recommendedActivities,
    required Map<String, List<String>> seasonalActivities,
    required List<Map<String, dynamic>> bookingInfo,
  }) = _ActivityInfo;

  factory ActivityInfo.fromJson(Map<String, dynamic> json) =>
      _$ActivityInfoFromJson(json);
}

@freezed
class SeasonalInfo with _$SeasonalInfo {
  const factory SeasonalInfo({
    required Map<String, dynamic> weatherPatterns,
    required List<Map<String, dynamic>> seasonalEvents,
    required Map<String, List<String>> bestTimeToVisit,
  }) = _SeasonalInfo;

  factory SeasonalInfo.fromJson(Map<String, dynamic> json) =>
      _$SeasonalInfoFromJson(json);
}

@freezed
class CurrencyInfo with _$CurrencyInfo {
  const factory CurrencyInfo({
    required Map<String, dynamic> exchangeRates,
    required List<Map<String, dynamic>> exchangeLocations,
    required List<String> paymentTips,
  }) = _CurrencyInfo;

  factory CurrencyInfo.fromJson(Map<String, dynamic> json) =>
      _$CurrencyInfoFromJson(json);
}

@freezed
class ShoppingInfo with _$ShoppingInfo {
  const factory ShoppingInfo({
    required List<Map<String, dynamic>> shoppingAreas,
    required List<Map<String, dynamic>> localProducts,
    required List<String> shoppingTips,
  }) = _ShoppingInfo;

  factory ShoppingInfo.fromJson(Map<String, dynamic> json) =>
      _$ShoppingInfoFromJson(json);
}

@freezed
class HealthInfo with _$HealthInfo {
  const factory HealthInfo({
    required Map<String, dynamic> medicalFacilities,
    required List<Map<String, dynamic>> vaccinations,
    required List<String> healthTips,
  }) = _HealthInfo;

  factory HealthInfo.fromJson(Map<String, dynamic> json) =>
      _$HealthInfoFromJson(json);
}

@freezed
class AccessibilityInfo with _$AccessibilityInfo {
  const factory AccessibilityInfo({
    required Map<String, dynamic> transportAccess,
    required List<Map<String, dynamic>> accessibleVenues,
    required List<String> accessibilityTips,
  }) = _AccessibilityInfo;

  factory AccessibilityInfo.fromJson(Map<String, dynamic> json) =>
      _$AccessibilityInfoFromJson(json);
}

@freezed
class VisaInfo with _$VisaInfo {
  const factory VisaInfo({
    required Map<String, dynamic> requirements,
    required List<Map<String, dynamic>> processes,
    required List<String> visaTips,
  }) = _VisaInfo;

  factory VisaInfo.fromJson(Map<String, dynamic> json) =>
      _$VisaInfoFromJson(json);
}

@freezed
class TechnologyInfo with _$TechnologyInfo {
  const factory TechnologyInfo({
    required Map<String, dynamic> connectivity,
    required List<Map<String, dynamic>> usefulApps,
    required List<String> techTips,
  }) = _TechnologyInfo;

  factory TechnologyInfo.fromJson(Map<String, dynamic> json) =>
      _$TechnologyInfoFromJson(json);
}

// Add other agent-specific models following the same pattern...