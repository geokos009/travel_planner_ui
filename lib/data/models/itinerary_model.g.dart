// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'itinerary_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ItineraryModelImpl _$$ItineraryModelImplFromJson(Map<String, dynamic> json) =>
    _$ItineraryModelImpl(
      itinerary: (json['itinerary'] as List<dynamic>)
          .map((e) => DayPlan.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ItineraryModelImplToJson(
        _$ItineraryModelImpl instance) =>
    <String, dynamic>{
      'itinerary': instance.itinerary,
    };

_$DayPlanImpl _$$DayPlanImplFromJson(Map<String, dynamic> json) =>
    _$DayPlanImpl(
      day: (json['day'] as num).toInt(),
      date: json['date'] as String,
      baseLocation: json['baseLocation'] as String,
      travelDay: json['travelDay'] as bool,
      activities: (json['activities'] as List<dynamic>)
          .map((e) => Activity.fromJson(e as Map<String, dynamic>))
          .toList(),
      accommodation:
          Accommodation.fromJson(json['accommodation'] as Map<String, dynamic>),
      totalCostEstimate: json['totalCostEstimate'] as String,
      notes: (json['notes'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$DayPlanImplToJson(_$DayPlanImpl instance) =>
    <String, dynamic>{
      'day': instance.day,
      'date': instance.date,
      'baseLocation': instance.baseLocation,
      'travelDay': instance.travelDay,
      'activities': instance.activities,
      'accommodation': instance.accommodation,
      'totalCostEstimate': instance.totalCostEstimate,
      'notes': instance.notes,
    };

_$ActivityImpl _$$ActivityImplFromJson(Map<String, dynamic> json) =>
    _$ActivityImpl(
      time: json['time'] as String,
      activity: json['activity'] as String,
      location: json['location'] as String,
      description: json['description'] as String,
      duration: json['duration'] as String,
      transportation: Transportation.fromJson(
          json['transportation'] as Map<String, dynamic>),
      cost: json['cost'] as String,
      tips: (json['tips'] as List<dynamic>).map((e) => e as String).toList(),
      bookingRequired: json['bookingRequired'] as bool,
      bookingInfo: json['bookingInfo'] as String?,
    );

Map<String, dynamic> _$$ActivityImplToJson(_$ActivityImpl instance) =>
    <String, dynamic>{
      'time': instance.time,
      'activity': instance.activity,
      'location': instance.location,
      'description': instance.description,
      'duration': instance.duration,
      'transportation': instance.transportation,
      'cost': instance.cost,
      'tips': instance.tips,
      'bookingRequired': instance.bookingRequired,
      'bookingInfo': instance.bookingInfo,
    };

_$TransportationImpl _$$TransportationImplFromJson(Map<String, dynamic> json) =>
    _$TransportationImpl(
      method: json['method'] as String,
      from: json['from'] as String,
      to: json['to'] as String,
      duration: json['duration'] as String,
      cost: json['cost'] as String,
      notes: (json['notes'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$TransportationImplToJson(
        _$TransportationImpl instance) =>
    <String, dynamic>{
      'method': instance.method,
      'from': instance.from,
      'to': instance.to,
      'duration': instance.duration,
      'cost': instance.cost,
      'notes': instance.notes,
    };

_$AccommodationImpl _$$AccommodationImplFromJson(Map<String, dynamic> json) =>
    _$AccommodationImpl(
      name: json['name'] as String,
      location: json['location'] as String,
      checkIn: json['checkIn'] as String,
      checkOut: json['checkOut'] as String,
      amenities:
          (json['amenities'] as List<dynamic>).map((e) => e as String).toList(),
      bookingInfo: json['bookingInfo'] as String,
      notes: (json['notes'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$AccommodationImplToJson(_$AccommodationImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'location': instance.location,
      'checkIn': instance.checkIn,
      'checkOut': instance.checkOut,
      'amenities': instance.amenities,
      'bookingInfo': instance.bookingInfo,
      'notes': instance.notes,
    };
