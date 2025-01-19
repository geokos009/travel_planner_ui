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
      region: json['region'] as String,
      description: json['description'] as String,
    );

Map<String, dynamic> _$$SelectedAttractionImplToJson(
        _$SelectedAttractionImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'category': instance.category,
      'region': instance.region,
      'description': instance.description,
    };
