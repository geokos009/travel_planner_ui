import 'package:freezed_annotation/freezed_annotation.dart';

part 'accommodation_model.freezed.dart';
part 'accommodation_model.g.dart';

@freezed
class Accommodation with _$Accommodation {
  const factory Accommodation({
    required String name,
    required String location,
    @JsonKey(name: 'check_in') required String checkIn,
    @JsonKey(name: 'check_out') required String checkOut,
    required List<String> amenities,
    @JsonKey(name: 'booking_info') required String bookingInfo,
    required List<String> notes,
  }) = _Accommodation;

  factory Accommodation.fromJson(Map<String, dynamic> json) =>
      _$AccommodationFromJson(json);
}
