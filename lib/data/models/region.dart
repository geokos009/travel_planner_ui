import 'package:freezed_annotation/freezed_annotation.dart';

part 'region.freezed.dart';
part 'region.g.dart';

@freezed
@JsonSerializable()
class Region with _$Region {
  const factory Region({
    required String name,
    required String description,
    @JsonKey(name: 'recommended_stay') 
    required Map<String, String> recommendedStay,
    required List<String> highlights,
    @JsonKey(name: 'base_for') 
    required List<String> baseFor,
    @JsonKey(name: 'typical_order') 
    required String typicalOrder,
  }) = _Region;

  factory Region.fromJson(Map<String, dynamic> json) =>
      _$RegionFromJson(json);
} 