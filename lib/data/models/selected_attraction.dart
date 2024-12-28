import 'package:freezed_annotation/freezed_annotation.dart';

part 'selected_attraction.freezed.dart';
part 'selected_attraction.g.dart';

@freezed
class SelectedAttraction with _$SelectedAttraction {
  const factory SelectedAttraction({
    required String name,
    required String category,
    required String duration,
    required String bestTiming,
  }) = _SelectedAttraction;

  factory SelectedAttraction.fromJson(Map<String, dynamic> json) =>
      _$SelectedAttractionFromJson(json);
} 