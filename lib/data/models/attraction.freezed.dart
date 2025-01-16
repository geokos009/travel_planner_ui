// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'attraction.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Attraction _$AttractionFromJson(Map<String, dynamic> json) {
  return _Attraction.fromJson(json);
}

/// @nodoc
mixin _$Attraction {
  String get name => throw _privateConstructorUsedError;
  String get region => throw _privateConstructorUsedError;
  String get category => throw _privateConstructorUsedError;
  @JsonKey(name: 'sub_category')
  String get subCategory => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'time_required')
  String get timeRequired => throw _privateConstructorUsedError;
  @JsonKey(name: 'best_timing')
  String get bestTiming => throw _privateConstructorUsedError;
  @JsonKey(name: 'cost_range')
  String get costRange => throw _privateConstructorUsedError;
  String get rating => throw _privateConstructorUsedError;
  @JsonKey(name: 'review_count')
  String get reviewCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'must_see')
  bool get mustSee => throw _privateConstructorUsedError;

  /// Serializes this Attraction to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Attraction
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AttractionCopyWith<Attraction> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AttractionCopyWith<$Res> {
  factory $AttractionCopyWith(
          Attraction value, $Res Function(Attraction) then) =
      _$AttractionCopyWithImpl<$Res, Attraction>;
  @useResult
  $Res call(
      {String name,
      String region,
      String category,
      @JsonKey(name: 'sub_category') String subCategory,
      String description,
      @JsonKey(name: 'time_required') String timeRequired,
      @JsonKey(name: 'best_timing') String bestTiming,
      @JsonKey(name: 'cost_range') String costRange,
      String rating,
      @JsonKey(name: 'review_count') String reviewCount,
      @JsonKey(name: 'must_see') bool mustSee});
}

/// @nodoc
class _$AttractionCopyWithImpl<$Res, $Val extends Attraction>
    implements $AttractionCopyWith<$Res> {
  _$AttractionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Attraction
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? region = null,
    Object? category = null,
    Object? subCategory = null,
    Object? description = null,
    Object? timeRequired = null,
    Object? bestTiming = null,
    Object? costRange = null,
    Object? rating = null,
    Object? reviewCount = null,
    Object? mustSee = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      region: null == region
          ? _value.region
          : region // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      subCategory: null == subCategory
          ? _value.subCategory
          : subCategory // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      timeRequired: null == timeRequired
          ? _value.timeRequired
          : timeRequired // ignore: cast_nullable_to_non_nullable
              as String,
      bestTiming: null == bestTiming
          ? _value.bestTiming
          : bestTiming // ignore: cast_nullable_to_non_nullable
              as String,
      costRange: null == costRange
          ? _value.costRange
          : costRange // ignore: cast_nullable_to_non_nullable
              as String,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as String,
      reviewCount: null == reviewCount
          ? _value.reviewCount
          : reviewCount // ignore: cast_nullable_to_non_nullable
              as String,
      mustSee: null == mustSee
          ? _value.mustSee
          : mustSee // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AttractionImplCopyWith<$Res>
    implements $AttractionCopyWith<$Res> {
  factory _$$AttractionImplCopyWith(
          _$AttractionImpl value, $Res Function(_$AttractionImpl) then) =
      __$$AttractionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      String region,
      String category,
      @JsonKey(name: 'sub_category') String subCategory,
      String description,
      @JsonKey(name: 'time_required') String timeRequired,
      @JsonKey(name: 'best_timing') String bestTiming,
      @JsonKey(name: 'cost_range') String costRange,
      String rating,
      @JsonKey(name: 'review_count') String reviewCount,
      @JsonKey(name: 'must_see') bool mustSee});
}

