// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'activity_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ActivityImpl _$$ActivityImplFromJson(Map<String, dynamic> json) =>
    _$ActivityImpl(
      time: json['time'] as String,
      activity: json['activity'] as String,
      location: json['location'] as String,
      description: json['description'] as String,
      duration: json['duration'] as String,
      transportation: ActivityTransportation.fromJson(
          json['transportation'] as Map<String, dynamic>),
      cost: json['cost'] as String,
      tips: (json['tips'] as List<dynamic>).map((e) => e as String).toList(),
      bookingRequired: json['booking_required'] as bool,
      bookingInfo: json['booking_info'] as String?,
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
      'booking_required': instance.bookingRequired,
      'booking_info': instance.bookingInfo,
    };

_$ActivityTransportationImpl _$$ActivityTransportationImplFromJson(
        Map<String, dynamic> json) =>
    _$ActivityTransportationImpl(
      method: json['method'] as String,
      from: json['from'] as String,
      to: json['to'] as String,
      duration: json['duration'] as String,
      cost: json['cost'] as String,
      notes: (json['notes'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$ActivityTransportationImplToJson(
        _$ActivityTransportationImpl instance) =>
    <String, dynamic>{
      'method': instance.method,
      'from': instance.from,
      'to': instance.to,
      'duration': instance.duration,
      'cost': instance.cost,
      'notes': instance.notes,
    };
