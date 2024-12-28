// lib/data/models/base_location.dart
import 'package:freezed_annotation/freezed_annotation.dart';
import 'research_model.dart';

part 'base_location.freezed.dart';
part 'base_location.g.dart';

@freezed
class BaseLocation with _$BaseLocation {
  const factory BaseLocation({
    required String name,
    required String description,
    @JsonKey(name: 'recommended_stay') required Map<String, String> recommendedStay,
    required List<String> highlights,
    @JsonKey(name: 'base_for') required List<String> baseFor,
    @JsonKey(name: 'typical_order') required String typicalOrder,
  }) = _BaseLocation;

  factory BaseLocation.fromJson(Map<String, dynamic> json) =>
      _$BaseLocationFromJson(json);
}

// Add this extension
extension BaseLocationExtension on BaseLocation {
  static BaseLocation fromRegion(Region region) {
    return BaseLocation(
      name: region.name,
      description: region.description,
      recommendedStay: region.recommendedStay,
      highlights: region.highlights,
      baseFor: region.baseFor,
      typicalOrder: region.typicalOrder,
    );
  }
}