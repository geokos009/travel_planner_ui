// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'research_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ApiResponseImpl<T> _$$ApiResponseImplFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) =>
    _$ApiResponseImpl<T>(
      error: json['error'] as bool,
      data: _$nullableGenericFromJson(json['data'], fromJsonT),
      message: json['message'] as String?,
    );

Map<String, dynamic> _$$ApiResponseImplToJson<T>(
  _$ApiResponseImpl<T> instance,
  Object? Function(T value) toJsonT,
) =>
    <String, dynamic>{
      'error': instance.error,
      if (_$nullableGenericToJson(instance.data, toJsonT) case final value?)
        'data': value,
      if (instance.message case final value?) 'message': value,
    };

T? _$nullableGenericFromJson<T>(
  Object? input,
  T Function(Object? json) fromJson,
) =>
    input == null ? null : fromJson(input);

Object? _$nullableGenericToJson<T>(
  T? input,
  Object? Function(T value) toJson,
) =>
    input == null ? null : toJson(input);

_$ResearchModelImpl _$$ResearchModelImplFromJson(Map<String, dynamic> json) =>
    _$ResearchModelImpl(
      error: json['error'] as bool,
      data: ResearchData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ResearchModelImplToJson(_$ResearchModelImpl instance) =>
    <String, dynamic>{
      'error': instance.error,
      'data': instance.data.toJson(),
    };

_$ResearchDataImpl _$$ResearchDataImplFromJson(Map<String, dynamic> json) =>
    _$ResearchDataImpl(
      research:
          ResearchContent.fromJson(json['research'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ResearchDataImplToJson(_$ResearchDataImpl instance) =>
    <String, dynamic>{
      'research': instance.research.toJson(),
    };

_$ResearchContentImpl _$$ResearchContentImplFromJson(
        Map<String, dynamic> json) =>
    _$ResearchContentImpl(
      error: json['error'] as bool,
      data: json['data'] == null
          ? null
          : ResearchDetails.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ResearchContentImplToJson(
        _$ResearchContentImpl instance) =>
    <String, dynamic>{
      'error': instance.error,
      if (instance.data?.toJson() case final value?) 'data': value,
    };

_$ResearchDetailsImpl _$$ResearchDetailsImplFromJson(
        Map<String, dynamic> json) =>
    _$ResearchDetailsImpl(
      destination: json['destination'] as String,
      data: CoreInfoData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ResearchDetailsImplToJson(
        _$ResearchDetailsImpl instance) =>
    <String, dynamic>{
      'destination': instance.destination,
      'data': instance.data.toJson(),
    };

_$CoreInfoDataImpl _$$CoreInfoDataImplFromJson(Map<String, dynamic> json) =>
    _$CoreInfoDataImpl(
      coreInfo: CoreInfo.fromJson(json['core_info'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CoreInfoDataImplToJson(_$CoreInfoDataImpl instance) =>
    <String, dynamic>{
      'core_info': instance.coreInfo.toJson(),
    };

_$CoreInfoImpl _$$CoreInfoImplFromJson(Map<String, dynamic> json) =>
    _$CoreInfoImpl(
      description: json['description'] as String,
      bestTimeToVisit: json['best_time_to_visit'] as String,
      mainAreas: (json['main_areas'] as List<dynamic>)
          .map((e) => MainArea.fromJson(e as Map<String, dynamic>))
          .toList(),
      transportation: Transportation.fromJson(
          json['transportation'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CoreInfoImplToJson(_$CoreInfoImpl instance) =>
    <String, dynamic>{
      'description': instance.description,
      'best_time_to_visit': instance.bestTimeToVisit,
      'main_areas': instance.mainAreas.map((e) => e.toJson()).toList(),
      'transportation': instance.transportation.toJson(),
    };

_$MainAreaImpl _$$MainAreaImplFromJson(Map<String, dynamic> json) =>
    _$MainAreaImpl(
      name: json['name'] as String,
      description: json['description'] as String,
      highlights: (json['highlights'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$MainAreaImplToJson(_$MainAreaImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'description': instance.description,
      'highlights': instance.highlights,
    };

_$TransportationImpl _$$TransportationImplFromJson(Map<String, dynamic> json) =>
    _$TransportationImpl(
      gettingThere: json['getting_there'] as String,
      gettingAround: json['getting_around'] as String,
    );

Map<String, dynamic> _$$TransportationImplToJson(
        _$TransportationImpl instance) =>
    <String, dynamic>{
      'getting_there': instance.gettingThere,
      'getting_around': instance.gettingAround,
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
      'entryPoints': instance.entryPoints.map((e) => e.toJson()).toList(),
      'regions': instance.regions.map((e) => e.toJson()).toList(),
      'attractions': instance.attractions
          .map((k, e) => MapEntry(k, e.map((e) => e.toJson()).toList())),
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
      'transportation_to_city':
          instance.transportationToCity.map((e) => e.toJson()).toList(),
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
