// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'research_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ResearchModelImpl _$$ResearchModelImplFromJson(Map<String, dynamic> json) =>
    _$ResearchModelImpl(
      error: json['error'] as bool,
      data: ResearchData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ResearchModelImplToJson(_$ResearchModelImpl instance) =>
    <String, dynamic>{
      'error': instance.error,
      'data': instance.data,
    };

_$ResearchDataImpl _$$ResearchDataImplFromJson(Map<String, dynamic> json) =>
    _$ResearchDataImpl(
      research:
          ResearchContent.fromJson(json['research'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ResearchDataImplToJson(_$ResearchDataImpl instance) =>
    <String, dynamic>{
      'research': instance.research,
    };

_$ResearchContentImpl _$$ResearchContentImplFromJson(
        Map<String, dynamic> json) =>
    _$ResearchContentImpl(
      destination: json['destination'] as String,
      data: ResearchDetails.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ResearchContentImplToJson(
        _$ResearchContentImpl instance) =>
    <String, dynamic>{
      'destination': instance.destination,
      'data': instance.data,
    };

_$ResearchDetailsImpl _$$ResearchDetailsImplFromJson(
        Map<String, dynamic> json) =>
    _$ResearchDetailsImpl(
      research: _researchFromJson(json['research'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ResearchDetailsImplToJson(
        _$ResearchDetailsImpl instance) =>
    <String, dynamic>{
      'research': _researchToJson(instance.research),
    };

_$ResearchInfoImpl _$$ResearchInfoImplFromJson(Map<String, dynamic> json) =>
    _$ResearchInfoImpl(
      entryPoints: (json['entryPoints'] as List<dynamic>?)
              ?.map((e) => EntryPoint.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      regions: (json['regions'] as List<dynamic>?)
              ?.map((e) => Region.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      attractions: (json['attractions'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(
                k,
                (e as List<dynamic>)
                    .map((e) => Attraction.fromJson(e as Map<String, dynamic>))
                    .toList()),
          ) ??
          const {},
    );

Map<String, dynamic> _$$ResearchInfoImplToJson(_$ResearchInfoImpl instance) =>
    <String, dynamic>{
      'entryPoints': instance.entryPoints,
      'regions': instance.regions,
      'attractions': instance.attractions,
    };

_$RegionImpl _$$RegionImplFromJson(Map<String, dynamic> json) => _$RegionImpl(
      name: json['name'] as String,
      description: json['description'] as String,
      recommendedStay:
          Map<String, String>.from(json['recommended_stay'] as Map),
      highlights: (json['highlights'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      baseFor: (json['base_for'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
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

_$EntryPointImpl _$$EntryPointImplFromJson(Map<String, dynamic> json) =>
    _$EntryPointImpl(
      name: json['name'] as String,
      type: json['type'] as String,
      location: json['location'] as String,
      code: json['code'] as String,
      transportationToCity: (json['transportation_to_city'] as List<dynamic>)
          .map((e) => Transportation.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$EntryPointImplToJson(_$EntryPointImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'type': instance.type,
      'location': instance.location,
      'code': instance.code,
      'transportation_to_city': instance.transportationToCity,
    };

_$TransportationImpl _$$TransportationImplFromJson(Map<String, dynamic> json) =>
    _$TransportationImpl(
      method: json['method'] as String,
      duration: json['duration'] as String,
      cost: json['cost'] as String,
      frequency: json['frequency'] as String,
    );

Map<String, dynamic> _$$TransportationImplToJson(
        _$TransportationImpl instance) =>
    <String, dynamic>{
      'method': instance.method,
      'duration': instance.duration,
      'cost': instance.cost,
      'frequency': instance.frequency,
    };

_$AttractionImpl _$$AttractionImplFromJson(Map<String, dynamic> json) =>
    _$AttractionImpl(
      name: json['name'] as String,
      region: json['region'] as String,
      category: json['category'] as String,
      subCategory: json['sub_category'] as String,
      description: json['description'] as String,
      timeRequired: json['time_required'] as String,
      bestTiming: json['best_timing'] as String,
      costRange: json['cost_range'] as String,
      rating: json['rating'] as String,
      reviewCount: json['review_count'] as String,
      mustSee: json['must_see'] as bool,
    );

Map<String, dynamic> _$$AttractionImplToJson(_$AttractionImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'region': instance.region,
      'category': instance.category,
      'sub_category': instance.subCategory,
      'description': instance.description,
      'time_required': instance.timeRequired,
      'best_timing': instance.bestTiming,
      'cost_range': instance.costRange,
      'rating': instance.rating,
      'review_count': instance.reviewCount,
      'must_see': instance.mustSee,
    };
