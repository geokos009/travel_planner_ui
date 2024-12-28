// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'selected_attraction.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SelectedAttractionImpl _$$SelectedAttractionImplFromJson(
        Map<String, dynamic> json) =>
    _$SelectedAttractionImpl(
      name: json['name'] as String,
      category: json['category'] as String,
      duration: json['duration'] as String,
      bestTiming: json['bestTiming'] as String,
    );

Map<String, dynamic> _$$SelectedAttractionImplToJson(
        _$SelectedAttractionImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'category': instance.category,
      'duration': instance.duration,
      'bestTiming': instance.bestTiming,
    };
