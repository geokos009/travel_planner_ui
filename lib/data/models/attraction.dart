import 'package:freezed_annotation/freezed_annotation.dart';

part 'attraction.freezed.dart';
part 'attraction.g.dart';

@freezed
@JsonSerializable()
class Attraction with _$Attraction {
  const factory Attraction({
    required String name,
    required String region,
    required String category,
    @JsonKey(name: 'sub_category') 
    required String subCategory,
    required String description,
    @JsonKey(name: 'time_required') 
    required String timeRequired,
    @JsonKey(name: 'best_timing') 
    required String bestTiming,
    @JsonKey(name: 'cost_range') 
    required String costRange,
    required String rating,
    @JsonKey(name: 'review_count') 
    required String reviewCount,
    @JsonKey(name: 'must_see') 
    required bool mustSee,
  }) = _Attraction;

  factory Attraction.fromJson(Map<String, dynamic> json) =>
      _$AttractionFromJson(json);
}