// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'itinerary_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ItineraryResponseImpl _$$ItineraryResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$ItineraryResponseImpl(
      error: json['error'] as bool,
      data: ItineraryData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ItineraryResponseImplToJson(
        _$ItineraryResponseImpl instance) =>
    <String, dynamic>{
      'error': instance.error,
      'data': instance.data.toJson(),
    };

_$ItineraryDataImpl _$$ItineraryDataImplFromJson(Map<String, dynamic> json) =>
    _$ItineraryDataImpl(
      itinerary: (json['itinerary'] as List<dynamic>)
          .map((e) => DayPlan.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ItineraryDataImplToJson(_$ItineraryDataImpl instance) =>
    <String, dynamic>{
      'itinerary': instance.itinerary.map((e) => e.toJson()).toList(),
    };

_$DayPlanImpl _$$DayPlanImplFromJson(Map<String, dynamic> json) =>
    _$DayPlanImpl(
      day: (json['day'] as num).toInt(),
      date: json['date'] as String,
      activities: (json['activities'] as List<dynamic>)
          .map((e) => Activity.fromJson(e as Map<String, dynamic>))
          .toList(),
      accommodation:
          Accommodation.fromJson(json['accommodation'] as Map<String, dynamic>),
      totalCostEstimate: json['total_cost_estimate'] as String,
      notes: (json['notes'] as List<dynamic>).map((e) => e as String).toList(),
      baseLocation: json['baseLocation'] as String? ?? '',
    );

Map<String, dynamic> _$$DayPlanImplToJson(_$DayPlanImpl instance) =>
    <String, dynamic>{
      'day': instance.day,
      'date': instance.date,
      'activities': instance.activities.map((e) => e.toJson()).toList(),
      'accommodation': instance.accommodation.toJson(),
      'total_cost_estimate': instance.totalCostEstimate,
      'notes': instance.notes,
      'baseLocation': instance.baseLocation,
    };