/// @nodoc
class __$$AttractionImplCopyWithImpl<$Res>
    extends _$AttractionCopyWithImpl<$Res, _$AttractionImpl>
    implements _$$AttractionImplCopyWith<$Res> {
  __$$AttractionImplCopyWithImpl(
      _$AttractionImpl _value, $Res Function(_$AttractionImpl) _then)
      : super(_value, _then);

  /// Create a copy of Attraction
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? region = null,
    Object? category = null,
    Object? subCategory = null,
    Object? description = null,
    Object? timeRequired = null,
    Object? bestTiming = null,
    Object? costRange = null,
    Object? rating = null,
    Object? reviewCount = null,
    Object? mustSee = null,
  }) {
    return _then(_$AttractionImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      region: null == region
          ? _value.region
          : region // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      subCategory: null == subCategory
          ? _value.subCategory
          : subCategory // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      timeRequired: null == timeRequired
          ? _value.timeRequired
          : timeRequired // ignore: cast_nullable_to_non_nullable
              as String,
      bestTiming: null == bestTiming
          ? _value.bestTiming
          : bestTiming // ignore: cast_nullable_to_non_nullable
              as String,
      costRange: null == costRange
          ? _value.costRange
          : costRange // ignore: cast_nullable_to_non_nullable
              as String,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as String,
      reviewCount: null == reviewCount
          ? _value.reviewCount
          : reviewCount // ignore: cast_nullable_to_non_nullable
              as String,
      mustSee: null == mustSee
          ? _value.mustSee
          : mustSee // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AttractionImpl implements _Attraction {
  const _$AttractionImpl(
      {required this.name,
      required this.region,
      required this.category,
      @JsonKey(name: 'sub_category') required this.subCategory,
      required this.description,
      @JsonKey(name: 'time_required') required this.timeRequired,
      @JsonKey(name: 'best_timing') required this.bestTiming,
      @JsonKey(name: 'cost_range') required this.costRange,
      required this.rating,
      @JsonKey(name: 'review_count') required this.reviewCount,
      @JsonKey(name: 'must_see') required this.mustSee});

  factory _$AttractionImpl.fromJson(Map<String, dynamic> json) =>
      _$$AttractionImplFromJson(json);

  @override
  final String name;
  @override
  final String region;
  @override
  final String category;
  @override
  @JsonKey(name: 'sub_category')
  final String subCategory;
  @override
  final String description;
  @override
  @JsonKey(name: 'time_required')
  final String timeRequired;
  @override
  @JsonKey(name: 'best_timing')
  final String bestTiming;
  @override
  @JsonKey(name: 'cost_range')
  final String costRange;
  @override
  final String rating;
  @override
  @JsonKey(name: 'review_count')
  final String reviewCount;
  @override
  @JsonKey(name: 'must_see')
  final bool mustSee;

  @override
  String toString() {
    return 'Attraction(name: $name, region: $region, category: $category, subCategory: $subCategory, description: $description, timeRequired: $timeRequired, bestTiming: $bestTiming, costRange: $costRange, rating: $rating, reviewCount: $reviewCount, mustSee: $mustSee)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AttractionImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.region, region) || other.region == region) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.subCategory, subCategory) ||
                other.subCategory == subCategory) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.timeRequired, timeRequired) ||
                other.timeRequired == timeRequired) &&
            (identical(other.bestTiming, bestTiming) ||
                other.bestTiming == bestTiming) &&
            (identical(other.costRange, costRange) ||
                other.costRange == costRange) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.reviewCount, reviewCount) ||
                other.reviewCount == reviewCount) &&
            (identical(other.mustSee, mustSee) || other.mustSee == mustSee));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      name,
      region,
      category,
      subCategory,
      description,
      timeRequired,
      bestTiming,
      costRange,
      rating,
      reviewCount,
      mustSee);

  /// Create a copy of Attraction
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AttractionImplCopyWith<_$AttractionImpl> get copyWith =>
      __$$AttractionImplCopyWithImpl<_$AttractionImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AttractionImplToJson(
      this,
    );
  }
}

abstract class _Attraction implements Attraction {
  const factory _Attraction(
          {required final String name,
          required final String region,
          required final String category,
          @JsonKey(name: 'sub_category') required final String subCategory,
          required final String description,
          @JsonKey(name: 'time_required') required final String timeRequired,
          @JsonKey(name: 'best_timing') required final String bestTiming,
          @JsonKey(name: 'cost_range') required final String costRange,
          required final String rating,
          @JsonKey(name: 'review_count') required final String reviewCount,
          @JsonKey(name: 'must_see') required final bool mustSee}) =
      _$AttractionImpl;

  factory _Attraction.fromJson(Map<String, dynamic> json) =
      _$AttractionImpl.fromJson;

  @override
  String get name;
  @override
  String get region;
  @override
  String get category;
  @override
  @JsonKey(name: 'sub_category')
  String get subCategory;
  @override
  String get description;
  @override
  @JsonKey(name: 'time_required')
  String get timeRequired;
  @override
  @JsonKey(name: 'best_timing')
  String get bestTiming;
  @override
  @JsonKey(name: 'cost_range')
  String get costRange;
  @override
  String get rating;
  @override
  @JsonKey(name: 'review_count')
  String get reviewCount;
  @override
  @JsonKey(name: 'must_see')
  bool get mustSee;

  /// Create a copy of Attraction
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AttractionImplCopyWith<_$AttractionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
