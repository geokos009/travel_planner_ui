// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'entry_point.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EntryPoint _$EntryPointFromJson(Map<String, dynamic> json) => EntryPoint(
      name: json['name'] as String,
      type: json['type'] as String,
      location: json['location'] as String,
      code: json['code'] as String,
      transportationToCity: (json['transportation_to_city'] as List<dynamic>)
          .map((e) => TransportationToCity.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$EntryPointToJson(EntryPoint instance) =>
    <String, dynamic>{
      'name': instance.name,
      'type': instance.type,
      'location': instance.location,
      'code': instance.code,
      'transportation_to_city':
          instance.transportationToCity.map((e) => e.toJson()).toList(),
    };

TransportationToCity _$TransportationToCityFromJson(
        Map<String, dynamic> json) =>
    TransportationToCity(
      method: json['method'] as String,
      duration: json['duration'] as String,
      cost: json['cost'] as String,
      frequency: json['frequency'] as String,
    );

Map<String, dynamic> _$TransportationToCityToJson(
        TransportationToCity instance) =>
    <String, dynamic>{
      'method': instance.method,
      'duration': instance.duration,
      'cost': instance.cost,
      'frequency': instance.frequency,
    };

_$EntryPointImpl _$$EntryPointImplFromJson(Map<String, dynamic> json) =>
    _$EntryPointImpl(
      name: json['name'] as String,
      type: json['type'] as String,
      location: json['location'] as String,
      code: json['code'] as String,
      transportationToCity: (json['transportation_to_city'] as List<dynamic>)
          .map((e) => TransportationToCity.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$EntryPointImplToJson(_$EntryPointImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'type': instance.type,
      'location': instance.location,
      'code': instance.code,
      'transportation_to_city':
          instance.transportationToCity.map((e) => e.toJson()).toList(),
    };

_$TransportationToCityImpl _$$TransportationToCityImplFromJson(
        Map<String, dynamic> json) =>
    _$TransportationToCityImpl(
      method: json['method'] as String,
      duration: json['duration'] as String,
      cost: json['cost'] as String,
      frequency: json['frequency'] as String,
    );

Map<String, dynamic> _$$TransportationToCityImplToJson(
        _$TransportationToCityImpl instance) =>
    <String, dynamic>{
      'method': instance.method,
      'duration': instance.duration,
      'cost': instance.cost,
      'frequency': instance.frequency,
    };
