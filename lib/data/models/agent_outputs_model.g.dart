// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'agent_outputs_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AgentOutputsImpl _$$AgentOutputsImplFromJson(Map<String, dynamic> json) =>
    _$AgentOutputsImpl(
      safetyInfo: json['safetyInfo'] == null
          ? null
          : SafetyInfo.fromJson(json['safetyInfo'] as Map<String, dynamic>),
      budgetInfo: json['budgetInfo'] == null
          ? null
          : BudgetInfo.fromJson(json['budgetInfo'] as Map<String, dynamic>),
      culturalInfo: json['culturalInfo'] == null
          ? null
          : CulturalInfo.fromJson(json['culturalInfo'] as Map<String, dynamic>),
      foodInfo: json['foodInfo'] == null
          ? null
          : FoodInfo.fromJson(json['foodInfo'] as Map<String, dynamic>),
      accommodationInfo: json['accommodationInfo'] == null
          ? null
          : AccommodationInfo.fromJson(
              json['accommodationInfo'] as Map<String, dynamic>),
      transportationInfo: json['transportationInfo'] == null
          ? null
          : TransportationInfo.fromJson(
              json['transportationInfo'] as Map<String, dynamic>),
      activityInfo: json['activityInfo'] == null
          ? null
          : ActivityInfo.fromJson(json['activityInfo'] as Map<String, dynamic>),
      seasonalInfo: json['seasonalInfo'] == null
          ? null
          : SeasonalInfo.fromJson(json['seasonalInfo'] as Map<String, dynamic>),
      currencyInfo: json['currencyInfo'] == null
          ? null
          : CurrencyInfo.fromJson(json['currencyInfo'] as Map<String, dynamic>),
      shoppingInfo: json['shoppingInfo'] == null
          ? null
          : ShoppingInfo.fromJson(json['shoppingInfo'] as Map<String, dynamic>),
      healthInfo: json['healthInfo'] == null
          ? null
          : HealthInfo.fromJson(json['healthInfo'] as Map<String, dynamic>),
      accessibilityInfo: json['accessibilityInfo'] == null
          ? null
          : AccessibilityInfo.fromJson(
              json['accessibilityInfo'] as Map<String, dynamic>),
      visaInfo: json['visaInfo'] == null
          ? null
          : VisaInfo.fromJson(json['visaInfo'] as Map<String, dynamic>),
      technologyInfo: json['technologyInfo'] == null
          ? null
          : TechnologyInfo.fromJson(
              json['technologyInfo'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$AgentOutputsImplToJson(_$AgentOutputsImpl instance) =>
    <String, dynamic>{
      if (instance.safetyInfo?.toJson() case final value?) 'safetyInfo': value,
      if (instance.budgetInfo?.toJson() case final value?) 'budgetInfo': value,
      if (instance.culturalInfo?.toJson() case final value?)
        'culturalInfo': value,
      if (instance.foodInfo?.toJson() case final value?) 'foodInfo': value,
      if (instance.accommodationInfo?.toJson() case final value?)
        'accommodationInfo': value,
      if (instance.transportationInfo?.toJson() case final value?)
        'transportationInfo': value,
      if (instance.activityInfo?.toJson() case final value?)
        'activityInfo': value,
      if (instance.seasonalInfo?.toJson() case final value?)
        'seasonalInfo': value,
      if (instance.currencyInfo?.toJson() case final value?)
        'currencyInfo': value,
      if (instance.shoppingInfo?.toJson() case final value?)
        'shoppingInfo': value,
      if (instance.healthInfo?.toJson() case final value?) 'healthInfo': value,
      if (instance.accessibilityInfo?.toJson() case final value?)
        'accessibilityInfo': value,
      if (instance.visaInfo?.toJson() case final value?) 'visaInfo': value,
      if (instance.technologyInfo?.toJson() case final value?)
        'technologyInfo': value,
    };

_$SafetyInfoImpl _$$SafetyInfoImplFromJson(Map<String, dynamic> json) =>
    _$SafetyInfoImpl(
      overallSafety: json['overallSafety'] as Map<String, dynamic>,
      areasToAvoid: (json['areasToAvoid'] as List<dynamic>)
          .map((e) => e as Map<String, dynamic>)
          .toList(),
      commonScams: (json['commonScams'] as List<dynamic>)
          .map((e) => e as Map<String, dynamic>)
          .toList(),
      safetyTips: (json['safetyTips'] as List<dynamic>)
          .map((e) => e as Map<String, dynamic>)
          .toList(),
      healthSafety: json['healthSafety'] as Map<String, dynamic>,
    );

Map<String, dynamic> _$$SafetyInfoImplToJson(_$SafetyInfoImpl instance) =>
    <String, dynamic>{
      'overallSafety': instance.overallSafety,
      'areasToAvoid': instance.areasToAvoid,
      'commonScams': instance.commonScams,
      'safetyTips': instance.safetyTips,
      'healthSafety': instance.healthSafety,
    };

_$BudgetInfoImpl _$$BudgetInfoImplFromJson(Map<String, dynamic> json) =>
    _$BudgetInfoImpl(
      budgetBreakdown: json['budgetBreakdown'] as Map<String, dynamic>,
      moneySavingTips: (json['moneySavingTips'] as List<dynamic>)
          .map((e) => e as Map<String, dynamic>)
          .toList(),
      seasonalPriceVariations:
          (json['seasonalPriceVariations'] as List<dynamic>)
              .map((e) => e as Map<String, dynamic>)
              .toList(),
    );

Map<String, dynamic> _$$BudgetInfoImplToJson(_$BudgetInfoImpl instance) =>
    <String, dynamic>{
      'budgetBreakdown': instance.budgetBreakdown,
      'moneySavingTips': instance.moneySavingTips,
      'seasonalPriceVariations': instance.seasonalPriceVariations,
    };

_$CulturalInfoImpl _$$CulturalInfoImplFromJson(Map<String, dynamic> json) =>
    _$CulturalInfoImpl(
      traditions: (json['traditions'] as List<dynamic>)
          .map((e) => e as Map<String, dynamic>)
          .toList(),
    );

Map<String, dynamic> _$$CulturalInfoImplToJson(_$CulturalInfoImpl instance) =>
    <String, dynamic>{
      'traditions': instance.traditions,
    };

_$FoodInfoImpl _$$FoodInfoImplFromJson(Map<String, dynamic> json) =>
    _$FoodInfoImpl(
      localDishes: (json['localDishes'] as List<dynamic>)
          .map((e) => e as Map<String, dynamic>)
          .toList(),
      diningEtiquette: (json['diningEtiquette'] as List<dynamic>)
          .map((e) => e as Map<String, dynamic>)
          .toList(),
    );

Map<String, dynamic> _$$FoodInfoImplToJson(_$FoodInfoImpl instance) =>
    <String, dynamic>{
      'localDishes': instance.localDishes,
      'diningEtiquette': instance.diningEtiquette,
    };

_$AccommodationInfoImpl _$$AccommodationInfoImplFromJson(
        Map<String, dynamic> json) =>
    _$AccommodationInfoImpl(
      recommendations: (json['recommendations'] as List<dynamic>)
          .map((e) => e as Map<String, dynamic>)
          .toList(),
      areaGuide: json['areaGuide'] as Map<String, dynamic>,
      bookingTips: (json['bookingTips'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$AccommodationInfoImplToJson(
        _$AccommodationInfoImpl instance) =>
    <String, dynamic>{
      'recommendations': instance.recommendations,
      'areaGuide': instance.areaGuide,
      'bookingTips': instance.bookingTips,
    };

_$TransportationInfoImpl _$$TransportationInfoImplFromJson(
        Map<String, dynamic> json) =>
    _$TransportationInfoImpl(
      publicTransport: json['publicTransport'] as Map<String, dynamic>,
      taxiServices: json['taxiServices'] as Map<String, dynamic>,
      transportationTips: (json['transportationTips'] as List<dynamic>)
          .map((e) => e as Map<String, dynamic>)
          .toList(),
    );

Map<String, dynamic> _$$TransportationInfoImplToJson(
        _$TransportationInfoImpl instance) =>
    <String, dynamic>{
      'publicTransport': instance.publicTransport,
      'taxiServices': instance.taxiServices,
      'transportationTips': instance.transportationTips,
    };

_$ActivityInfoImpl _$$ActivityInfoImplFromJson(Map<String, dynamic> json) =>
    _$ActivityInfoImpl(
      recommendedActivities: (json['recommendedActivities'] as List<dynamic>)
          .map((e) => e as Map<String, dynamic>)
          .toList(),
      seasonalActivities:
          (json['seasonalActivities'] as Map<String, dynamic>).map(
        (k, e) =>
            MapEntry(k, (e as List<dynamic>).map((e) => e as String).toList()),
      ),
      bookingInfo: (json['bookingInfo'] as List<dynamic>)
          .map((e) => e as Map<String, dynamic>)
          .toList(),
    );

Map<String, dynamic> _$$ActivityInfoImplToJson(_$ActivityInfoImpl instance) =>
    <String, dynamic>{
      'recommendedActivities': instance.recommendedActivities,
      'seasonalActivities': instance.seasonalActivities,
      'bookingInfo': instance.bookingInfo,
    };

_$SeasonalInfoImpl _$$SeasonalInfoImplFromJson(Map<String, dynamic> json) =>
    _$SeasonalInfoImpl(
      weatherPatterns: json['weatherPatterns'] as Map<String, dynamic>,
      seasonalEvents: (json['seasonalEvents'] as List<dynamic>)
          .map((e) => e as Map<String, dynamic>)
          .toList(),
      bestTimeToVisit: (json['bestTimeToVisit'] as Map<String, dynamic>).map(
        (k, e) =>
            MapEntry(k, (e as List<dynamic>).map((e) => e as String).toList()),
      ),
    );

Map<String, dynamic> _$$SeasonalInfoImplToJson(_$SeasonalInfoImpl instance) =>
    <String, dynamic>{
      'weatherPatterns': instance.weatherPatterns,
      'seasonalEvents': instance.seasonalEvents,
      'bestTimeToVisit': instance.bestTimeToVisit,
    };

_$CurrencyInfoImpl _$$CurrencyInfoImplFromJson(Map<String, dynamic> json) =>
    _$CurrencyInfoImpl(
      exchangeRates: json['exchangeRates'] as Map<String, dynamic>,
      exchangeLocations: (json['exchangeLocations'] as List<dynamic>)
          .map((e) => e as Map<String, dynamic>)
          .toList(),
      paymentTips: (json['paymentTips'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$CurrencyInfoImplToJson(_$CurrencyInfoImpl instance) =>
    <String, dynamic>{
      'exchangeRates': instance.exchangeRates,
      'exchangeLocations': instance.exchangeLocations,
      'paymentTips': instance.paymentTips,
    };

_$ShoppingInfoImpl _$$ShoppingInfoImplFromJson(Map<String, dynamic> json) =>
    _$ShoppingInfoImpl(
      shoppingAreas: (json['shoppingAreas'] as List<dynamic>)
          .map((e) => e as Map<String, dynamic>)
          .toList(),
      localProducts: (json['localProducts'] as List<dynamic>)
          .map((e) => e as Map<String, dynamic>)
          .toList(),
      shoppingTips: (json['shoppingTips'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$ShoppingInfoImplToJson(_$ShoppingInfoImpl instance) =>
    <String, dynamic>{
      'shoppingAreas': instance.shoppingAreas,
      'localProducts': instance.localProducts,
      'shoppingTips': instance.shoppingTips,
    };

_$HealthInfoImpl _$$HealthInfoImplFromJson(Map<String, dynamic> json) =>
    _$HealthInfoImpl(
      medicalFacilities: json['medicalFacilities'] as Map<String, dynamic>,
      vaccinations: (json['vaccinations'] as List<dynamic>)
          .map((e) => e as Map<String, dynamic>)
          .toList(),
      healthTips: (json['healthTips'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$HealthInfoImplToJson(_$HealthInfoImpl instance) =>
    <String, dynamic>{
      'medicalFacilities': instance.medicalFacilities,
      'vaccinations': instance.vaccinations,
      'healthTips': instance.healthTips,
    };

_$AccessibilityInfoImpl _$$AccessibilityInfoImplFromJson(
        Map<String, dynamic> json) =>
    _$AccessibilityInfoImpl(
      transportAccess: json['transportAccess'] as Map<String, dynamic>,
      accessibleVenues: (json['accessibleVenues'] as List<dynamic>)
          .map((e) => e as Map<String, dynamic>)
          .toList(),
      accessibilityTips: (json['accessibilityTips'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$AccessibilityInfoImplToJson(
        _$AccessibilityInfoImpl instance) =>
    <String, dynamic>{
      'transportAccess': instance.transportAccess,
      'accessibleVenues': instance.accessibleVenues,
      'accessibilityTips': instance.accessibilityTips,
    };

_$VisaInfoImpl _$$VisaInfoImplFromJson(Map<String, dynamic> json) =>
    _$VisaInfoImpl(
      requirements: json['requirements'] as Map<String, dynamic>,
      processes: (json['processes'] as List<dynamic>)
          .map((e) => e as Map<String, dynamic>)
          .toList(),
      visaTips:
          (json['visaTips'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$VisaInfoImplToJson(_$VisaInfoImpl instance) =>
    <String, dynamic>{
      'requirements': instance.requirements,
      'processes': instance.processes,
      'visaTips': instance.visaTips,
    };

_$TechnologyInfoImpl _$$TechnologyInfoImplFromJson(Map<String, dynamic> json) =>
    _$TechnologyInfoImpl(
      connectivity: json['connectivity'] as Map<String, dynamic>,
      usefulApps: (json['usefulApps'] as List<dynamic>)
          .map((e) => e as Map<String, dynamic>)
          .toList(),
      techTips:
          (json['techTips'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$TechnologyInfoImplToJson(
        _$TechnologyInfoImpl instance) =>
    <String, dynamic>{
      'connectivity': instance.connectivity,
      'usefulApps': instance.usefulApps,
      'techTips': instance.techTips,
    };
