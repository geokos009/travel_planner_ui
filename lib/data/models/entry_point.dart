import 'package:freezed_annotation/freezed_annotation.dart';

part 'entry_point.freezed.dart';
part 'entry_point.g.dart';

@freezed
@JsonSerializable()
class EntryPoint with _$EntryPoint {
  const factory EntryPoint({
    required String name,
    required String type,
    required String location,
    required String code,
    @JsonKey(name: 'transportation_to_city') 
    required List<TransportationToCity> transportationToCity,
  }) = _EntryPoint;

  factory EntryPoint.fromJson(Map<String, dynamic> json) =>
      _$EntryPointFromJson(json);

  factory EntryPoint.initial() => const EntryPoint(
    name: '',
    type: '',
    location: '',
    code: '',
    transportationToCity: [],
  );
}

@freezed
@JsonSerializable()
class TransportationToCity with _$TransportationToCity {
  const factory TransportationToCity({
    required String method,
    required String duration,
    required String cost,
    required String frequency,
  }) = _TransportationToCity;

  factory TransportationToCity.fromJson(Map<String, dynamic> json) =>
      _$TransportationToCityFromJson(json);
}