import 'package:freezed_annotation/freezed_annotation.dart';

part 'activity_model.freezed.dart';
part 'activity_model.g.dart';

@freezed
class Activity with _$Activity {
  const factory Activity({
    required String time,
    required String activity,
    required String location,
    required String description,
    required String duration,
    required ActivityTransportation transportation,
    required String cost,
    required List<String> tips,
    @JsonKey(name: 'booking_required') required bool bookingRequired,
    @JsonKey(name: 'booking_info') String? bookingInfo,
  }) = _Activity;

  factory Activity.fromJson(Map<String, dynamic> json) =>
      _$ActivityFromJson(json);
}

@freezed
class ActivityTransportation with _$ActivityTransportation {
  const factory ActivityTransportation({
    required String method,
    required String from,
    required String to,
    required String duration,
    required String cost,
    required List<String> notes,
  }) = _ActivityTransportation;

  factory ActivityTransportation.fromJson(Map<String, dynamic> json) =>
      _$ActivityTransportationFromJson(json);
}