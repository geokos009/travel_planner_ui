// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'accommodation_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AccommodationImpl _$$AccommodationImplFromJson(Map<String, dynamic> json) =>
    _$AccommodationImpl(
      name: json['name'] as String,
      location: json['location'] as String,
      checkIn: json['check_in'] as String,
      checkOut: json['check_out'] as String,
      amenities:
          (json['amenities'] as List<dynamic>).map((e) => e as String).toList(),
      bookingInfo: json['booking_info'] as String,
      notes: (json['notes'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$AccommodationImplToJson(_$AccommodationImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'location': instance.location,
      'check_in': instance.checkIn,
      'check_out': instance.checkOut,
      'amenities': instance.amenities,
      'booking_info': instance.bookingInfo,
      'notes': instance.notes,
    };
