// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'region.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Region _$RegionFromJson(Map<String, dynamic> json) {
  return _Region.fromJson(json);
}

/// @nodoc
mixin _$Region {
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'recommended_stay')
  Map<String, String> get recommendedStay => throw _privateConstructorUsedError;
  List<String> get highlights => throw _privateConstructorUsedError;
  @JsonKey(name: 'base_for')
  List<String> get baseFor => throw _privateConstructorUsedError;
  @JsonKey(name: 'typical_order')
  String get typicalOrder => throw _privateConstructorUsedError;

  /// Serializes this Region to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Region
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RegionCopyWith<Region> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegionCopyWith<$Res> {
  factory $RegionCopyWith(Region value, $Res Function(Region) then) =
      _$RegionCopyWithImpl<$Res, Region>;
  @useResult
  $Res call(
      {String name,
      String description,
      @JsonKey(name: 'recommended_stay') Map<String, String> recommendedStay,
      List<String> highlights,
      @JsonKey(name: 'base_for') List<String> baseFor,
      @JsonKey(name: 'typical_order') String typicalOrder});
}

/// @nodoc
class _$RegionCopyWithImpl<$Res, $Val extends Region>
    implements $RegionCopyWith<$Res> {
  _$RegionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Region
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? description = null,
    Object? recommendedStay = null,
    Object? highlights = null,
    Object? baseFor = null,
    Object? typicalOrder = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      recommendedStay: null == recommendedStay
          ? _value.recommendedStay
          : recommendedStay // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
      highlights: null == highlights
          ? _value.highlights
          : highlights // ignore: cast_nullable_to_non_nullable
              as List<String>,
      baseFor: null == baseFor
          ? _value.baseFor
          : baseFor // ignore: cast_nullable_to_non_nullable
              as List<String>,
      typicalOrder: null == typicalOrder
          ? _value.typicalOrder
          : typicalOrder // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RegionImplCopyWith<$Res> implements $RegionCopyWith<$Res> {
  factory _$$RegionImplCopyWith(
          _$RegionImpl value, $Res Function(_$RegionImpl) then) =
      __$$RegionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      String description,
      @JsonKey(name: 'recommended_stay') Map<String, String> recommendedStay,
      List<String> highlights,
      @JsonKey(name: 'base_for') List<String> baseFor,
      @JsonKey(name: 'typical_order') String typicalOrder});
}

/// @nodoc
class __$$RegionImplCopyWithImpl<$Res>
    extends _$RegionCopyWithImpl<$Res, _$RegionImpl>
    implements _$$RegionImplCopyWith<$Res> {
  __$$RegionImplCopyWithImpl(
      _$RegionImpl _value, $Res Function(_$RegionImpl) _then)
      : super(_value, _then);

  /// Create a copy of Region
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? description = null,
    Object? recommendedStay = null,
    Object? highlights = null,
    Object? baseFor = null,
    Object? typicalOrder = null,
  }) {
    return _then(_$RegionImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      recommendedStay: null == recommendedStay
          ? _value._recommendedStay
          : recommendedStay // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
      highlights: null == highlights
          ? _value._highlights
          : highlights // ignore: cast_nullable_to_non_nullable
              as List<String>,
      baseFor: null == baseFor
          ? _value._baseFor
          : baseFor // ignore: cast_nullable_to_non_nullable
              as List<String>,
      typicalOrder: null == typicalOrder
          ? _value.typicalOrder
          : typicalOrder // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RegionImpl implements _Region {
  const _$RegionImpl(
      {required this.name,
      required this.description,
      @JsonKey(name: 'recommended_stay')
      required final Map<String, String> recommendedStay,
      required final List<String> highlights,
      @JsonKey(name: 'base_for') required final List<String> baseFor,
      @JsonKey(name: 'typical_order') required this.typicalOrder})
      : _recommendedStay = recommendedStay,
        _highlights = highlights,
        _baseFor = baseFor;

  factory _$RegionImpl.fromJson(Map<String, dynamic> json) =>
      _$$RegionImplFromJson(json);

  @override
  final String name;
  @override
  final String description;
  final Map<String, String> _recommendedStay;
  @override
  @JsonKey(name: 'recommended_stay')
  Map<String, String> get recommendedStay {
    if (_recommendedStay is EqualUnmodifiableMapView) return _recommendedStay;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_recommendedStay);
  }

  final List<String> _highlights;
  @override
  List<String> get highlights {
    if (_highlights is EqualUnmodifiableListView) return _highlights;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_highlights);
  }

  final List<String> _baseFor;
  @override
  @JsonKey(name: 'base_for')
  List<String> get baseFor {
    if (_baseFor is EqualUnmodifiableListView) return _baseFor;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_baseFor);
  }

  @override
  @JsonKey(name: 'typical_order')
  final String typicalOrder;

  @override
  String toString() {
    return 'Region(name: $name, description: $description, recommendedStay: $recommendedStay, highlights: $highlights, baseFor: $baseFor, typicalOrder: $typicalOrder)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegionImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality()
                .equals(other._recommendedStay, _recommendedStay) &&
            const DeepCollectionEquality()
                .equals(other._highlights, _highlights) &&
            const DeepCollectionEquality().equals(other._baseFor, _baseFor) &&
            (identical(other.typicalOrder, typicalOrder) ||
                other.typicalOrder == typicalOrder));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      name,
      description,
      const DeepCollectionEquality().hash(_recommendedStay),
      const DeepCollectionEquality().hash(_highlights),
      const DeepCollectionEquality().hash(_baseFor),
      typicalOrder);

  /// Create a copy of Region
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RegionImplCopyWith<_$RegionImpl> get copyWith =>
      __$$RegionImplCopyWithImpl<_$RegionImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RegionImplToJson(
      this,
    );
  }
}

abstract class _Region implements Region {
  const factory _Region(
          {required final String name,
          required final String description,
          @JsonKey(name: 'recommended_stay')
          required final Map<String, String> recommendedStay,
          required final List<String> highlights,
          @JsonKey(name: 'base_for') required final List<String> baseFor,
          @JsonKey(name: 'typical_order') required final String typicalOrder}) =
      _$RegionImpl;

  factory _Region.fromJson(Map<String, dynamic> json) = _$RegionImpl.fromJson;

  @override
  String get name;
  @override
  String get description;
  @override
  @JsonKey(name: 'recommended_stay')
  Map<String, String> get recommendedStay;
  @override
  List<String> get highlights;
  @override
  @JsonKey(name: 'base_for')
  List<String> get baseFor;
  @override
  @JsonKey(name: 'typical_order')
  String get typicalOrder;

  /// Create a copy of Region
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RegionImplCopyWith<_$RegionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
