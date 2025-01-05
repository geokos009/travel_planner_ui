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
      'data': instance.data,
    };

_$ItineraryDataImpl _$$ItineraryDataImplFromJson(Map<String, dynamic> json) =>
    _$ItineraryDataImpl(
      itinerary: (json['itinerary'] as List<dynamic>)
          .map((e) => DayPlan.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ItineraryDataImplToJson(_$ItineraryDataImpl instance) =>
    <String, dynamic>{
      'itinerary': instance.itinerary,
    };

_$DayPlanImpl _$$DayPlanImplFromJson(Map<String, dynamic> json) =>
    _$DayPlanImpl(
      day: (json['day'] as num).toInt(),
      date: json['date'] as String,
      baseLocation: json['base_location'] as String,
      travelDay: json['travel_day'] as bool,
      activities: (json['activities'] as List<dynamic>)
          .map((e) => Activity.fromJson(e as Map<String, dynamic>))
          .toList(),
      accommodation: json['accommodation'] == null
          ? null
          : Accommodation.fromJson(
              json['accommodation'] as Map<String, dynamic>),
      totalCostEstimate: json['total_cost_estimate'] as String,
      notes: (json['notes'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$DayPlanImplToJson(_$DayPlanImpl instance) =>
    <String, dynamic>{
      'day': instance.day,
      'date': instance.date,
      'base_location': instance.baseLocation,
      'travel_day': instance.travelDay,
      'activities': instance.activities,
      'accommodation': instance.accommodation,
      'total_cost_estimate': instance.totalCostEstimate,
      'notes': instance.notes,
    };
