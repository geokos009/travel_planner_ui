// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_location.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BaseLocationImpl _$$BaseLocationImplFromJson(Map<String, dynamic> json) =>
    _$BaseLocationImpl(
      name: json['name'] as String,
      description: json['description'] as String,
      recommendedStay:
          Map<String, String>.from(json['recommended_stay'] as Map),
      highlights: (json['highlights'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      baseFor:
          (json['base_for'] as List<dynamic>).map((e) => e as String).toList(),
      typicalOrder: json['typical_order'] as String,
    );

Map<String, dynamic> _$$BaseLocationImplToJson(_$BaseLocationImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'description': instance.description,
      'recommended_stay': instance.recommendedStay,
      'highlights': instance.highlights,
      'base_for': instance.baseFor,
      'typical_order': instance.typicalOrder,
    };
