import 'package:freezed_annotation/freezed_annotation.dart';
import 'research_model.dart';

part 'selected_attraction.freezed.dart';
part 'selected_attraction.g.dart';

@freezed
class SelectedAttraction with _$SelectedAttraction {
  const factory SelectedAttraction({
    required String name,
    required String category,
    required String region,
    required String description,
  }) = _SelectedAttraction;

  factory SelectedAttraction.fromJson(Map<String, dynamic> json) =>
      _$SelectedAttractionFromJson(json);

  factory SelectedAttraction.fromAttraction(Attraction attraction) {
    return SelectedAttraction(
      name: attraction.name,
      category: attraction.category,
      region: attraction.region,
      description: attraction.description,
    );
  }
}

extension AttractionExtension on Attraction {
  SelectedAttraction toSelectedAttraction() {
    return SelectedAttraction.fromAttraction(this);
  }
} 