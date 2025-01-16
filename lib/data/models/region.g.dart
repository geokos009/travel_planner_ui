// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'region.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Region _$RegionFromJson(Map<String, dynamic> json) => Region(
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

Map<String, dynamic> _$RegionToJson(Region instance) => <String, dynamic>{
      'name': instance.name,
      'description': instance.description,
      'recommended_stay': instance.recommendedStay,
      'highlights': instance.highlights,
      'base_for': instance.baseFor,
      'typical_order': instance.typicalOrder,
    };

_$RegionImpl _$$RegionImplFromJson(Map<String, dynamic> json) => _$RegionImpl(
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

Map<String, dynamic> _$$RegionImplToJson(_$RegionImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'description': instance.description,
      'recommended_stay': instance.recommendedStay,
      'highlights': instance.highlights,
      'base_for': instance.baseFor,
      'typical_order': instance.typicalOrder,
    };
