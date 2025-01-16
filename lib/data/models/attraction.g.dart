// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'attraction.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Attraction _$AttractionFromJson(Map<String, dynamic> json) => Attraction(
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

Map<String, dynamic> _$AttractionToJson(Attraction instance) =>
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
